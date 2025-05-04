using System;
using System.Reflection;

namespace AppsFlyerXamarinBinding
{
    partial class AppsFlyerLib
    {
        static bool didSetPlugin = false;

        public static AppsFlyerLib Shared
        {
            get
            {
                var Instance = AppsFlyerLib.__Shared;
                if (didSetPlugin)
                {
                    return Instance;
                }
#pragma warning disable CS8602, CS8604
                var assembly = typeof(AppsFlyerLib).GetTypeInfo().Assembly;
                var assemblyName = new AssemblyName(assembly.FullName);
                var version = assemblyName.Version.ToString();

                Instance.SetPluginInfoWith(AFSDKPlugin.Xamarin, version, null);
#pragma warning restore CS8602, CS8604
                didSetPlugin = true;
                return Instance;
            }
        }
    }

    partial class AppsFlyerConsent
    {
        public AppsFlyerConsent InitWithConsentData(bool? isUserSubjectToGDPR = null,
                                        bool? hasConsentForDataUsage = null,
                                        bool? hasConsentForAdsPersonalization = null,
                                        bool? hasConsentForAdStorage = null)
        {
            return new AppsFlyerConsent().InitWithConsentInfo(
                isUserSubjectToGDPR.HasValue ? NSNumber.FromBoolean(isUserSubjectToGDPR.Value) : null,
                hasConsentForDataUsage.HasValue ? NSNumber.FromBoolean(hasConsentForDataUsage.Value) : null,
                hasConsentForAdsPersonalization.HasValue ? NSNumber.FromBoolean(hasConsentForAdsPersonalization.Value) : null,
                hasConsentForAdStorage.HasValue ? NSNumber.FromBoolean(hasConsentForAdStorage.Value) : null
            );
        }
    }
}

