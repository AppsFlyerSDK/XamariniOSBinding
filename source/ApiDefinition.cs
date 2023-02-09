using System;
using UIKit;
using Foundation;
using ObjCRuntime;

namespace AppsFlyerXamarinBinding
{
    // @protocol AppsFlyerLibDelegate <NSObject>
    [Protocol, Model]
    [BaseType (typeof (NSObject))]
    interface AppsFlyerLibDelegate
    {
        // @required -(void)onConversionDataSuccess:(NSDictionary * _Nonnull)conversionInfo;
        [Abstract]
        [Export ("onConversionDataSuccess:")]
        void OnConversionDataSuccess (NSDictionary conversionInfo);

        // @required -(void)onConversionDataFail:(NSError * _Nonnull)error;
        [Abstract]
        [Export ("onConversionDataFail:")]
        void OnConversionDataFail (NSError error);

        // @optional -(void)onAppOpenAttribution:(NSDictionary *)attributionData;
        [Export ("onAppOpenAttribution:")]
        void OnAppOpenAttribution (NSDictionary attributionData);

        // @optional -(void)onAppOpenAttributionFailure:(NSError *)error;
        [Export ("onAppOpenAttributionFailure:")]
        void OnAppOpenAttributionFailure (NSError error);

        // @optional -(NSDictionary<NSString *,NSString *> * _Nullable)allHTTPHeaderFieldsForResolveDeepLinkURL:(NSURL * _Nonnull)URL;
        [Export ("allHTTPHeaderFieldsForResolveDeepLinkURL:")]
        [return: NullAllowed]
        NSDictionary<NSString, NSString> AllHTTPHeaderFieldsForResolveDeepLinkURL (NSUrl URL);
    }

    // @protocol AppsFlyerDeepLinkDelegate <NSObject>
    [Protocol, Model]
    [BaseType (typeof (NSObject))]
    interface AppsFlyerDeepLinkDelegate
    {
        // @optional - (void)didResolveDeepLink:(AppsFlyerDeepLinkResult *_Nonnull)result;
        [Abstract]
        [Export ("didResolveDeepLink:")]
        void DidResolveDeepLink (AppsFlyerDeepLinkResult result);
    }

    // @interface AppsFlyerDeepLinkResult : NSObject
    [BaseType (typeof (NSObject))]
    interface AppsFlyerDeepLinkResult
    {
        // @property(readonly) AFSDKDeepLinkResultStatus status;
        [Export ("status")]
        AFSDKDeepLinkResultStatus status { get; }

        //@property (readonly, nullable) AppsFlyerDeepLink* deepLink;
        [Export ("deepLink")]
        AppsFlyerDeepLink deepLink { get; }

        //@property (readonly, nullable) NSError* error;
        [Export ("error")]
        NSError error { get; }
    }

    // @interface AppsFlyerDeepLink : NSObject
    [BaseType (typeof (NSObject))]
    interface AppsFlyerDeepLink
    {
        //@property (readonly, nonnull) NSDictionary<NSString*, id>* clickEvent;
        [Export ("clickEvent")]
        NSDictionary clickEvent { get; }

        //@property (readonly, nullable) NSString* deeplinkValue;
        [Export ("deeplinkValue")]
        string deeplinkValue { get; }

        //@property (readonly, nullable) NSString* matchType;
        [Export ("matchType")]
        string matchType { get; }

        //@property (readonly, nullable) NSString* clickHTTPReferrer;
        [Export ("clickHTTPReferrer")]
        string clickHTTPReferrer { get; }

        //@property (readonly, nullable) NSString* mediaSource;
        [Export ("mediaSource")]
        string mediaSource { get; }

        //@property (readonly, nullable) NSString* campaign;
        [Export ("campaign")]
        string campaign { get; }

        //@property (readonly, nullable) NSString* campaignId;
        [Export ("campaignId")]
        string campaignId { get; }

        //@property (readonly, nullable) NSString* afSub1;
        [Export ("afSub1")]
        string afSub1 { get; }

        //@property (readonly, nullable) NSString* afSub2;
        [Export ("afSub2")]
        string afSub2 { get; }

        //@property (readonly, nullable) NSString* afSub3;
        [Export ("afSub3")]
        string afSub3 { get; }

        //@property (readonly, nullable) NSString* afSub4;
        [Export ("afSub4")]
        string afSub4 { get; }

        //@property (readonly, nullable) NSString* afSub5;
        [Export ("afSub5")]
        string afSub5 { get; }

        //@property (readonly) BOOL isDeferred;
        [Export ("isDeferred")]
        bool isDeferred { get; }

        //- (NSString *)toString;
        [Export ("toString")]
        string toString ();
    }

    // @interface AppsFlyerLib : NSObject
    [BaseType (typeof (NSObject))]
    interface AppsFlyerLib
    {

