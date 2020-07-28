using System;
using UIKit;
using Foundation;
using ObjCRuntime;

namespace AppsFlyerXamarinBinding
{
    // @protocol AppsFlyerTrackerDelegate <NSObject>
    [Protocol, Model]
    [BaseType (typeof (NSObject))]
    interface AppsFlyerTrackerDelegate
    {
        // @required -(void)onConversionDataSuccess:(NSDictionary * _Nonnull)conversionInfo;
        [Abstract]
        [Export ("onConversionDataSuccess:")]
        void onConversionDataSuccess (NSDictionary conversionInfo);

        // @required -(void)onConversionDataFail:(NSError * _Nonnull)error;
        [Abstract]
        [Export ("onConversionDataFail:")]
        void onConversionDataFail (NSError error);

        // @optional -(void)onAppOpenAttribution:(NSDictionary *)attributionData;
        [Export ("onAppOpenAttribution:")]
        void OnAppOpenAttribution (NSDictionary attributionData);

        // @optional -(void)onAppOpenAttributionFailure:(NSError *)error;
        [Export ("onAppOpenAttributionFailure:")]
        void OnAppOpenAttributionFailure (NSError error);
    }

    // @interface AppsFlyerTracker : NSObject <AppsFlyerTrackerDelegate>
    [BaseType (typeof (NSObject))]
    interface AppsFlyerTracker
    {

        // +(AppsFlyerTracker *)sharedTracker;
        [Static, Export ("sharedTracker")]
        AppsFlyerTracker SharedTracker ();

        // @property (nonatomic, strong, setter = setCustomerUserID:) NSString * customerUserID;
        [Export ("customerUserID", ArgumentSemantic.Retain)]
        string CustomerUserID { get; set; }

        // @property (nonatomic, setter = setAdditionalData:, strong) NSDictionary * customData;
        [Export ("customData", ArgumentSemantic.Strong)]
        NSDictionary CustomData { get; [Bind ("setAdditionalData:")] set; }

        // @property (nonatomic, strong, setter = setAppsFlyerDevKey:) NSString * appsFlyerDevKey;
        [Export ("appsFlyerDevKey", ArgumentSemantic.Retain)]
        string AppsFlyerDevKey { get; set; }

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

        [Export ("setAppInviteOneLink:")]
        void setAppInviteOneLink (String appInviteOneLinkID);

        // @property (nonatomic, setter = setAppInviteOneLink:) NSString* appInviteOneLinkID;
        [Export ("appInviteOneLinkID", ArgumentSemantic.Retain)]
        string appInviteOneLinkID { get; }

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

        // @property (readonly, nonatomic, strong) NSString * _Nonnull advertiserId;
        [Export ("advertiserId", ArgumentSemantic.Strong)]
        string AdvertiserId { get; }

        // @property (nonatomic) NSArray<NSString *> * _Nullable resolveDeepLinkURLs;
        [NullAllowed, Export ("resolveDeepLinkURLs", ArgumentSemantic.Assign)]
        string [] ResolveDeepLinkURLs { get; set; }

        // @property (nonatomic) NSArray<NSString *> * _Nullable oneLinkCustomDomains;
        [NullAllowed, Export ("oneLinkCustomDomains", ArgumentSemantic.Assign)]
        string [] OneLinkCustomDomains { get; set; }

        // @property (nonatomic) NSString * _Nullable phoneNumber;
        [NullAllowed, Export ("phoneNumber")]
        string PhoneNumber { get; set; }

        // @property (nonatomic) BOOL disableIDFVCollection;
        [Export ("disableIDFVCollection")]
        bool DisableIDFVCollection { get; set; }

        // -(void)enableFacebookDeferredApplinksWithClass:(Class _Nullable)facebookAppLinkUtilityClass;
        [Export ("enableFacebookDeferredApplinksWithClass:")]
        void EnableFacebookDeferredApplinksWithClass ([NullAllowed] Class facebookAppLinkUtilityClass);

