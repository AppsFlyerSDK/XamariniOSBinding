using AppsFlyerXamarinBinding;

namespace Sample.NuGet.NET;

// Monochrome palette; all colors are dynamic system colors so light/dark mode invert automatically.
static class Palette {
	public static readonly UIColor TextPrimary = UIColor.Label;
	public static readonly UIColor TextSecondary = UIColor.SecondaryLabel;
	public static readonly UIColor Card = UIColor.SecondarySystemBackground;
	public static readonly UIColor Border = UIColor.Label;
}

public class MainViewController : UIViewController {
	UILabel sdkVersionLabel = null!;
	UILabel statusLabel = null!;
	UIView toastView = null!;
	UILabel toastLabel = null!;

	public MainViewController () { }

	public MainViewController (IntPtr handle) : base (handle) { }

	public override void ViewDidLoad ()
	{
		base.ViewDidLoad ();
		View!.BackgroundColor = UIColor.SystemBackground;
		BuildLayout ();

		sdkVersionLabel.Text = $"SDK Version: {AppsFlyerLib.Shared.SDKVersion}";
		UpdateStatus ("View loaded. SDK not started yet.");
	}

	void BuildLayout ()
	{
		var titleLabel = new UILabel {
			Text = "AppsFlyer .NET sample",
			Font = UIFont.SystemFontOfSize (26, UIFontWeight.Bold),
			TextAlignment = UITextAlignment.Center,
			TextColor = Palette.TextPrimary,
		};

		sdkVersionLabel = new UILabel {
			Font = UIFont.SystemFontOfSize (15, UIFontWeight.Regular),
			TextAlignment = UITextAlignment.Center,
			TextColor = UIColor.SecondaryLabel,
		};

		statusLabel = new UILabel {
			Text = "Status: Idle",
			Font = UIFont.SystemFontOfSize (15, UIFontWeight.Medium),
			TextColor = Palette.TextPrimary,
			Lines = 0,
			LineBreakMode = UILineBreakMode.WordWrap,
		};

		var statusCard = new UIView {
			BackgroundColor = Palette.Card,
		};
		statusCard.Layer.CornerRadius = 12;
		statusCard.Layer.BorderWidth = 1;
		statusCard.Layer.BorderColor = Palette.Border.CGColor;
		statusCard.TranslatesAutoresizingMaskIntoConstraints = false;
		statusLabel.TranslatesAutoresizingMaskIntoConstraints = false;
		statusCard.AddSubview (statusLabel);
		NSLayoutConstraint.ActivateConstraints (new [] {
			statusLabel.LeadingAnchor.ConstraintEqualTo (statusCard.LeadingAnchor, 14),
			statusLabel.TrailingAnchor.ConstraintEqualTo (statusCard.TrailingAnchor, -14),
			statusLabel.TopAnchor.ConstraintEqualTo (statusCard.TopAnchor, 12),
			statusLabel.BottomAnchor.ConstraintEqualTo (statusCard.BottomAnchor, -12),
		});

		var logEventButton = CreateActionButton ("Log Simple Event", filled: false);
		var logEventWithParamsButton = CreateActionButton ("Log Event with Parameters", filled: false);
		var setCustomUserIdButton = CreateActionButton ("Set Custom User ID", filled: false);
		var getAppsFlyerIdButton = CreateActionButton ("Get AppsFlyer ID", filled: false);
		var validatePurchaseButton = CreateActionButton ("Validate In-App Purchase", filled: false);

		logEventButton.TouchUpInside += (s, e) => OnLogEvent ();
		logEventWithParamsButton.TouchUpInside += (s, e) => OnLogEventWithParams ();
		setCustomUserIdButton.TouchUpInside += (s, e) => OnSetCustomUserId ();
		getAppsFlyerIdButton.TouchUpInside += (s, e) => OnGetAppsFlyerId ();
		validatePurchaseButton.TouchUpInside += (s, e) => OnValidatePurchase ();

		var buttonStack = new UIStackView (new UIView [] {
			logEventButton, logEventWithParamsButton, setCustomUserIdButton, getAppsFlyerIdButton, validatePurchaseButton,
		}) {
			Axis = UILayoutConstraintAxis.Vertical,
			Spacing = 12,
			TranslatesAutoresizingMaskIntoConstraints = false,
		};

		var scrollView = new UIScrollView { TranslatesAutoresizingMaskIntoConstraints = false };
		var contentStack = new UIStackView (new UIView [] { titleLabel, sdkVersionLabel, statusCard, buttonStack }) {
			Axis = UILayoutConstraintAxis.Vertical,
			Spacing = 16,
			TranslatesAutoresizingMaskIntoConstraints = false,
		};
		contentStack.SetCustomSpacing (24, statusCard);

		scrollView.AddSubview (contentStack);
		View!.AddSubview (scrollView);

		var guide = View.SafeAreaLayoutGuide;
		NSLayoutConstraint.ActivateConstraints (new [] {
			scrollView.TopAnchor.ConstraintEqualTo (guide.TopAnchor, 12),
			scrollView.LeadingAnchor.ConstraintEqualTo (guide.LeadingAnchor, 20),
			scrollView.TrailingAnchor.ConstraintEqualTo (guide.TrailingAnchor, -20),
			scrollView.BottomAnchor.ConstraintEqualTo (guide.BottomAnchor, -12),

			contentStack.TopAnchor.ConstraintEqualTo (scrollView.TopAnchor),
			contentStack.LeadingAnchor.ConstraintEqualTo (scrollView.LeadingAnchor),
			contentStack.TrailingAnchor.ConstraintEqualTo (scrollView.TrailingAnchor),
			contentStack.BottomAnchor.ConstraintEqualTo (scrollView.BottomAnchor),
			contentStack.WidthAnchor.ConstraintEqualTo (scrollView.WidthAnchor),
		});

		BuildToast ();
	}

