using System;
using UIKit;
using AppsFlyerXamarinBinding;
using Foundation;

namespace AppsFlyerXamarinSampleApp
{
	public partial class ViewController : UIViewController
	{
		public ViewController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void DidReceiveMemoryWarning ()
		{
			base.DidReceiveMemoryWarning ();
			// Release any cached data, images, etc that aren't in use.
		}

		partial void UIButton3_TouchUpInside (UIButton sender)
		{
			AppsFlyerTracker.SharedTracker().TrackEvent("button_pressed", "Xamarin Button pressed");

		}
			
		partial void UIButton54_TouchUpInside (UIButton sender)
		{
			var addToCartEvent = new NSDictionary (AFEventParameter.AFEventParamContentId, "id 123", AFEventParameter.AFEventParamContentType, "type 1", 
			AFEventParameter.AFEventParamCurrency, "USD", AFEventParameter.AFEventParamDescription, "Description bla bla");
			AppsFlyerTracker.SharedTracker().TrackEvent(AFEventName.AFEventAddToCart, addToCartEvent);
		}
	}
}

