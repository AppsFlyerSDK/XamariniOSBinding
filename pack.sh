rm -rf AppsFlyerBinding.iOS/bin
rm -rf AppsFlyerBinding.iOS/obj

dotnet clean AppsFlyerBinding.iOS/
dotnet restore AppsFlyerBinding.iOS/
dotnet pack -c Release AppsFlyerBinding.iOS/AppsFlyerBinding.iOS.csproj

rm -f nugets/AppsFlyerXamarinBinding*.nupkg
mv AppsFlyerBinding.iOS/bin/Release/AppsFlyerXamarinBinding*.nupkg nugets/