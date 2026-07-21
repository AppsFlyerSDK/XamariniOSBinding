#!/bin/bash

# Sample.NuGet.NET multi-targets net9.0-ios18.0 and net10.0-ios26.0; pick one via arg 1 (default: net10.0-ios26.0)
TFM="${1:-net10.0-ios26.0}"

# Pinned by global.json to 10.0.302; use the user-local install if the default `dotnet` doesn't match
if [ -x "$HOME/.dotnet-10/dotnet" ]; then
  export DOTNET_ROOT="$HOME/.dotnet-10"
  export PATH="$DOTNET_ROOT:$PATH"
fi

# Build the app
BUILD_LOG=$(mktemp)
dotnet build samples/Sample.NuGet.NET/Sample.NuGet.NET.csproj -c Release -f "$TFM" -p:RuntimeIdentifier=iossimulator-arm64 2>&1 | tee "$BUILD_LOG"
BUILD_EXIT=${PIPESTATUS[0]}

if [ "$BUILD_EXIT" -ne 0 ]; then
  if grep -q "AssetCatalogSimulatorAgent" "$BUILD_LOG"; then
    echo ""
    echo "Build failed: CoreSimulator can't launch AssetCatalogSimulatorAgent (actool)."
    echo "This is a local Xcode/simulator setup issue, not a code problem. Try, in order:"
    echo "  1. killall -9 com.apple.CoreSimulator.CoreSimulatorService && xcrun simctl shutdown all"
    echo "  2. Confirm Xcode is in /Applications (not ~/Downloads) and run: xcode-select -s /Applications/Xcode.app"
    echo "  3. sudo xcodebuild -runFirstLaunch"
    echo "  4. Restart your Mac (Apple's own documented fix for this exact error)"
  fi
  rm -f "$BUILD_LOG"
  exit "$BUILD_EXIT"
fi
rm -f "$BUILD_LOG"

# Pick a booted simulator, or boot the first available iPhone if none is running
SIM_ID=$(xcrun simctl list devices booted | grep -oE '[0-9A-F-]{36}' | head -1)
if [ -z "$SIM_ID" ]; then
  SIM_ID=$(xcrun simctl list devices available | grep "iPhone" | grep -oE '[0-9A-F-]{36}' | head -1)
  if [ -z "$SIM_ID" ]; then
    echo "No iOS simulator available."
    echo "Please create a simulator in Xcode, then run this script again."
    exit 1
  fi
  echo "Booting simulator $SIM_ID..."
  xcrun simctl boot "$SIM_ID"
  open -a Simulator
fi

APP_PATH=$(find "samples/Sample.NuGet.NET/bin/Release/$TFM/iossimulator-arm64" -maxdepth 1 -name "*.app" | head -1)
if [ -z "$APP_PATH" ]; then
  echo "Build output .app not found."
  exit 1
fi

BUNDLE_ID=$(/usr/libexec/PlistBuddy -c "Print :CFBundleIdentifier" "$APP_PATH/Info.plist")

echo "Installing and launching AppsFlyer sample app..."
xcrun simctl install "$SIM_ID" "$APP_PATH"
xcrun simctl launch "$SIM_ID" "$BUNDLE_ID"

echo "App launched! Check the device logs for AppsFlyer SDK logs:"
echo "xcrun simctl spawn $SIM_ID log stream --predicate 'subsystem contains \"appsflyer\" or processImagePath contains \"Sample\"'"
