mkdir -p nugets
rm nugets/*

dotnet clean AppsFlyerBinding.iOS/
dotnet restore AppsFlyerBinding.iOS/
dotnet pack -c Release AppsFlyerBinding.iOS/AppsFlyerBinding.iOS.csproj

mv AppsFlyerBinding.iOS/bin/Release/AppsFlyerXamarinBinding*.nupkg nugets/
mv AppsFlyerBinding.iOS/bin/Release/AppsFlyerXamarinBinding*.snupkg nugets/