        // +(AppsFlyerLib * _Nonnull)shared;
        [Static]
        [Export ("shared")]
        AppsFlyerLib Shared { get; }

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

        // @property BOOL disableAdvertisingIdentifier;
        [Export ("disableAdvertisingIdentifier")]
        bool DisableAdvertisingIdentifier { get; set; }

        // @property (nonatomic, setter = setIsDebug:) BOOL isDebug;
        [Export ("isDebug")]
        bool IsDebug { get; set; }

        // @property (nonatomic, setter = setShouldCollectDeviceName:) BOOL shouldCollectDeviceName;
        [Export ("shouldCollectDeviceName")]
        bool ShouldCollectDeviceName { get; set; }

        // @property (nonatomic, setter = setAppInviteOneLink:) NSString* appInviteOneLinkID;
        [Export ("appInviteOneLinkID", ArgumentSemantic.Retain)]
        string AppInviteOneLinkID { get; [Bind ("setAppInviteOneLink:")] set; }

        // @property BOOL anonymizeUser;
        [Export ("anonymizeUser")]
        bool AnonymizeUser { get; set; }

        // @property BOOL disableCollectASA;
        [Export ("disableCollectASA")]
        bool DisableCollectASA { get; set; }

        // @property (nonatomic, unsafe_unretained) id<AppsFlyerLibDelegate> delegate;
        [Export ("delegate", ArgumentSemantic.UnsafeUnretained)]
        [NullAllowed]
        NSObject WeakDelegate { get; set; }

        // @property (nonatomic, unsafe_unretained) id<AppsFlyerLibDelegate> delegate;
        [Wrap ("WeakDelegate")]
        AppsFlyerLibDelegate Delegate { get; set; }

        // @property (nonatomic, unsafe_unretained) id<AppsFlyerDeepLinkDelegate> deepLinkDelegate;
        [Export ("deepLinkDelegate", ArgumentSemantic.UnsafeUnretained)]
        [NullAllowed]
        NSObject WeakDeepLinkDelegate { get; set; }

        // @property (nonatomic, unsafe_unretained) id<AppsFlyerDeepLinkDelegate> deepLinkDelegate;
        [Wrap ("WeakDeepLinkDelegate")]
        AppsFlyerDeepLinkDelegate DeepLinkDelegate { get; set; }


        // @property (nonatomic, setter = setUseReceiptValidationSandbox:) BOOL useReceiptValidationSandbox;
        [Export ("useReceiptValidationSandbox")]
        bool UseReceiptValidationSandbox { get; set; }

        // @property (nonatomic, setter = setUseUninstallSandbox:) BOOL useUninstallSandbox;
        [Export ("useUninstallSandbox")]
        bool UseUninstallSandbox { get; [Bind ("setUseUninstallSandbox:")] set; }

        // @property (readonly, nonatomic, strong) NSString * _Nonnull advertisingIdentifier;
        [Export ("advertisingIdentifier", ArgumentSemantic.Strong)]
        string AdvertisingIdentifier { get; }

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

        // -(void)start;
        [Export ("start")]
        void Start ();

        // -(void)startWithCompletionHandler:(void (^ _Nullable)(NSDictionary<NSString *,id> * _Nullable, NSError * _Nullable))completionHandler;
        [Export ("startWithCompletionHandler:")]
        void StartWithCompletionHandler ([NullAllowed] Action<NSDictionary<NSString, NSObject>, NSError> completionHandler);

        // -(void)logEvent:(NSString *)eventName withValues:(NSDictionary *)values;
        [Export ("logEvent:withValues:")]
        void LogEvent (string eventName, NSDictionary values);

        // -(void)logEventWithEventName:(NSString * _Nonnull)eventName eventValues:(NSDictionary<NSString *,id> * _Nullable)eventValues completionHandler:(void (^ _Nullable)(NSDictionary<NSString *,id> * _Nullable, NSError * _Nullable))completionHandler;
        [Export ("logEventWithEventName:eventValues:completionHandler:")]
        void LogEventWithEventName (string eventName, [NullAllowed] NSDictionary<NSString, NSObject> eventValues, [NullAllowed] Action<NSDictionary<NSString, NSObject>, NSError> completionHandler);

        // -(void)validateAndLogInAppPurchase:(NSString * _Nullable)productIdentifier price:(NSString * _Nullable)price currency:(NSString * _Nullable)currency transactionId:(NSString * _Nullable)transactionId additionalParameters:(NSDictionary * _Nullable)params success:(void (^ _Nullable)(NSDictionary * _Nonnull))successBlock failure:(void (^ _Nullable)(NSError * _Nullable, id _Nullable))failedBlock __attribute__((availability(ios, introduced=7.0)));
        [Export("validateAndLogInAppPurchase:price:currency:transactionId:additionalParameters:success:failure:")]
        void ValidateAndLogInAppPurchase([NullAllowed] string productIdentifier, [NullAllowed] string price, [NullAllowed] string currency, [NullAllowed] string transactionId, [NullAllowed] NSDictionary @params, [NullAllowed] Action<NSDictionary> successBlock, [NullAllowed] Action<NSError, NSObject> failedBlock);

