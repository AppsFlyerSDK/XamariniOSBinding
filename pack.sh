#!/bin/bash
set -e

# AppsFlyerBinding.iOS multi-targets net8.0-ios, net9.0-ios18.0 and net10.0-ios26.0.
# .NET 10's SDK dropped the net8.0-ios workload (EOL), so each TFM must be packed
# with its own matching SDK, then merged into one nupkg (a single `dotnet pack`
# can't build all three at once).
cd "$(dirname "$0")"
PROJ=AppsFlyerBinding.iOS/AppsFlyerBinding.iOS.csproj
WORK=$(mktemp -d)
cp global.json "$WORK/global.json.orig"
# ponytail: restore global.json on any exit, SIGKILL is the ceiling
trap 'cp "$WORK/global.json.orig" global.json; rm -rf "$WORK"' EXIT

# tfm -> nuspec group name : sdk version : dotnet root
TFMS=(
  "net8.0-ios:net8.0-ios17.0:8.0.408:$HOME/.dotnet-8.0.408"
  "net9.0-ios18.0:net9.0-ios18.0:10.0.302:$HOME/.dotnet-10"
  "net10.0-ios26.0:net10.0-ios26.0:10.0.302:$HOME/.dotnet-10"
)

# Pinned SHA-256 of the dotnet-install.sh revision this script was verified against.
# dot.net serves a live/rolling script, so a checksum mismatch isn't necessarily an
# attack - it may just mean Microsoft shipped a newer revision. Either way, don't
# execute an unverified script: re-pin deliberately after inspecting the diff.
DOTNET_INSTALL_SCRIPT_SHA256="082f7685e156738a1b2e2ed8381a621870d4ce8e8c59278034556f05c186eb2e"

# ponytail: pin each SDK to its own folder so this never fights global.json/PATH with whatever's on the machine
ensure_dotnet_sdk() {
  local sdk_version=$1 root=$2
  [ -d "$root/sdk/$sdk_version" ] && return
  echo "installing .NET SDK $sdk_version at $root..."
  mkdir -p "$root"
  curl -sSL https://dot.net/v1/dotnet-install.sh -o "$root/dotnet-install.sh"

  local actual_sha256
  actual_sha256=$(shasum -a 256 "$root/dotnet-install.sh" | awk '{print $1}')
  if [ "$actual_sha256" != "$DOTNET_INSTALL_SCRIPT_SHA256" ]; then
    echo "error: dotnet-install.sh checksum mismatch (expected $DOTNET_INSTALL_SCRIPT_SHA256, got $actual_sha256) - refusing to run an unverified script; inspect the diff and re-pin if this is an expected upstream update"
    rm -f "$root/dotnet-install.sh"
    exit 1
  fi

  chmod +x "$root/dotnet-install.sh"
  "$root/dotnet-install.sh" --version "$sdk_version" --install-dir "$root"
}

pack_tfm() {
  local tfm=$1 sdk_version=$2 dotnet_root=$3
  echo "{\"sdk\":{\"version\":\"$sdk_version\",\"rollForward\":\"latestFeature\"}}" > global.json
  export DOTNET_ROOT="$dotnet_root"
  export PATH="$DOTNET_ROOT:$PATH"

  # SDK/workload check must run after global.json above is written for this TFM's
  # sdk_version — otherwise dotnet resolves against whatever global.json pin was
  # already on disk (repo default), not the SDK actually installed at $dotnet_root.
  ensure_dotnet_sdk "$sdk_version" "$dotnet_root"
  # Exact-match the first column instead of grepping the whole table row - the "Installed
  # Workload Id" header's first word ("Installed") never collides with "ios", so this
  # survives column/width changes that a "^ios " prefix match wouldn't.
  if ! dotnet workload list 2>/dev/null | awk '{print $1}' | grep -qx ios; then
    echo "installing 'ios' workload on $dotnet_root..."
    dotnet workload install ios --skip-manifest-update
  fi

  rm -rf AppsFlyerBinding.iOS/bin AppsFlyerBinding.iOS/obj
  dotnet pack -c Release "$PROJ" -p:TargetFrameworks="$tfm"
  mkdir -p "$WORK/$tfm"
  local nupkgs=(AppsFlyerBinding.iOS/bin/Release/AppsFlyerXamarinBinding*.nupkg)
  # ponytail: fail loudly on an ambiguous glob instead of silently
  [ "${#nupkgs[@]}" -eq 1 ] || { echo "error: expected exactly one nupkg for $tfm, found ${#nupkgs[@]}"; exit 1; }
  local nupkg="${nupkgs[0]}"
  unzip -oq "$nupkg" -d "$WORK/$tfm"
  basename "$nupkg" > "$WORK/$tfm/.nupkg-name"
}

# parse_tfm sets tfm/nuspec_group/sdk_version/dotnet_root from one "TFMS" entry
parse_tfm() {
  IFS=":" read -r tfm nuspec_group sdk_version dotnet_root <<< "$1"
}

first_tfm=""
lib_groups=()
for entry in "${TFMS[@]}"; do
  parse_tfm "$entry"
  pack_tfm "$tfm" "$sdk_version" "$dotnet_root"
  lib_groups+=("$nuspec_group")
  [ -z "$first_tfm" ] && first_tfm="$tfm"
done

# Merge: start from the first TFM's extraction (base metadata/build files), add every other TFM's lib/, union nuspec dependency groups
MERGED="$WORK/merged"
cp -R "$WORK/$first_tfm" "$MERGED"
NUPKG_NAME=$(cat "$MERGED/.nupkg-name")
rm -f "$MERGED/.nupkg-name"
for entry in "${TFMS[@]}"; do
  parse_tfm "$entry"
  [ "$tfm" == "$first_tfm" ] && continue
  # ponytail: guard against a mismatched TFM->platform-version guess silently merging the wrong/no assets
  [ -d "$WORK/$tfm/lib/$nuspec_group" ] || { echo "error: expected lib/$nuspec_group not found for $tfm (workload's default iOS platform version may have changed)"; exit 1; }
  cp -R "$WORK/$tfm/lib/$nuspec_group" "$MERGED/lib/"
done

python3 - "$MERGED/AppsFlyerXamarinBinding.nuspec" "${lib_groups[@]}" <<'EOF'
import sys
import xml.etree.ElementTree as ET

path = sys.argv[1]
groups = sys.argv[2:]

# dotnet pack emits utf-8-sig; ET chokes on the BOM unless read as text first.
xml_text = open(path, encoding="utf-8-sig").read()
root = ET.fromstring(xml_text)
nsuri = root.tag[root.tag.index("{") + 1:root.tag.index("}")]
ET.register_namespace("", nsuri)
ns = {"n": nsuri}
deps = root.find(".//n:dependencies", ns)
for group in list(deps):
    deps.remove(group)
for g in groups:
    ET.SubElement(deps, "group", {"targetFramework": g})
ET.ElementTree(root).write(path, encoding="utf-8", xml_declaration=True)
EOF
rm -rf "$MERGED/_rels" "$MERGED/package" "$MERGED/[Content_Types].xml"

rm -f nugets/AppsFlyerXamarinBinding*.nupkg
(cd "$MERGED" && zip -Xrq - . -x ".*") > "nugets/$NUPKG_NAME"

echo "Packed nugets/$NUPKG_NAME (${lib_groups[*]})"
