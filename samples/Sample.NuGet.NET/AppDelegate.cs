using AppsFlyerXamarinBinding;

namespace Sample.NuGet.NET;

[Register ("AppDelegate")]
public class AppDelegate : UIApplicationDelegate {
	public override UIWindow? Window {
		get;
		set;
	}

	public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
	{
		// create a new window instance based on the screen size
		Window = new UIWindow (UIScreen.MainScreen.Bounds);

		// create a UIViewController with a single UILabel
		var vc = new UIViewController ();
		vc.View!.AddSubview (new UILabel (Window!.Frame) {
			BackgroundColor = UIColor.SystemBackground,
			TextAlignment = UITextAlignment.Center,
			Text = "Hello, iOS!",
			AutoresizingMask = UIViewAutoresizing.All,
		});
		Window.RootViewController = vc;

		// make the window visible
		Window.MakeKeyAndVisible ();


        AppsFlyerLib.Shared.IsDebug = true;
        AppsFlyerLib.Shared.CurrencyCode = "GBP";
        AppsFlyerLib.Shared.OneLinkCustomDomains = new string[] { "automationsdk.blaster.afsdktests.com" };
        AppsFlyerLib.Shared.AppsFlyerDevKey = "4UGrDF4vFvPLbHq5bXtCza"; // Replace with your DevKey
        AppsFlyerLib.Shared.AppleAppID = "753258300"; // Replace with your app ID
        AppsFlyerLib.Shared.AppInviteOneLinkID = "E2bM"; // Replace with your OneLink ID
        AppsFlyerLib.Shared.CurrentDeviceLanguage = "en-en12";
        //appsflyer.AnonymizeUser = true;
        string[] networks = { "all", "another" };
        AppsFlyerLib.Shared.SetSharingFilterForPartners(networks);
        AppsFlyerLib.Shared.AddPushNotificationDeepLinkPath(new string[] { "key1", "key2" });
        //AppsFlyerConsent consent = new AppsFlyerConsent().initForGDPRUser(false, true);
        //AppsFlyerConsent consent = new AppsFlyerConsent().initNonGDPRUser();
        //AppsFlyerConsent consent = new AppsFlyerConsent().InitWithConsentData(null, null, true, null);
        AppsFlyerConsent consent = new AppsFlyerConsent().InitWithConsentData(null, null, null, null);
        AppsFlyerLib.Shared.SetConsentData(consent);

        var partnerInfo = new NSDictionary("id", "id123", "type", 1, "desc", "Description example");
        AppsFlyerLib.Shared.SetPartnerData("test_partner", partnerInfo);

        // Conversion data callbacks
        var GCDDelegate = new AppsFlyerConversionDataDelegate();
        AppsFlyerLib.Shared.Delegate = GCDDelegate;
        // DeepLink callbacks
        var deepLinkDelegate = new MyAppsFlyerDeepLinkDelegate();
        AppsFlyerLib.Shared.DeepLinkDelegate = deepLinkDelegate;

        return true;
    }


    [Export("applicationDidBecomeActive:")]
    public override void OnActivated(UIApplication application)
    {
        AppsFlyerLib.Shared.Start();

        var keys = new NSString[] { new NSString("Key1"), new NSString("Key2") };
        var values = new NSObject[] { new NSString("Value1"), new NSString("Value2") };

        // Create NSDictionary
        var dictionary = NSDictionary.FromObjectsAndKeys(values, keys);

        AFSDKPurchaseDetails details = new AFSDKPurchaseDetails("1234", "123456789", AFSDKPurchaseType.OneTimePurchase);
        AppsFlyerLib.Shared.ValidateAndLogInAppPurchase(details, dictionary, (response, error) =>
        {
            if (error != null)
            {
                Console.WriteLine($"Error: {error.Description}");
            }
            else if (response != null)
            {
                Console.WriteLine($"Response: {response.Description}");
            }
        });

        AFAdRevenueData adRevenueData = new AFAdRevenueData("ironsource", AppsFlyerAdRevenueMediationNetworkType.Admost, "USD", 23.3);
        AppsFlyerLib.Shared.LogAdRevenue(adRevenueData, dictionary);
        AppsFlyerLib.Shared.LogEvent("####Moris###", dictionary);
    }
}

public class AppsFlyerConversionDataDelegate : AppsFlyerLibDelegate
{
    public AppsFlyerConversionDataDelegate()
    {
        Console.WriteLine("AppsFlyerConversionDataDelegate Initialized");
    }

    public override void OnAppOpenAttribution(NSDictionary attributionData)
    {
        String message = "OnAppOpenAttribution:\n";
        foreach (var kvp in attributionData)
        {
            message = message + kvp.Key.ToString() + " = " + kvp.Value.ToString() + "\n";
        }
        Console.WriteLine(message);
    }

    public override void OnAppOpenAttributionFailure(NSError error)
    {

    }

    public override void OnConversionDataSuccess(NSDictionary conversionInfo)
    {
        String message = "OnConversionDataSuccess:\n";
        foreach (var kvp in conversionInfo)
        {
            if (kvp.Value != null)
            {
                message = message + kvp.Key.ToString() + " = " + kvp.Value.ToString() + "\n";
            }
        }
        message = message + "Timestamp:" + DateTime.Now;
        Console.WriteLine(message);
    }

    public override void OnConversionDataFail(NSError error)
    {

    }
}

public class MyAppsFlyerDeepLinkDelegate : AppsFlyerDeepLinkDelegate
{
    public MyAppsFlyerDeepLinkDelegate()
    {
        Console.WriteLine("MyAppsFlyerDeepLinkDelegate Initialized");
    }

    public override void DidResolveDeepLink(AppsFlyerDeepLinkResult result)
    {
        AppsFlyerDeepLink deepLink = result.deepLink;
        if (deepLink != null)
        {
            Console.WriteLine("DDL: " + result.deepLink.toString());
            string message = result.deepLink.toString();
            Console.WriteLine(message);
        }
        else
        {
            Console.WriteLine("DDL: " + result.status);
        } 
    }
}

