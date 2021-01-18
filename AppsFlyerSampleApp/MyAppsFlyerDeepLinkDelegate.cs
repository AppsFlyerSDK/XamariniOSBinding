using System;
using AppsFlyerXamarinBinding;

namespace AppsFlyerSampleApp
{
    public class MyAppsFlyerDeepLinkDelegate : AppsFlyerDeepLinkDelegate
    {
        public MyAppsFlyerDeepLinkDelegate ()
        {
        }

        public override void DidResolveDeepLink (AppsFlyerDeepLinkResult result)
        {
            string message = "DDL result: " + result.status;
            Console.WriteLine (message);
        }
    }
}
