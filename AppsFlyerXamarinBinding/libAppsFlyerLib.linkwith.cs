using ObjCRuntime;

[assembly: LinkWith ("libAppsFlyerLib.a", SmartLink = true, ForceLoad = true)]
[assembly: LinkWith ("libAppsFlyerLib.a", SmartLink = true, Frameworks="Security")]
