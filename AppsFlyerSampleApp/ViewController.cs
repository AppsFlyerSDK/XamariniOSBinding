using System;
using UIKit;
using AppsFlyerXamarinBinding;
using Foundation;


namespace AppsFlyerSampleApp
{
    public partial class ViewController : UIViewController
    {
        internal string gcdString = "Loading...";
        internal string deepLinkString = "Will be presented when app is opened with the deeplink...";

        public ViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad ()
        {
            base.ViewDidLoad ();
            // Perform any additional setup after loading the view, typically from a nib.
            this.gcdTextView.Text = gcdString;
            this.deepLinkTextView.Text = deepLinkString;
        }

        public override void DidReceiveMemoryWarning ()
        {
            base.DidReceiveMemoryWarning ();
            // Release any cached data, images, etc that aren't in use.
        }

        partial void EventButton_TouchUpInside (UIButton sender)
        {
            var addToCartEvent = new NSDictionary (
                AFEventParameter.AFEventParamContentId, "id123",
                AFEventParameter.AFEventParamContentType, "type 1",
                AFEventParameter.AFEventParamCurrency, "GBP",
                AFEventParameter.AFEventParamRevenue, 20,
                AFEventParameter.AFEventParamDescription, "Description example");
            AppsFlyerLib.Shared.LogEvent ("login", new NSDictionary());
            AppsFlyerLib.Shared.LogEvent (AFEventName.AFEventAddToCart, addToCartEvent);
            AppsFlyerLib.Shared.LogEvent (AFEventName.AFEventPurchase, addToCartEvent);
        }

        partial void ShareButton_TouchUpInside (UIButton sender)
        {
            AppsFlyerShareInviteHelper.generateInviteUrlWithLinkGenerator (
                            (linkGenerator) => {
                                linkGenerator.setChannel ("channel_name");
                                linkGenerator.setReferrerName ("ref_name");
                                return linkGenerator;
                            }, completionHandler: (NSURL) => {
                                Console.WriteLine (NSURL);
                                //Create and display Alert
                                InvokeOnMainThread (() => {
                                    var okAlertController = UIAlertController.Create ("Link generated sucessfully", NSURL.AbsoluteString, UIAlertControllerStyle.Alert);
                                    okAlertController.AddAction (UIAlertAction.Create ("OK", UIAlertActionStyle.Default, null));
                                    PresentViewController (okAlertController, true, null);
                                });

                            }
                    );
        }
    }
}