	void BuildToast ()
	{
		toastLabel = new UILabel {
			TextColor = UIColor.White,
			Font = UIFont.SystemFontOfSize (14, UIFontWeight.Medium),
			TextAlignment = UITextAlignment.Center,
			Lines = 0,
			TranslatesAutoresizingMaskIntoConstraints = false,
		};
		toastView = new UIView {
			BackgroundColor = UIColor.Black.ColorWithAlpha (0.85f),
			Alpha = 0,
			TranslatesAutoresizingMaskIntoConstraints = false,
		};
		toastView.Layer.CornerRadius = 10;
		toastView.AddSubview (toastLabel);
		View!.AddSubview (toastView);

		NSLayoutConstraint.ActivateConstraints (new [] {
			toastLabel.LeadingAnchor.ConstraintEqualTo (toastView.LeadingAnchor, 16),
			toastLabel.TrailingAnchor.ConstraintEqualTo (toastView.TrailingAnchor, -16),
			toastLabel.TopAnchor.ConstraintEqualTo (toastView.TopAnchor, 10),
			toastLabel.BottomAnchor.ConstraintEqualTo (toastView.BottomAnchor, -10),

			toastView.CenterXAnchor.ConstraintEqualTo (View.CenterXAnchor),
			toastView.BottomAnchor.ConstraintEqualTo (View.SafeAreaLayoutGuide.BottomAnchor, -32),
			toastView.LeadingAnchor.ConstraintGreaterThanOrEqualTo (View.LeadingAnchor, 24),
			toastView.TrailingAnchor.ConstraintLessThanOrEqualTo (View.TrailingAnchor, -24),
		});
	}

