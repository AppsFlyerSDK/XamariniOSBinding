# Xamarin iOS Binding

Xamarin Binding integration guide For iOS 

AppsFlyer Xamarin Binding version `v6.9.2` <br>
Built with AppsFlyer iOS SDK `v6.9.2`

##❗ v6 Breaking Changes

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
- [Sample App](#sample_app)



# Nuget
Install-Package AppsFlyerXamarinBinding <br>
https://www.nuget.org/packages/AppsFlyerXamarinBinding



# Quick Start



#### Adding the Plugin to your Project

    1. Go to Project > Add NuGet Packages...
    2. Select the AppsFlyerXamarinBinding
    3. Select under version -  6.5.4.0
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
var addToCartEvent = new NSDictionary (AFEventParameter.AFEventParamContentId, "id 123",
AFEventParameter.AFEventParamContentType, "type 1", AFEventParameter.AFEventParamCurrency,
"USD", AFEventParameter.AFEventParamDescription, "add to cart Description");

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

## Sample App 
Sample app can be found here:
https://github.com/AppsFlyerSDK/XamariniOSBinding/tree/master/AppsFlyerSampleApp


---

In order for us to provide optimal support, we would kindly ask you to submit any issues to support@appsflyer.com.



*_When submitting an issue please specify your AppsFlyer sign-up (account) email, your app ID, production steps, logs, code snippets and any additional relevant information._*




