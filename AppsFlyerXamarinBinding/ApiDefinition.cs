using System;

using UIKit;
using Foundation;
using ObjCRuntime;
using CoreGraphics;

namespace AppsFlyerXamarinBinding
{
	// @protocol AppsFlyerTrackerDelegate <NSObject>
	[Protocol, Model]
	[BaseType (typeof (NSObject))]
	interface AppsFlyerTrackerDelegate {

		// @optional -(void)onConversionDataReceived:(NSDictionary *)installData;
		[Export ("onConversionDataReceived:")]
		void OnConversionDataReceived (NSDictionary installData);

		// @optional -(void)onConversionDataRequestFailure:(NSError *)error;
		[Export ("onConversionDataRequestFailure:")]
		void OnConversionDataRequestFailure (NSError error);

		// @optional -(void)onAppOpenAttribution:(NSDictionary *)attributionData;
		[Export ("onAppOpenAttribution:")]
		void OnAppOpenAttribution (NSDictionary attributionData);

		// @optional -(void)onAppOpenAttributionFailure:(NSError *)error;
		[Export ("onAppOpenAttributionFailure:")]
		void OnAppOpenAttributionFailure (NSError error);
	}

	// @interface AppsFlyerTracker : NSObject <AppsFlyerTrackerDelegate>
	[BaseType (typeof (NSObject))]
	interface AppsFlyerTracker {

		// @property (nonatomic, strong, setter = setCustomerUserID:) NSString * customerUserID;
		[Export ("customerUserID", ArgumentSemantic.Retain)]
		string CustomerUserID { get; set; }

		// @property (nonatomic, strong, setter = setAppsFlyerDevKey:) NSString * appsFlyerDevKey;
		[Export ("appsFlyerDevKey", ArgumentSemantic.Retain)]
		string AppsFlyerDevKey { get; set; }

		// @property (nonatomic, setter = setAdditionalData:, strong) NSDictionary * customData;
		[Export ("customData", ArgumentSemantic.Strong)]
		NSDictionary CustomData { get; [Bind ("setAdditionalData:")] set; }

		// @property (nonatomic, strong, setter = setAppleAppID:) NSString * appleAppID;
		[Export ("appleAppID", ArgumentSemantic.Retain)]
		string AppleAppID { get; set; }

		// @property (nonatomic, strong) NSString * currencyCode;
		[Export ("currencyCode", ArgumentSemantic.Retain)]
		string CurrencyCode { get; set; }

		// @property BOOL disableAppleAdSupportTracking;
		[Export ("disableAppleAdSupportTracking")]
		bool DisableAppleAdSupportTracking { get; set; }

		// @property (nonatomic, setter = setIsDebug:) BOOL isDebug;
		[Export ("isDebug")]
		bool IsDebug { get; set; }

		// @property (nonatomic, setter = setShouldCollectDeviceName:) BOOL shouldCollectDeviceName;
		[Export ("shouldCollectDeviceName")]
		bool ShouldCollectDeviceName { get; set; }

		// @property BOOL deviceTrackingDisabled;
		[Export ("deviceTrackingDisabled")]
		bool DeviceTrackingDisabled { get; set; }

		// @property BOOL disableIAdTracking;
		[Export ("disableIAdTracking")]
		bool DisableIAdTracking { get; set; }

		// @property (nonatomic, unsafe_unretained) id<AppsFlyerTrackerDelegate> delegate;
		[Export ("delegate", ArgumentSemantic.UnsafeUnretained)]
		[NullAllowed]
		NSObject WeakDelegate { get; set; }

		// @property (nonatomic, unsafe_unretained) id<AppsFlyerTrackerDelegate> delegate;
		[Wrap ("WeakDelegate")]
		AppsFlyerTrackerDelegate Delegate { get; set; }

		// @property (nonatomic, setter = setUseReceiptValidationSandbox:) BOOL useReceiptValidationSandbox;
		[Export ("useReceiptValidationSandbox")]
		bool UseReceiptValidationSandbox { get; set; }

