using System;
using ObjCRuntime;

[assembly: LinkWith ("libAppsFlyerLib.a", LinkTarget.ArmV7 | LinkTarget.ArmV7s | LinkTarget.Arm64 | LinkTarget.Simulator | LinkTarget.Simulator64, SmartLink = true, ForceLoad = true)]
