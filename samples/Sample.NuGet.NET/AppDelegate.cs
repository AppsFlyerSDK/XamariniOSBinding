using AppsFlyerXamarinBinding;

namespace Sample.NuGet.NET;

[Register ("AppDelegate")]
public class AppDelegate : UIApplicationDelegate {
	public AppDelegate () { }

	public AppDelegate (IntPtr handle) : base (handle) { }

	public override bool FinishedLaunching (UIApplication application, NSDictionary? launchOptions)
	{
		AppsFlyerLib.Shared.IsDebug = true;
		AppsFlyerLib.Shared.CurrencyCode = "GBP";
		AppsFlyerLib.Shared.OneLinkCustomDomains = new string[] { "automationsdk.blaster.afsdktests.com" };
		AppsFlyerLib.Shared.AppsFlyerDevKey = "4UGrDF4vFvPLbHq5bXtCza"; // Test-only DevKey for this sample — replace with your own DevKey
		AppsFlyerLib.Shared.AppleAppID = "753258300"; // Replace with your app ID
		AppsFlyerLib.Shared.AppInviteOneLinkID = "E2bM"; // Replace with your OneLink ID

		AppsFlyerLib.Shared.SetSharingFilterForPartners (new string[] { "all", "another" });
		AppsFlyerLib.Shared.AddPushNotificationDeepLinkPath (new string[] { "key1", "key2" });

		var consent = new AppsFlyerConsent ().InitWithConsentData (null, null, null, null);
		AppsFlyerLib.Shared.SetConsentData (consent);

		var partnerInfo = new NSDictionary ("id", "id123", "type", 1, "desc", "Description example");
		AppsFlyerLib.Shared.SetPartnerData ("test_partner", partnerInfo);

		return true;
	}
}

// Mirrors Sample.Android's ConversionListener
public class AppsFlyerConversionDataDelegate : AppsFlyerLibDelegate {
	MainViewController viewController = null!;

	// ponytail: runtime-required, unused here
	public AppsFlyerConversionDataDelegate (IntPtr handle) : base (handle) { }

	public AppsFlyerConversionDataDelegate (MainViewController viewController)
	{
		this.viewController = viewController;
	}

	public override void OnAppOpenAttribution (NSDictionary attributionData)
	{
		string message = "OnAppOpenAttribution:";
		foreach (var kvp in attributionData)
			message += $"\n{kvp.Key}: {kvp.Value}";
		viewController.UpdateStatusFromListener (message);
	}

	public override void OnAppOpenAttributionFailure (NSError error)
	{
		string message = $"OnAttributionFailure: {error.LocalizedDescription}";
		viewController.UpdateStatusFromListener (message);
	}

	public override void OnConversionDataSuccess (NSDictionary conversionInfo)
	{
		string message = "OnConversionDataSuccess:";
		foreach (var kvp in conversionInfo)
			if (kvp.Value != null)
				message += $"\n{kvp.Key}: {kvp.Value}";
		message += $"\nTimestamp: {DateTime.Now}";
		viewController.UpdateStatusFromListener (message);
		viewController.ShowToast ("Conversion data received.");
	}

	public override void OnConversionDataFail (NSError error)
	{
		string message = $"OnConversionDataFail: {error.LocalizedDescription}";
		viewController.UpdateStatusFromListener (message);
		viewController.ShowToast ("Conversion data failed.");
	}
}

// Mirrors Sample.Android's DeepLinkListener
public class MyAppsFlyerDeepLinkDelegate : AppsFlyerDeepLinkDelegate {
	MainViewController viewController = null!;

	// ponytail: runtime-required, unused here
	public MyAppsFlyerDeepLinkDelegate (IntPtr handle) : base (handle) { }

	public MyAppsFlyerDeepLinkDelegate (MainViewController viewController)
	{
		this.viewController = viewController;
	}

	public override void DidResolveDeepLink (AppsFlyerDeepLinkResult result)
	{
		string message = "OnDeepLinking:\n";
		message += result.deepLink != null ? result.deepLink.toString () : result.status.ToString ();
		message += $"\nTimestamp: {DateTime.Now}";
		viewController.UpdateStatusFromListener (message);
	}
}
