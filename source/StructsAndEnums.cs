using System;

namespace AppsFlyerXamarinBinding
{
	public enum EmailCryptType : uint {
		EmailCryptTypeNone = 0,
		EmailCryptTypeSHA1 = 1,
		EmailCryptTypeMD5 = 2
	}

	public enum AFSDKDeepLinkResultStatus : uint
    {
		AFSDKDeepLinkResultStatusNotFound = 0,
		AFSDKDeepLinkResultStatusFound = 1,
		AFSDKDeepLinkResultStatusFailure = 2,
	}

    public enum AFSDKPlugin : long
    {
        IOSNative,
        Unity,
        Flutter,
        ReactNative,
        AdobeAir,
        AdobeMobile,
        Cocos2dx,
        Cordova,
        Mparticle,
        NativeScript,
        Expo,
        Unreal,
        Xamarin,
        Capacitor,
        Segment,
        AdobeSwiftAEP
    }

    public struct AFEventName {
		public const string AFEventLevelAchieved 		   		= "af_level_achieved";
		public const string AFEventAddPaymentInfo          		= "af_add_payment_info";
		public const string AFEventAddToCart               		= "af_add_to_cart";
		public const string AFEventAddToWishlist           		= "af_add_to_wishlist";
		public const string AFEventCompleteRegistration    		= "af_complete_registration";
		public const string AFEventTutorial_completion     		= "af_tutorial_completion";
		public const string AFEventInitiatedCheckout       		= "af_initiated_checkout";
		public const string AFEventPurchase                		= "af_purchase";
		public const string AFEventRate                    		= "af_rate";
		public const string AFEventSearch                  		= "af_search";
		public const string AFEventSpentCredits            		= "af_spent_credits";
		public const string AFEventAchievementUnlocked     		= "af_achievement_unlocked";
		public const string AFEventContentView             		= "af_content_view";
		public const string AFEventListView 			   		= "af_list_view";
		public const string AFEventTravelBooking           		= "af_travel_booking";
		public const string AFEventShare                   		= "af_share";
		public const string AFEventInvite                  		= "af_invite";
		public const string AFEventLogin                   		= "af_login";
		public const string AFEventReEngage                		= "af_re_engage";
		public const string AFEventUpdate                  		= "af_update";
		public const string AFEventOpenedFromPushNotification 	= "af_opened_from_push_notification";
        public const string AFEventSubcribe						= "af_subscribe";
        public const string AFEventAdView						= "af_ad_view";

    }

	public struct AFEventParameter {
		public const string AFEventParamLevel                  	= "af_level";
		public const string AFEventParamScore              	   	= "af_score";
		public const string AFEventParamSuccess                	= "af_success";
		public const string AFEventParamPrice 					= "af_price";
		public const string AFEventParamContentType 			= "af_content_type";
		public const string AFEventParamContentId              	= "af_content_id";
		public const string AFEventParamContentList            	= "ad_content_list";
		public const string AFEventParamCurrency               	= "af_currency";
		public const string AFEventParamQuantity               	= "af_quantity";
		public const string AFEventParamRegistrationMethod     	= "af_registration_method";
		public const string AFEventParamPaymentInfoAvailable   	= "af_payment_info_available";
		public const string AFEventParamMaxRatingValue         	= "af_max_rating_value";
		public const string AFEventParamRatingValue            	= "af_rating_value";
		public const string AFEventParamSearchString           	= "af_search_string";
		public const string AFEventParamDateA                  	= "af_date_a";
		public const string AFEventParamDateB                  	= "af_date_b";
		public const string AFEventParamDestinationA           	= "af_destination_a";
		public const string AFEventParamDestinationB           	= "af_destination_b";
		public const string AFEventParamDescription            	= "af_description";
		public const string AFEventParamClass                  	= "af_class";
		public const string AFEventParamEventStart             	= "af_event_start";
		public const string AFEventParamEventEnd               	= "af_event_end";
		public const string AFEventParamLat                    	= "af_lat";
		public const string AFEventParamLong                   	= "af_long";
		public const string AFEventParamCustomerUserId         	= "af_customer_user_id";
		public const string AFEventParamValidated              	= "af_validated";
		public const string AFEventParamRevenue                	= "af_revenue";
		public const string AFEventParamReceiptId              	= "af_receipt_id";
		public const string AFEventParam1 						= "af_param_1";
		public const string AFEventParam2                      	= "af_param_2";
		public const string AFEventParam3                      	= "af_param_3";
		public const string AFEventParam4                      	= "af_param_4";
		public const string AFEventParam5                      	= "af_param_5";
		public const string AFEventParam6                      	= "af_param_6";
		public const string AFEventParam7                      	= "af_param_7";
		public const string AFEventParam8                      	= "af_param_8";
		public const string AFEventParam9                      	= "af_param_9";
		public const string AFEventParam10                     	= "af_param_10";
	}
}