        // -(void)setUserEmails:(NSArray *)userEmails withCryptType:(EmailCryptType)type;
        [Export ("setUserEmails:withCryptType:")]
        void SetUserEmails (NSObject [] userEmails, EmailCryptType type);

        // -(void)trackAppLaunch;
        [Export ("trackAppLaunch")]
        void TrackAppLaunch ();

        // -(void)trackAppLaunchWithCompletionHandler:(void (^ _Nullable)(NSDictionary<NSString *,id> * _Nullable, NSError * _Nullable))completionHandler;
        [Export ("trackAppLaunchWithCompletionHandler:")]
        void TrackAppLaunchWithCompletionHandler ([NullAllowed] Action<NSDictionary<NSString, NSObject>, NSError> completionHandler);

        // -(void)trackEvent:(NSString *)eventName withValue:(NSString *)value;
        [Export ("trackEvent:withValue:")]
        void TrackEvent (string eventName, string value);

        // -(void)trackEvent:(NSString *)eventName withValues:(NSDictionary *)values;
        [Export ("trackEvent:withValues:")]
        void TrackEvent (string eventName, NSDictionary values);

        // -(void)trackEventWithEventName:(NSString * _Nonnull)eventName eventValues:(NSDictionary<NSString *,id> * _Nullable)eventValues completionHandler:(void (^ _Nullable)(NSDictionary<NSString *,id> * _Nullable, NSError * _Nullable))completionHandler;
        [Export ("trackEventWithEventName:eventValues:completionHandler:")]
        void TrackEventWithEventName (string eventName, [NullAllowed] NSDictionary<NSString, NSObject> eventValues, [NullAllowed] Action<NSDictionary<NSString, NSObject>, NSError> completionHandler);

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

        // -(void)handleOpenURL:(NSURL * _Nullable)url sourceApplication:(NSString * _Nullable)sourceApplication __attribute__((availability(macos, unavailable)));
        [NoMac]
        [Export ("handleOpenURL:sourceApplication:")]
        void HandleOpenURL ([NullAllowed] NSUrl url, [NullAllowed] string sourceApplication);

        // -(void)handleOpenURL:(NSURL * _Nullable)url sourceApplication:(NSString * _Nullable)sourceApplication withAnnotation:(id _Nullable)annotation __attribute__((availability(macos, unavailable)));
        [NoMac]
        [Export ("handleOpenURL:sourceApplication:withAnnotation:")]
        void HandleOpenURL ([NullAllowed] NSUrl url, [NullAllowed] string sourceApplication, [NullAllowed] NSObject annotation);

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
        void RemoteDebuggingCallWithData (string data);

        // -(void)performOnAppAttributionWithURL:(NSURL * _Nullable)URL;
        [Export ("performOnAppAttributionWithURL:")]
        void PerformOnAppAttributionWithURL ([NullAllowed] NSUrl URL);

        // @property (readonly, nonatomic, strong) NSString * _Nonnull host;
        [Export ("host", ArgumentSemantic.Strong)]
        string Host { get; }

        // -(void)setHost:(NSString * _Nonnull)host withHostPrefix:(NSString * _Nonnull)hostPrefix;
        [Export ("setHost:withHostPrefix:")]
        void SetHost (string host, string hostPrefix);

        // @property (readonly, nonatomic, strong) NSString * _Nonnull hostPrefix;
        [Export ("hostPrefix", ArgumentSemantic.Strong)]
        string HostPrefix { get; }

        // @property (atomic) NSUInteger minTimeBetweenSessions;
        [Export ("minTimeBetweenSessions")]
        nuint MinTimeBetweenSessions { get; set; }

        // @property (nonatomic, setter = isStopTracking:) BOOL stopTracking;
        [Export ("isStopTracking")]
        bool IsStopTracking { get; set; }

        // @property (nonatomic) NSURL * _Nullable facebookDeferredAppLink;
        [NullAllowed, Export ("facebookDeferredAppLink", ArgumentSemantic.Assign)]
        NSUrl FacebookDeferredAppLink { get; set; }

