using Foundation;
using UIKit;

using AppsFlyerXamarinBinding;

namespace Empty.Xamarin.iOS
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
            // Override point for customization after application launch.
            // If not required for your application you can safely delete this method
            var test = AppsFlyerLib.Shared;
            test.IsDebug = true;
            test.Start();
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
            //var GCDDelegate = new AppsFlyerConversionDataDelegate();
            //AppsFlyerLib.Shared.Delegate = GCDDelegate;
            // DeepLink callbacks
            //var deepLinkDelegate = new MyAppsFlyerDeepLinkDelegate();
            //AppsFlyerLib.Shared.DeepLinkDelegate = deepLinkDelegate;

            var partnerInfo = new NSDictionary("id", "id123", "type", 1, "desc", "Description example");
            AppsFlyerLib.Shared.SetPartnerData("test_partner", partnerInfo);

            AppsFlyerLib.Shared.Start();
            return true;
        }

        // UISceneSession Lifecycle

        [Export ("application:configurationForConnectingSceneSession:options:")]
        public UISceneConfiguration GetConfiguration (UIApplication application, UISceneSession connectingSceneSession, UISceneConnectionOptions options)
        {
            // Called when a new scene session is being created.
            // Use this method to select a configuration to create the new scene with.
            return UISceneConfiguration.Create ("Default Configuration", connectingSceneSession.Role);
        }

        [Export ("application:didDiscardSceneSessions:")]
        public void DidDiscardSceneSessions (UIApplication application, NSSet<UISceneSession> sceneSessions)
        {
            // Called when the user discards a scene session.
            // If any sessions were discarded while the application was not running, this will be called shortly after `FinishedLaunching`.
            // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        }
    }
}


