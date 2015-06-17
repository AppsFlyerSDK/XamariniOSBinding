using System;
using Foundation;

using AppsFlyerXamarinBinding;

namespace AppsFlyerXamarinSampleApp
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

