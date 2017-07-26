using ObjCRuntime;

[assembly: LinkWith ("libAppsFlyerLib.a", SmartLink = true, Frameworks="Security iAd", WeakFrameworks="AdSupport")]