	// filled: solid Label-colored background (black-on-white / white-on-black). outline: bordered, transparent background.
	static UIButton CreateActionButton (string title, bool filled)
	{
		var button = new UIButton (UIButtonType.System);
		button.SetTitle (title, UIControlState.Normal);
		button.TitleLabel!.Font = UIFont.SystemFontOfSize (16, UIFontWeight.Semibold);
		button.Layer.CornerRadius = 12;
		button.HeightAnchor.ConstraintEqualTo (50).Active = true;

		if (filled) {
			button.SetTitleColor (UIColor.SystemBackground, UIControlState.Normal);
			button.BackgroundColor = Palette.Border;
		} else {
			button.SetTitleColor (Palette.TextPrimary, UIControlState.Normal);
			button.BackgroundColor = UIColor.Clear;
			button.Layer.BorderWidth = 1.5f;
			button.Layer.BorderColor = Palette.Border.CGColor;
		}
		return button;
	}

	// Mirrors MainActivity.UpdateStatus (Android)
	public void UpdateStatus (string message)
	{
		InvokeOnMainThread (() => statusLabel.Text = $"Status: {message}");
	}

	// Mirrors MainActivity.UpdateStatusFromListener (Android)
	public void UpdateStatusFromListener (string message)
	{
		InvokeOnMainThread (() => statusLabel.Text = $"Listener: {message}");
	}

	// Mirrors MainActivity.ShowToast / ShowToastOnListenerCallback (Android)
	public void ShowToast (string message)
	{
		InvokeOnMainThread (() => {
			toastLabel.Text = message;
			toastView.Layer.RemoveAllAnimations ();
			UIView.Animate (0.2, () => toastView.Alpha = 1, () => {
				UIView.Animate (0.3, 1.4, UIViewAnimationOptions.CurveEaseInOut, () => toastView.Alpha = 0, () => { });
			});
		});
	}

	void OnLogEvent ()
	{
		const string eventName = "af_simple_event";
		UpdateStatus ($"Logging event: {eventName}");
		AppsFlyerLib.Shared.LogEvent (eventName, new NSDictionary ());
		ShowToast ($"Event '{eventName}' logged.");
	}

	void OnLogEventWithParams ()
	{
		const string eventName = "af_event_with_params";
		var values = new NSDictionary (
			"app_version", "1.0.0",
			"event_source", "button_click",
			"item_id", "123");
		UpdateStatus ($"Logging event: {eventName} with parameters");
		AppsFlyerLib.Shared.LogEvent (eventName, values);
		ShowToast ($"Event '{eventName}' with params logged.");
	}

	void OnSetCustomUserId ()
	{
		const string cuid = "test-cuid-12345";
		UpdateStatus ($"Setting Custom User ID: {cuid}");
		AppsFlyerLib.Shared.CustomerUserID = cuid;
		ShowToast ($"Custom User ID '{cuid}' set.");
	}

	void OnGetAppsFlyerId ()
	{
		string? appsFlyerId = AppsFlyerLib.Shared.GetAppsFlyerUID ();
		UpdateStatus ($"AppsFlyer ID: {appsFlyerId ?? "Not available"}");
		ShowToast ($"AppsFlyer ID: {appsFlyerId ?? "Not available"}");
	}

	void OnValidatePurchase ()
	{
		try {
			ShowToast ("Called ValidateAndLogInAppPurchase.");

			var purchaseDetails = new AFSDKPurchaseDetails ("productId", "purchase_token", AFSDKPurchaseType.OneTimePurchase);
			var additionalDetails = new NSDictionary (
				"Country", "US",
				"myCustomParam", "32423bwdfnsdf");

			AppsFlyerLib.Shared.ValidateAndLogInAppPurchase (purchaseDetails, additionalDetails, (response, error) => {
				if (error != null) {
					UpdateStatusFromListener ($"OnInAppPurchaseValidationError:\n{error.LocalizedDescription}");
					ShowToast ("Purchase validation error.");
				} else {
					UpdateStatusFromListener ($"OnInAppPurchaseValidationFinished:\n{response}");
					ShowToast ("Purchase validation finished.");
				}
			});

			UpdateStatus ("Purchase validation requested - check logs for callback results");
		} catch (Exception ex) {
			UpdateStatus ($"Error calling purchase validation: {ex.Message}");
			ShowToast ("Error calling purchase validation");
		}
	}
}
