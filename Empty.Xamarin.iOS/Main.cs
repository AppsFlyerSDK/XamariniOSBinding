using UIKit;
using AppsFlyerXamarinBinding;
using Foundation;

namespace Empty.Xamarin.iOS
{
    public class Application
    {
        // This is the main entry point of the application.
        static void Main(string[] args)
        {
            // if you want to use a different Application Delegate class from "AppDelegate"
            // you can specify it here.
            UIApplication.Main(args, null, typeof(AppDelegate));


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
        }
    }
}
