using Foundation;
using UIKit;

using AppsFlyerXamarinBinding;
using System;

namespace Sample.NuGet.Xamarin
{
    // The UIApplicationDelegate for the application. This class is responsible for launching the
    // User Interface of the application, as well as listening (and optionally responding) to application events from iOS.
    [Register ("AppDelegate")]
    public class AppDelegate : UIResponder, IUIApplicationDelegate {
    
        [Export("window")]
        public UIWindow Window { get; set; }

        [Export ("application:didFinishLaunchingWithOptions:")]
        public bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
        {
            // create a new window instance based on the screen size
            Window = new UIWindow(UIScreen.MainScreen.Bounds);
            // create a UIViewController with a single UILabel
            var vc = new UIViewController();
            vc.View.AddSubview(new UILabel(Window.Frame)
            {
                Tag = 1,
                BackgroundColor = UIColor.SystemBackground,
                TextAlignment = UITextAlignment.Center,
                Text = "Hello, iOS!",
                AutoresizingMask = UIViewAutoresizing.All,
            }); ;
            Window.RootViewController = vc;
            // make the window visible
            Window.MakeKeyAndVisible();


            AppsFlyerLib.Shared.IsDebug = true;
            AppsFlyerLib.Shared.CurrencyCode = "GBP";
            AppsFlyerLib.Shared.OneLinkCustomDomains = new string[] { "automationsdk.blaster.afsdktests.com" };
            AppsFlyerLib.Shared.AppsFlyerDevKey = "4UGrDF4vFvPLbHq5bXtCza"; // Replace with your DevKey
            AppsFlyerLib.Shared.AppleAppID = "753258300"; // Replace with your Apple ID
            AppsFlyerLib.Shared.AppInviteOneLinkID = "E2bM"; // Replace with your OneLink ID
            AppsFlyerLib.Shared.CurrentDeviceLanguage = "en-en12";
            
            string[] networks = { "all", "another" };
            AppsFlyerLib.Shared.SetSharingFilterForPartners(networks);
            AppsFlyerLib.Shared.AddPushNotificationDeepLinkPath(new string[] { "key1", "key2" });
            // Conversion data callbacks
            var GCDDelegate = new AppsFlyerConversionDataDelegate();
            AppsFlyerLib.Shared.Delegate = GCDDelegate;
            // DeepLink callbacks
            var deepLinkDelegate = new MyAppsFlyerDeepLinkDelegate();
            AppsFlyerLib.Shared.DeepLinkDelegate = deepLinkDelegate;

            var partnerInfo = new NSDictionary("id", "id123", "type", 1, "desc", "Description example");
            AppsFlyerLib.Shared.SetPartnerData("test_partner", partnerInfo);
            
            return true;
        }

        [Export("applicationDidBecomeActive:")]
        public void OnActivated(UIApplication application)
        {
            AppsFlyerLib.Shared.Start();

            var keys = new NSString[] { new NSString("Key1"), new NSString("Key2") };
            var values = new NSObject[] { new NSString("Value1"), new NSString("Value2") };

            // Create NSDictionary
            var dictionary = NSDictionary.FromObjectsAndKeys(values, keys);

            AFSDKPurchaseDetails details = new AFSDKPurchaseDetails().initWithProductId("1234", "4.0", "USD", "123456789");
            AppsFlyerLib.Shared.ValidateAndLogInAppPurchase(details, dictionary, (dict) =>
            {
                Console.WriteLine(dict.Description);
                Console.WriteLine(dict.status);
                Console.WriteLine(dict.error.Description);
            });
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
}


