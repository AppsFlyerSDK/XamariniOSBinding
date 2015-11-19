using System;
using AppsFlyerXamarinBinding;
using Foundation;

namespace AppsFlyerSampleApp
{
	public class AppsFlyerConversionDataDelegate : AppsFlyerTrackerDelegate
	{
		public override void OnAppOpenAttribution (NSDictionary attributionData) {

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