        // -(void)logLocation:(double)longitude latitude:(double)latitude;
        [Export ("logLocation:latitude:")]
        void LogLocation (double longitude, double latitude);

        // -(NSString *)getAppsFlyerUID;
        [Export ("getAppsFlyerUID")]
        string GetAppsFlyerUID ();

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

        // @property (nonatomic, setter = isStopped:) BOOL shouldStop;
        [Export ("isStopped")]
        bool IsStopped { get; set; }

        // @property (nonatomic) NSURL * _Nullable facebookDeferredAppLink;
        [NullAllowed, Export ("facebookDeferredAppLink", ArgumentSemantic.Assign)]
        NSUrl FacebookDeferredAppLink { get; set; }

        // @property (nonatomic) NSArray<NSString *> * _Nullable sharingFilter __attribute__((deprecated("starting SDK version 6.4.0, please use `setSharingFilterForAllPartners:`")));
        [Obsolete ("starting SDK version 6.4.0, please use `setSharingFilterForAllPartners:`")]
        [NullAllowed, Export ("sharingFilter", ArgumentSemantic.Assign)]
        string [] SharingFilter { get; set; }

        // -(void)setSharingFilterForAllPartners __attribute__((deprecated("starting SDK version 6.4.0, please use `setSharingFilterForAllPartners:`")));
        [Obsolete ("starting SDK version 6.4.0, please use `setSharingFilterForAllPartners:`")]
        [Export ("setSharingFilterForAllPartners")]
        void SetSharingFilterForAllPartners ();


        // -(void)waitForATTUserAuthorizationWithTimeoutInterval:(NSTimeInterval)timeoutInterval;
        [Export ("waitForATTUserAuthorizationWithTimeoutInterval:")]
        void waitForATTUserAuthorizationWithTimeoutInterval (double timeoutInterval);

        // @property (nonatomic) BOOL disableSKAdNetwork;
        [Export ("disableSKAdNetwork")]
        bool DisableSKAdNetwork { get; set; }

        // - (void)appendParametersToDeepLinkingURLWithString:(NSString *)containsString parameters:(NSDictionary<NSString*, NSString*>*)parameters
        [Export ("appendParametersToDeepLinkingURLWithString:parameters:")]
        void AppendParametersToDeepLinkingURL (string containsString, NSDictionary parameters);

        // - (void)addPushNotificationDeepLinkPath:(NSArray<NSString *> *)deepLinkPath;
        [Export ("addPushNotificationDeepLinkPath:")]
        void AddPushNotificationDeepLinkPath (string [] deepLinkPath);

        //- (void)setPartnerDataWithPartnerId:(NSString * _Nullable)partnerId partnerInfo:(NSDictionary<NSString*, id>* _Nullable) partnerInfo
        [Export ("setPartnerDataWithPartnerId:partnerInfo:")]
        void SetPartnerData (string partnerId, NSDictionary partnerInfo);

        // @property (nonatomic) NSString * _Nullable currentDeviceLanguage;
        [NullAllowed, Export ("currentDeviceLanguage")]
        string CurrentDeviceLanguage { get; set; }

        // -(void)setSharingFilterForPartners:(NSArray<NSString *> * _Nullable)sharingFilter;
        [Export ("setSharingFilterForPartners:")]
        void SetSharingFilterForPartners ([NullAllowed] string [] sharingFilter);
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
        // +(void)logCrossPromoteImpression:(NSString * _Nonnull)appID campaign:(NSString * _Nullable)campaign parameters:(NSDictionary * _Nullable)parameters;
        [Static]
        [Export ("logCrossPromoteImpression:campaign:parameters:")]
        void LogCrossPromoteImpression (string appID, [NullAllowed] string campaign, [NullAllowed] NSDictionary parameters);

        // +(void)logAndOpenStore:(NSString * _Nonnull)appID campaign:(NSString * _Nullable)campaign paramters:(NSDictionary * _Nullable)parameters openStore:(void (^ _Nonnull)(NSURLSession * _Nonnull, NSURL * _Nonnull))openStoreBlock;
        [Static]
        [Export ("logAndOpenStore:campaign:paramters:openStore:")]
        void LogAndOpenStore (string appID, [NullAllowed] string campaign, [NullAllowed] NSDictionary parameters, Action<NSUrlSession, NSUrl> openStoreBlock);
    }
}


