using System;
using AppsFlyerXamarinBinding;
using Foundation;

namespace AppsFlyerSampleApp
{
	public class AppsFlyerConversionDataDelegate : AppsFlyerTrackerDelegate
	{
		public override void OnAppOpenAttribution (NSDictionary attributionData) {
			Console.WriteLine ("deeplink data in xamarin = " + attributionData.Description);
		}

		public override void OnAppOpenAttributionFailure (NSError error) {

		}

		public override void OnConversionDataReceived (NSDictionary installData) {
			Console.WriteLine ("conversion data in xamarin = " + installData.Description);
		}

		public override void OnConversionDataRequestFailure (NSError error){

		}
	}
}

