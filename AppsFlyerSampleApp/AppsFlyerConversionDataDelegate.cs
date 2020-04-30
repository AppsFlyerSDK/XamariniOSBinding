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

		public override void onConversionDataSuccess (NSDictionary conversionInfo) {
			Console.WriteLine ("conversion data in xamarin = " + conversionInfo.Description);
		}

		public override void onConversionDataFail (NSError error){

		}
	}
}

