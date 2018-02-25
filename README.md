# XamariniOSBinding

Xamarin Binding integration guide For iOS AppsFlyer Xamarin Binding version 1.3.3

# Introduction
AppsFlyer’s Xamarin binding provides application installation and events tracking functionality.

# Nuget
Install-Package AppsFlyerXamarinBinding <br>
https://www.nuget.org/packages/AppsFlyerXamarinBinding


# Initial steps

To Embed SDK into your Application:

1. Copy AppsFlyerXamarinBinding.dll into your project.

2. On Xamarin Studio go to References and click on Edit References.

3. Go to .Net Assembly tab and click on Browse… button.

4. Locate AppsFlyerXamarinBinding.dll and chose it.

Or in visual studio go to Project > Add NuGet Package,
search for 'AppsFlyer' and then add AppsFlyerXamarinBinding.

# SDK Initialization
Go to your AppDelegate.cs and add:

 <br>

    using AppsFlyerXamarinBinding;

	// class-level declarations
		AppsFlyerXamarinBinding.AppsFlyerTracker tracker = AppsFlyerXamarinBinding.AppsFlyerTracker.SharedTracker();
		AppsFlyerTrackerDelegate af_delegate = new AppsFlyerConversionDataDelegate();

Add the following code in the FinishedLaunching method:

	public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
	{
	tracker.AppsFlyerDevKey = "APPSFLYER_DEV_KEY_HERE";
	tracker.AppleAppID = "YOUR_APP_ID_HERE";
	tracker.IsDebug = true;

	return true;
	}


Add the following code in the OnActivated method:
```
  public override void OnActivated(UIApplication application)
   {
            tracker.TrackAppLaunch();
   }
```

Set your appId & DevKey Replace appId & devKey with your values.

You can get your AppsFlyer DevKey on our dashboard. See “SDK integration” on your app screen.

DevKey = your unique developer ID, which is accessible from your account, e.g. rbz2mfgZQY5mSEYNTyjwni // For example:

#	Adding Custom Event
Example: “Add-to-cart” Event

	var addToCartEvent = new NSDictionary (AFEventParameter.AFEventParamContentId, "id 123",
	AFEventParameter.AFEventParamContentType, "type 1", AFEventParameter.AFEventParamCurrency,
	"USD", AFEventParameter.AFEventParamDescription, "add to cart Description");

	AppsFlyerTracker.SharedTracker().TrackEvent(AFEventName.AFEventAddToCart, addToCartEvent);


#	Conversion Data
For Conversion data your should call this method in the FinishedLaunching method:
```
	AppsFlyerTracker.SharedTracker().LoadConversionDataWithDelegate (af_delegate);
```

AppsFlyerConversionDataDelegate.cs can be found here:

```
    public class AppsFlyerConversionDataDelegate : AppsFlyerTrackerDelegate
    {
        public override void OnAppOpenAttribution(NSDictionary attributionData)
        {
            Console.WriteLine("deeplink data in xamarin = " + attributionData.Description);
        }
        public override void OnAppOpenAttributionFailure(NSError error)
        {
        }
        public override void OnConversionDataReceived(NSDictionary installData)
        {
            Console.WriteLine("conversion data in xamarin = " + installData.Description);
        }
        public override void OnConversionDataRequestFailure(NSError error)
        {
        }
    }
```
