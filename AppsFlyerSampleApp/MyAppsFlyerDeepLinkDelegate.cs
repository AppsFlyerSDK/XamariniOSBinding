using System;
using AppsFlyerXamarinBinding;

namespace AppsFlyerSampleApp
{
    public class MyAppsFlyerDeepLinkDelegate : AppsFlyerDeepLinkDelegate
    {
        private string deepLinkString;
        private ViewController controller;

        public MyAppsFlyerDeepLinkDelegate (ViewController viewController)
        {
            controller = viewController;
            deepLinkString = viewController.deepLinkString;
            Console.WriteLine ("AppsFlyerDeepLinkDelegate called");
        }

        public override void DidResolveDeepLink (AppsFlyerDeepLinkResult result)
        {
            AppsFlyerDeepLink deepLink = result.deepLink;
            if (deepLink != null) {
                Console.WriteLine ("DDL: " + result.deepLink.toString());
                string message = result.deepLink.toString ();
                if (controller.deepLinkTextView != null) {
                    controller.deepLinkTextView.Text = message;
                } else {
                    deepLinkString = message;
                }
            } else {
                Console.WriteLine ("DDL: " + result.status);
            }
        }
    }
}