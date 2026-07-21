namespace Sample.NuGet.NET;

[Register ("SceneDelegate")]
public class SceneDelegate : UIResponder, IUIWindowSceneDelegate {

	public SceneDelegate () { }

	public SceneDelegate (IntPtr handle) : base (handle) { }

	[Export ("window")]
	public UIWindow? Window { get; set; }

	// AppsFlyerLib.Delegate/DeepLinkDelegate are unretained (ArgumentSemantic.Assign) - hold a strong
	// reference here or the GC can collect these once WillConnect returns.
	AppsFlyerConversionDataDelegate? conversionDataDelegate;
	MyAppsFlyerDeepLinkDelegate? deepLinkDelegate;

	[Export ("scene:willConnectToSession:options:")]
	public void WillConnect (UIScene scene, UISceneSession session, UISceneConnectionOptions connectionOptions)
	{
		if (scene is not UIWindowScene windowScene)
			return;

		var mainViewController = new MainViewController ();

		Window = new UIWindow (windowScene);
		Window.RootViewController = mainViewController;
		Window.MakeKeyAndVisible ();

		conversionDataDelegate = new AppsFlyerConversionDataDelegate (mainViewController);
		deepLinkDelegate = new MyAppsFlyerDeepLinkDelegate (mainViewController);
		AppsFlyerXamarinBinding.AppsFlyerLib.Shared.Delegate = conversionDataDelegate;
		AppsFlyerXamarinBinding.AppsFlyerLib.Shared.DeepLinkDelegate = deepLinkDelegate;

		// Start once per launch, not on every foreground re-activation (avoids inflating session counts).
		AppsFlyerXamarinBinding.AppsFlyerLib.Shared.Start ();
		mainViewController.UpdateStatus ("AppsFlyer Start called.");
	}

	[Export ("sceneDidDisconnect:")]
	public void DidDisconnect (UIScene scene)
	{
		// Called as the scene is being released by the system.
		// This occurs shortly after the scene enters the background, or when its session is discarded.
		// Release any resources associated with this scene that can be re-created the next time the scene connects.
		// The scene may re-connect later, as its session was not neccessarily discarded (see UIApplicationDelegate `DidDiscardSceneSessions` instead).
	}

	[Export ("sceneDidBecomeActive:")]
	public void DidBecomeActive (UIScene scene)
	{
	}

	[Export ("sceneWillResignActive:")]
	public void WillResignActive (UIScene scene)
	{
		// Called when the scene will move from an active state to an inactive state.
		// This may occur due to temporary interruptions (ex. an incoming phone call).
	}

	[Export ("sceneWillEnterForeground:")]
	public void WillEnterForeground (UIScene scene)
	{
		// Called as the scene transitions from the background to the foreground.
		// Use this method to undo the changes made on entering the background.
	}

	[Export ("sceneDidEnterBackground:")]
	public void DidEnterBackground (UIScene scene)
	{
		// Called as the scene transitions from the foreground to the background.
		// Use this method to save data, release shared resources, and store enough scene-specific state information
		// to restore the scene back to its current state.
	}
}

