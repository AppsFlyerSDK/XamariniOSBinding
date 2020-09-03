using System;
using AppsFlyerXamarinBinding;
using Foundation;
using UIKit;

namespace AppsFlyerSampleApp
{
	public class AppsFlyerConversionDataDelegate : AppsFlyerLibDelegate
	{

		private ViewController viewController;
        private String oaoaString;
		private String gcdString;


		public AppsFlyerConversionDataDelegate(ViewController viewController)
        {
			this.viewController = viewController;
			oaoaString = viewController.oaoaString;
			gcdString = viewController.gcdString;
			Console.WriteLine ("AppsFlyerConversionDelegate called");
		}

		public override void OnAppOpenAttribution (NSDictionary attributionData) {
			string message = "OnAppOpenAttribution:\n";
			foreach (var kvp in attributionData) {
				message = message + kvp.Key.ToString () + " = " + kvp.Value.ToString () + "\n";
			}
			Console.WriteLine (message);
			if (viewController.oaoaTextView != null) {
				viewController.oaoaTextView.Text = message;
			} else {
				oaoaString = message;
			}
		}

		public override void OnAppOpenAttributionFailure (NSError error) {

		}

		public override void OnConversionDataSuccess (NSDictionary conversionInfo) {
			String message = "OnConversionDataSuccess:\n";
			foreach (var kvp in conversionInfo) {
				if (kvp.Value != null) {
					message = message + kvp.Key.ToString () + " = " + kvp.Value.ToString () + "\n";
				}
			}
			message = message + "Timestamp:" + DateTime.Now;
			Console.WriteLine (message);
			if (viewController.gcdTextView != null) {
				viewController.gcdTextView.Text = message;
			} else {
				gcdString = message;
			}
		}

		public override void OnConversionDataFail (NSError error){

		}
    }
}

