rm -rf AppsFlyerBinding.iOS/bin
rm -rf AppsFlyerBinding.iOS/obj

dotnet clean
dotnet restore
dotnet pack -c Release AppsFlyerBinding.iOS/AppsFlyerBinding.iOS.csproj

mv AppsFlyerBinding.iOS/bin/Release/AppsFlyerXamarinBinding*.nupkg nugets/