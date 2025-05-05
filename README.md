# Xamarin iOS Binding

Xamarin Binding integration guide For iOS 

AppsFlyer Xamarin Binding version `v6.17.0` <br>
Built with AppsFlyer iOS SDK `v6.17.0`

## ❗ v6 Breaking Changes

We have renamed some of the APIs. For more details, please check out our [Help Center](https://support.appsflyer.com/hc/en-us/articles/360011571778#4-change-apis)
    
# Overview
    
AppsFlyer SDK provides app installation and event logging functionality. We have developed an SDK that is highly robust (7+ billion SDK installations to date), secure, lightweight and very simple to embed.
    
    
    
You can measure installs, updates and sessions and also log additional in-app events beyond app installs (including in-app purchases, game levels, etc.) to evaluate ROI and user engagement levels.
    
---
AppsFlyer’s Xamarin binding provides application installation and events logging functionality.
    
The API for the binding coincides with the native iOS API, which can be found [here](https://support.appsflyer.com/hc/en-us/articles/207032066-AppsFlyer-SDK-Integration-iOS).

    

## Table of content

- [Nuget](#nuget_install)
- [Quick Start](#quickStart)
- [API Methods](#api-methods)
    -  [SDK Initialization](#sdk_init)
    -  [Logging In-App Events](#adding_events)
    -  [Get Conversion Data](#conversion_data)
    -  [Stop](#Stop)
    -  [validateAndLogV2](#validateAndLogV2)
    -  [logAdRevenue](#logAdRevenue)
- [Sample App](#sample_app)



# Nuget
Install-Package AppsFlyerXamarinBinding <br>
https://www.nuget.org/packages/AppsFlyerXamarinBinding



# Quick Start



#### Adding the Plugin to your Project

    1. Go to Project > Add NuGet Packages...
    2. Select the AppsFlyerXamarinBinding
    3. Select under version -  6.9.2
    4. Click `Add Package`



--------

To Embed SDK into your Application Manually:

    1. Copy AppsFlyerXamarinBinding.dll into your project.
    2. On Xamarin Studio go to References and click on Edit References.
    3. Go to .Net Assembly tab and click on Browse… button.
    4. Locate AppsFlyerXamarinBinding.dll and chose it.



# API Methods



##  SDK Initialization



Go to your AppDelegate.cs and add:

1) `using AppsFlyerXamarinBinding;` at the top of the file.


2) Add the following code to the FinishedLaunching() method:

```c#
public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
{           
    AppsFlyerLib.Shared.AppleAppID = "<APP_ID>";
    AppsFlyerLib.Shared.AppsFlyerDevKey = "<YOUR_DEV_KEY>";
    /* AppsFlyerLib.Shared.Delegate = af_delegate; */
    /* AppsFlyerLib.Shared.IsDebug = true; */
  

    return true;
}
```

3) Add the following code in the OnActivated method:
```c#
public override void OnActivated(UIApplication application)
{
    AppsFlyerLib.Shared.Start();
}
```



## Logging In-App Events

Logging in-app events is performed by calling `LogEvent` with event name and value parameters. See [In-App Events](https://support.appsflyer.com/hc/en-us/articles/115005544169-AppsFlyer-Rich-In-App-Events-Android-and-iOS) documentation for more details.

Event Example:
```c#
var addToCartEvent = new NSDictionary(AFEventParameter.AFEventParamContentId, "id 1",
                                      AFEventParameter.AFEventParamContentType, "type 1", 
                                      AFEventParameter.AFEventParamCurrency, "USD", 
                                      AFEventParameter.AFEventParamDescription, "description");

AppsFlyerLib.Shared.LogEvent(AFEventName.AFEventAddToCart, addToCartEvent);
```

##  Get Conversion Data


First add to the class-level declarations:
```c#
AppsFlyerLibDelegate af_delegate = new AppsFlyerConversionDataDelegate();
```

Then set up the delegate in FinishedLaunching:
```c#
AppsFlyerLib.Shared.Delegate = af_delegate;
```

AppsFlyerConversionDataDelegate.cs can be found here:

```c#
public class AppsFlyerConversionDataDelegate : AppsFlyerLibDelegate
{
    public override void OnAppOpenAttribution(NSDictionary attributionData)
    {
        Console.WriteLine("deeplink data in xamarin = " + attributionData.Description);
    }
    
    public override void OnAppOpenAttributionFailure(NSError error) { }
    
    public override void OnConversionDataSuccess(NSDictionary conversionInfo)
    {
        Console.WriteLine("conversion data in xamarin = " + installData.Description);
    }
    
    public override void OnConversionDataFail(NSError error) { }
}
```

##  Opt-Out
For complete opt out of the SDK use the following method call 
```c#
AppsFlyerLib.Shared.IsStopped = true;
```
This will prevent any data from being sent out of the AppsFlyer SDK.

##  User invite
Allowing your existing users to invite their friends and contacts as new users to your app can be a key growth factor for your app. AppsFlyer allows you to attribute and record new installs originating from user invites within your app.
Set the OneLink ID, before calling Start(). 
```c#
AppsFlyerLib.Shared.AppInviteOneLinkID = "<OneLinKID>";
```

```c#
AppsFlyerXamarinBinding.AppsFlyerShareInviteHelper.generateInviteUrlWithLinkGenerator ((linkGenerator) => {
        linkGenerator.setChannel ("channel_name");
        linkGenerator.setReferrerName ("ref_name");
        return linkGenerator;
    }, completionHandler: (NSURL) => {
        Console.WriteLine (NSURL);
    }
);
```

##  DMA consent
As part of the EU Digital Marketing Act (DMA) legislation, big tech companies must get consent from European end users before using personal data from third-party services for advertising.<br>
More information [here](https://dev.appsflyer.com/hc/docs/send-consent-for-dma-compliance)

The SDK offers two alternative methods for gathering consent data:<br>
1. Through a Consent Management Platform (CMP): If the app uses a CMP that complies with the Transparency and Consent Framework (TCF) v2.2 protocol, the SDK can automatically retrieve the consent details.

OR

2. Through a dedicated SDK API: Developers can pass Google's required consent data directly to the SDK using a specific API designed for this purpose.

### Use CMP to collect consent data
1. Call `AppsFlyerLib.Shared.EnableTCFDataCollection(true);` before calling start()
```c#
AppsFlyerLib.Shared.EnableTCFDataCollection(true);
```
2. call start() **only after** the user approve the cmp consent pop up

Full example:
```c#
[Export("application:didFinishLaunchingWithOptions:")]
    public bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
    {
        AppsFlyerLib.Shared.AppleAppID = "xXxXxX";
        AppsFlyerLib.Shared.AppsFlyerDevKey = "xXxXxX";
        AppsFlyerLib.Shared.EnableTCFDataCollection(true);
        return true;
    }

[Export("applicationDidBecomeActive:")]
    public void OnActivated(UIApplication application)
    {
        if (cmpManager.hasConsent()){
            AppsFlyerLib.Shared.Start();
        }
    }
```
Note: `cmpManager` is here just for the example. use your own CMP.

### Manually collect consent data
If your app does not use a CMP compatible with TCF v2.2, use the SDK API detailed below to provide the consent data directly to the SDK.

#### When GDPR applies to the user
1. Given that GDPR is applicable to the user, determine whether the consent data is already stored for this session.
    1. If there is no consent data stored, show the consent dialog to capture the user consent decision.
    2. If there is consent data stored continue to the next step.
2. To transfer the consent data to the SDK create an AppsFlyerConsent object using forGDPRUser method that accepts the following parameters:
    1. `hasConsentForDataUsage`: boolean - Indicates whether the user has consented to use their data for advertising purposes.
    2. `hasConsentForAdsPersonalization: boolean` - Indicates whether the user has consented to use their data for personalized advertising.
4. Call `AppsFlyerLib.Shared.SetConsentData(consent);` with the AppsFlyerConsent object.
5. Call `AppsFlyerLib.Shared.Start();`

Full example:
```c#
[Export("application:didFinishLaunchingWithOptions:")]
    public bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
    {
        AppsFlyerLib.Shared.AppleAppID = "xXxXxX";
        AppsFlyerLib.Shared.AppsFlyerDevKey = "xXxXxX";
        AppsFlyerConsent consent = new AppsFlyerConsent().initForGDPRUser(true, true);
        AppsFlyerLib.Shared.SetConsentData(consent);
        return true;
    }

[Export("applicationDidBecomeActive:")]
    public void OnActivated(UIApplication application)
    {
        AppsFlyerLib.Shared.Start();
    }
```
#### When GDPR does not apply to the user
1. Create an AppsFlyerConsent object using forNonGDPRUser method that doesn't accepts any parameters
2. Call `AppsFlyerLib.Shared.SetConsentData(consent);` with the AppsFlyerConsent object.
3. Call `AppsFlyerLib.Shared.Start();`

Full example:
```c#
[Export("application:didFinishLaunchingWithOptions:")]
    public bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
    {
        AppsFlyerLib.Shared.AppleAppID = "xXxXxX";
        AppsFlyerLib.Shared.AppsFlyerDevKey = "xXxXxX";
        AppsFlyerConsent consent = new AppsFlyerConsent().initNonGDPRUser();
        // AppsFlyerConsent consent = new AppsFlyerConsent().InitWithConsentData(null, null, true, false);
        AppsFlyerLib.Shared.SetConsentData(consent);
        return true;
    }

[Export("applicationDidBecomeActive:")]
    public void OnActivated(UIApplication application)
    {
        AppsFlyerLib.Shared.Start();
    }
```

#### New API with all the freedom needed to decide id the user is `SubjectToGDPR`, `hasConsentForDataUsage`, `hasConsentForAdsPersonalization`, `hasConsentForAdStorage`:
* call the following method: 
```c#
 AppsFlyerConsent InitWithConsentInfo(
            bool? isUserSubjectToGDPR,
            bool? hasConsentForDataUsage,
            bool? hasConsentForAdsPersonalization,
            bool? hasConsentForAdStorage)
```            

Use it this way:            

```c#
[Export("application:didFinishLaunchingWithOptions:")]
    public bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
    {
        AppsFlyerLib.Shared.AppleAppID = "xXxXxX";
        AppsFlyerLib.Shared.AppsFlyerDevKey = "xXxXxX";
        AppsFlyerConsent consent = new AppsFlyerConsent().InitWithConsentData(null, null, true, false);
        // Example to use this partial API.
        // AppsFlyerConsent consent = new AppsFlyerConsent().InitWithConsentData(hasConsentForAdStorage: true);
        AppsFlyerLib.Shared.SetConsentData(consent);
        return true;
    }

[Export("applicationDidBecomeActive:")]
    public void OnActivated(UIApplication application)
    {
        AppsFlyerLib.Shared.Start();
    }
```


## ValidateAndLogV2
[Here](https://dev.appsflyer.com/hc/docs/validate-and-log-purchase-ios) you can find the info on what is the ValidateAndLog API purpose.
```c#
AFSDKPurchaseDetails details = new AFSDKPurchaseDetails("1234", "4.0", "USD", "123456789");
AppsFlyerLib.Shared.ValidateAndLogInAppPurchase(details, dictionary, (dict) =>
{
    Console.WriteLine(dict.Description);
    Console.WriteLine(dict.status);
    Console.WriteLine(dict.error.Description);
});
```

## LogAdRevenue
[Here](https://dev.appsflyer.com/hc/docs/ad-revenue-2) you can find the info on what is the LogAdRevenue API purpose.
```c#
AFAdRevenueData adRevenueData = new AFAdRevenueData("ironsource", AppsFlyerAdRevenueMediationNetworkType.Admost, "USD", 23.3);
AppsFlyerLib.Shared.LogAdRevenue(adRevenueData, dictionary);
```

## Sample App 
Sample apps for `xamarin.ios10` and `net6.0-ios` can be found here:
```
XamariniOSBinding/samples
```


---

In order for us to provide optimal support, we would kindly ask you to submit any issues to support@appsflyer.com.



*_When submitting an issue please specify your AppsFlyer sign-up (account) email, your app ID, production steps, logs, code snippets and any additional relevant information._*




