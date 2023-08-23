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
}

