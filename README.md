
<img src="https://www.appsflyer.com/wp-content/uploads/2016/11/logo-1.svg"  width="200">

# Xamarin iOS Binding

Xamarin Binding integration guide For iOS 

AppsFlyer Xamarin Binding version `1.3.5` <br>
Built with AppsFlyer iOS SDK `v4.10.4`
    
    
    
# 1. Overview
    
AppsFlyer SDK provides app installation and event tracking functionality. We have developed an SDK that is highly robust (7+ billion SDK installations to date), secure, lightweight and very simple to embed.
    
    
    
You can track installs, updates and sessions and also track additional in-app events beyond app installs (including in-app purchases, game levels, etc.) to evaluate ROI and user engagement levels.
    
---
AppsFlyer’s Xamarin binding provides application installation and events tracking functionality.
    
The API for the binding coincides with the native iOS API, which can be found [here](https://support.appsflyer.com/hc/en-us/articles/207032066-AppsFlyer-SDK-Integration-iOS).

    

## Table of content

- [Nuget](#nuget_install)
- [Quick Start](#quickStart)
- [API Methods](#api-methods)
    -  [SDK Initialization](#sdk_init)
    -  [Tracking In-App Events](#adding_events)
    -  [Get Conversion Data](#conversion_data)
    -  [StopTracking](#StopTracking)
- [Sample App](#sample_app)


### <a id="nuget_install">


# Nuget
Install-Package AppsFlyerXamarinBinding <br>
https://www.nuget.org/packages/AppsFlyerXamarinBinding


### <a id="quickStart">



# 2.0 Quick Start



#### 2.1) Adding the Plugin to your Project

    1. Go to Project > Add NuGet Packages...
    2. Select the AppsFlyerXamarinBinding
    3. Select under version -  1.3.5
    4. Click `Add Package`



--------

To Embed SDK into your Application Manually:

    1. Copy AppsFlyerXamarinBinding.dll into your project.
    2. On Xamarin Studio go to References and click on Edit References.
    3. Go to .Net Assembly tab and click on Browse… button.
    4. Locate AppsFlyerXamarinBinding.dll and chose it.

### <a id="api-methods">



# 3.0 API Methods



### <a id="sdk_init">


##  SDK Initialization



Go to your MainActivity.cs and add:

Go to your AppDelegate.cs and add:

1) `using AppsFlyerXamarinBinding;` at the top of the file.


2) Add the following code to the FinishedLaunching() method:

```c#
public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
{           
    AppsFlyerTracker.SharedTracker().AppleAppID = "<APP_ID>";
    AppsFlyerTracker.SharedTracker().AppsFlyerDevKey = "<YOUR_DEV_KEY>";
    /* AppsFlyerTracker.SharedTracker().IsDebug = true; */
    /* AppsFlyerTracker.SharedTracker().LoadConversionDataWithDelegate(af_delegate); */

    return true;
}
```

3) Add the following code in the OnActivated method:
```c#
public override void OnActivated(UIApplication application)
{
    AppsFlyerTracker.SharedTracker().TrackAppLaunch();
}
```



### <a id="adding_events">

## Tracking In-App Events

Tracking in-app events is performed by calling `TrackEvent` with event name and value parameters. See [In-App Events](https://support.appsflyer.com/hc/en-us/articles/115005544169-AppsFlyer-Rich-In-App-Events-Android-and-iOS) documentation for more details.

Event Example:
```c#
var addToCartEvent = new NSDictionary (AFEventParameter.AFEventParamContentId, "id 123",
AFEventParameter.AFEventParamContentType, "type 1", AFEventParameter.AFEventParamCurrency,
"USD", AFEventParameter.AFEventParamDescription, "add to cart Description");

AppsFlyerTracker.SharedTracker().TrackEvent(AFEventName.AFEventAddToCart, addToCartEvent);
```

### <a id="conversion_data">

##  Get Conversion Data


First add to the class-level declarations:
```c#
AppsFlyerTrackerDelegate af_delegate = new AppsFlyerConversionDataDelegate();
```

Then call this method in the FinishedLaunching method:
```c#
AppsFlyerTracker.SharedTracker().LoadConversionDataWithDelegate (af_delegate);
```

AppsFlyerConversionDataDelegate.cs can be found here:

```c#
public class AppsFlyerConversionDataDelegate : AppsFlyerTrackerDelegate
{
    public override void OnAppOpenAttribution(NSDictionary attributionData)
    {
        Console.WriteLine("deeplink data in xamarin = " + attributionData.Description);
    }
    
    public override void OnAppOpenAttributionFailure(NSError error) { }
    
    public override void OnConversionDataReceived(NSDictionary installData)
    {
        Console.WriteLine("conversion data in xamarin = " + installData.Description);
    }
    
    public override void OnConversionDataRequestFailure(NSError error) { }
}
```

### <a id="StopTracking">
##  Opt-Out
For complete opt out of the SDK use the following method call 
```c#
AppsFlyerTracker.SharedTracker().IsStopTracking = true;
```
This will prevent any data from being sent out of the AppsFlyer SDK.



### <a id="sample_app">
## Sample App 
Sample app can be found here:
https://github.com/AppsFlyerSDK/XamariniOSBinding/tree/master/AppsFlyerSampleApp


---

In order for us to provide optimal support, we would kindly ask you to submit any issues to support@appsflyer.com.



*_When submitting an issue please specify your AppsFlyer sign-up (account) email, your app ID, production steps, logs, code snippets and any additional relevant information._*