        // @property (nonatomic) NSArray<NSString *> * _Nullable sharingFilter;
        [NullAllowed, Export ("sharingFilter", ArgumentSemantic.Assign)]
        string [] SharingFilter { get; set; }

        // -(void)setSharingFilterForAllPartners;
        [Export ("setSharingFilterForAllPartners")]
        void SetSharingFilterForAllPartners ();
    }

    [BaseType (typeof (NSObject))]
    interface AppsFlyerLinkGenerator
    {

        // @property (nonatomic) NSString * _Nullable brandDomain;
        [NullAllowed, Export ("brandDomain")]
        string BrandDomain { get; set; }

        [Export ("setChannel:")]
        void setChannel (String channel);

        [Export ("setReferrerCustomerId:")]
        void setReferrerCustomerId (NSString referrerCustomerId);

        /// A campaign name. Usage: Optional
        [Export ("setCampaign:")]
        void setCampaign (String campaign);

        [Export ("setReferrerUID:")]
        void setReferrerUID (String referrerUID);

        [Export ("setReferrerName:")]
        void setReferrerName (String referrerName);


        /// The URL to referrer user avatar. Usage: Optional
        [Export ("setReferrerImageURL:")]
        void setReferrerImageURL (String referrerImageURL);

        [Export ("setAppleAppID:")]
        void setAppleAppID (String appleAppID);

        [Export ("setDeeplinkPath:")]
        void setDeeplinkPath (String deeplinkPath);

        [Export ("setBaseDeeplink:")]
        void setBaseDeeplink (String baseDeeplink);

        /// A single key value custom parameter. Usage: Optional
        [Export ("addParameterValue:forKey:")]
        void addParameterValue (String value, String key);

        /// Multiple key value custom parameters. Usage: Optional
        [Export ("addParameters:")]
        void addParameters (NSDictionary parameters);
    }

    delegate AppsFlyerLinkGenerator GeneratorHandler (AppsFlyerLinkGenerator linkGenerator);
    [BaseType (typeof (NSObject))]
    interface AppsFlyerShareInviteHelper
    {
        [Static]
        [Export ("generateInviteUrlWithLinkGenerator:completionHandler:")]
        void generateInviteUrlWithLinkGenerator (GeneratorHandler generatorHandler, Action<NSUrl> completionHandler);

    }

    // @interface AppsFlyerCrossPromotionHelper : NSObject
    [BaseType (typeof (NSObject))]
    interface AppsFlyerCrossPromotionHelper
    {
        // +(void)trackCrossPromoteImpression:(NSString * _Nonnull)appID campaign:(NSString * _Nullable)campaign __attribute__((deprecated("Use +[AppsFlyerCrossPromotionHelper trackCrossPromoteImpression:campaign:parameters:] instead.")));
        //[Static]
        //[Export ("trackCrossPromoteImpression:campaign:")]
        //void TrackCrossPromoteImpression (string appID, [NullAllowed] string campaign);

        // +(void)trackCrossPromoteImpression:(NSString * _Nonnull)appID campaign:(NSString * _Nullable)campaign parameters:(NSDictionary * _Nullable)parameters;
        [Static]
        [Export ("trackCrossPromoteImpression:campaign:parameters:")]
        void TrackCrossPromoteImpression (string appID, [NullAllowed] string campaign, [NullAllowed] NSDictionary parameters);

        // +(void)trackAndOpenStore:(NSString * _Nonnull)appID campaign:(NSString * _Nullable)campaign paramters:(NSDictionary * _Nullable)parameters openStore:(void (^ _Nonnull)(NSURLSession * _Nonnull, NSURL * _Nonnull))openStoreBlock;
        [Static]
        [Export ("trackAndOpenStore:campaign:paramters:openStore:")]
        void TrackAndOpenStore (string appID, [NullAllowed] string campaign, [NullAllowed] NSDictionary parameters, Action<NSUrlSession, NSUrl> openStoreBlock);
    }
}


