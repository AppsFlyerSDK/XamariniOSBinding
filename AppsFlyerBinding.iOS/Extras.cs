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
                var assembly = typeof(AppsFlyerLib).GetTypeInfo().Assembly;
                var assemblyName = new AssemblyName(assembly.FullName);
                var version = assemblyName.Version.ToString();

                
                Instance.SetPluginInfoWith(AFSDKPlugin.Xamarin, version, null);
                didSetPlugin = true;
                return Instance;
            }
        }
    }
}