		// @property (nonatomic, setter = setUseUninstallSandbox:) BOOL useUninstallSandbox;
		[Export ("useUninstallSandbox")]
		bool UseUninstallSandbox { get; [Bind ("setUseUninstallSandbox:")] set; }

		// -(void)setUserEmails:(NSArray *)userEmails withCryptType:(EmailCryptType)type;
		[Export ("setUserEmails:withCryptType:")]
		void SetUserEmails (NSObject [] userEmails,  EmailCryptType type);

		// +(AppsFlyerTracker *)sharedTracker;
		[Static, Export ("sharedTracker")]
		AppsFlyerTracker SharedTracker ();

		// -(void)trackAppLaunch;
		[Export ("trackAppLaunch")]
		void TrackAppLaunch ();

		// -(void)trackEvent:(NSString *)eventName withValue:(NSString *)value;
		[Export ("trackEvent:withValue:")]
		void TrackEvent (string eventName, string value);

		// -(void)trackEvent:(NSString *)eventName withValues:(NSDictionary *)values;
		[Export ("trackEvent:withValues:")]
		void TrackEvent (string eventName, NSDictionary values);

		// -(void)validateAndTrackInAppPurchase:(NSString *)eventNameIfSuucceed eventNameIfFailed:(NSString *)failedEventName withValue:(NSString *)value withProduct:(NSString *)productIdentifier price:(NSDecimalNumber *)price currency:(NSString *)currency success:(void (^)(NSDictionary *))successBlock failure:(void (^)(NSError *, id))failedBlock;
		[Export ("validateAndTrackInAppPurchase:eventNameIfFailed:withValue:withProduct:price:currency:success:failure:")]
		void ValidateAndTrackInAppPurchase (string eventNameIfSuucceed, string failedEventName, string value, string productIdentifier, NSDecimalNumber price, string currency, Action<NSDictionary> successBlock, Action<NSError, NSObject> failedBlock);


		// -(void)trackLocation:(double)longitude latitude:(double)latitude;
		[Export ("trackLocation:latitude:")]
		void TrackLocation (double longitude, double latitude);

		// -(NSString *)getAppsFlyerUID;
		[Export ("getAppsFlyerUID")]
		string GetAppsFlyerUID ();

		// -(void)loadConversionDataWithDelegate:(id<AppsFlyerTrackerDelegate>)delegate __attribute__((deprecated("")));
		[Export ("loadConversionDataWithDelegate:")]
		void LoadConversionDataWithDelegate (AppsFlyerTrackerDelegate @delegate);

		// -(void)handleOpenUrl:(NSURL *)url options:(NSDictionary *)options;
		[Export ("handleOpenUrl:options:")]
		void handleOpenUrl (NSUrl url, NSDictionary options);

		// -(BOOL)continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray *))restorationHandler __attribute__((availability(ios, introduced=9.0)));
		[Export ("continueUserActivity:restorationHandler:")]
		bool ContinueUserActivity (NSUserActivity userActivity, UIApplicationRestorationHandler restorationHandler);

		// -(void)didUpdateUserActivity:(NSUserActivity *)userActivity __attribute__((availability(ios, introduced=9.0)));
		[Export ("didUpdateUserActivity:")]
		void DidUpdateUserActivity (NSUserActivity userActivity);

		// -(void)handlePushNotification:(NSDictionary *)pushPayload;
		[Export ("handlePushNotification:")]
		void HandlePushNotification (NSDictionary pushPayload);

		// -(void)registerUninstall:(NSData *)deviceToken;
		[Export ("registerUninstall:")]
		void RegisterUninstall (NSData deviceToken);

		// -(NSString *)getSDKVersion;
		[Export ("getSDKVersion")]
		string SDKVersion { get; }

		// -(void)remoteDebuggingCallWithData:(NSString *)data;
		[Export ("remoteDebuggingCallWithData:")]
		void RemoteDebuggingCallWithData(string data);
	}
}


