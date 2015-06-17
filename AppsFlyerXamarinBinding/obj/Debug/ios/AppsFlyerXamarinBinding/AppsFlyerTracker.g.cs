//
// Auto-generated from generator.cs, do not edit
//
// We keep references to objects, so warning 414 is expected

#pragma warning disable 414

using System;
using System.Drawing;
using System.Diagnostics;
using System.ComponentModel;
using System.Threading.Tasks;
using System.Runtime.InteropServices;
using System.Runtime.CompilerServices;
using UIKit;
using GLKit;
using MapKit;
using Security;
using SceneKit;
using CoreVideo;
using CoreMedia;
using QuickLook;
using Foundation;
using CoreMotion;
using ObjCRuntime;
using AddressBook;
using CoreGraphics;
using CoreLocation;
using NewsstandKit;
using AVFoundation;
using CoreAnimation;
using CoreFoundation;

namespace AppsFlyerXamarinBinding {
	[Register("AppsFlyerTracker", true)]
	public unsafe partial class AppsFlyerTracker : NSObject {
		
		[CompilerGenerated]
		static readonly IntPtr class_ptr = Class.GetHandle ("AppsFlyerTracker");
		
		public override IntPtr ClassHandle { get { return class_ptr; } }
		
		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		[Export ("init")]
		public AppsFlyerTracker () : base (NSObjectFlag.Empty)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
			if (IsDirectBinding) {
				InitializeHandle (global::ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, global::ObjCRuntime.Selector.GetHandle ("init")), "init");
			} else {
				InitializeHandle (global::ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, global::ObjCRuntime.Selector.GetHandle ("init")), "init");
			}
		}

		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		protected AppsFlyerTracker (NSObjectFlag t) : base (t)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
		}

		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		protected internal AppsFlyerTracker (IntPtr handle) : base (handle)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
		}

		[Export ("getAppsFlyerUID")]
		[CompilerGenerated]
		public virtual string GetAppsFlyerUID ()
		{
			if (IsDirectBinding) {
				return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.GetHandle ("getAppsFlyerUID")));
			} else {
				return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("getAppsFlyerUID")));
			}
		}
		
		[Export ("handleOpenURL:sourceApplication:")]
		[Availability (Deprecated = Platform.iOS_Version | Platform.Mac_Version)]
		[CompilerGenerated]
		public virtual void HandleOpenURL (NSUrl url, string sourceApplication)
		{
			if (url == null)
				throw new ArgumentNullException ("url");
			if (sourceApplication == null)
				throw new ArgumentNullException ("sourceApplication");
			var nssourceApplication = NSString.CreateNative (sourceApplication);
			
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr_IntPtr (this.Handle, Selector.GetHandle ("handleOpenURL:sourceApplication:"), url.Handle, nssourceApplication);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr_IntPtr (this.SuperHandle, Selector.GetHandle ("handleOpenURL:sourceApplication:"), url.Handle, nssourceApplication);
			}
			NSString.ReleaseNative (nssourceApplication);
			
		}
		
		[Export ("handleOpenURL:sourceApplication:withAnnotaion:")]
		[CompilerGenerated]
		public virtual void HandleOpenURL (NSUrl url, string sourceApplication, NSObject annotation)
		{
			if (url == null)
				throw new ArgumentNullException ("url");
			if (sourceApplication == null)
				throw new ArgumentNullException ("sourceApplication");
			if (annotation == null)
				throw new ArgumentNullException ("annotation");
			var nssourceApplication = NSString.CreateNative (sourceApplication);
			
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr_IntPtr_IntPtr (this.Handle, Selector.GetHandle ("handleOpenURL:sourceApplication:withAnnotaion:"), url.Handle, nssourceApplication, annotation.Handle);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr_IntPtr_IntPtr (this.SuperHandle, Selector.GetHandle ("handleOpenURL:sourceApplication:withAnnotaion:"), url.Handle, nssourceApplication, annotation.Handle);
			}
			NSString.ReleaseNative (nssourceApplication);
			
		}
		
		[Export ("loadConversionDataWithDelegate:")]
		[Availability (Deprecated = Platform.iOS_Version | Platform.Mac_Version)]
		[CompilerGenerated]
		public virtual void LoadConversionDataWithDelegate (AppsFlyerTrackerDelegate afDelegate)
		{
			if (afDelegate == null)
				throw new ArgumentNullException ("afDelegate");
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr (this.Handle, Selector.GetHandle ("loadConversionDataWithDelegate:"), afDelegate.Handle);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.GetHandle ("loadConversionDataWithDelegate:"), afDelegate.Handle);
			}
		}
		
		[Export ("setUserEmails:withCryptType:")]
		[CompilerGenerated]
		public virtual void SetUserEmails (NSObject[] userEmails, EmailCryptType type)
		{
			if (userEmails == null)
				throw new ArgumentNullException ("userEmails");
			var nsa_userEmails = NSArray.FromNSObjects (userEmails);
			
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr_UInt32 (this.Handle, Selector.GetHandle ("setUserEmails:withCryptType:"), nsa_userEmails.Handle, (UInt32)type);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr_UInt32 (this.SuperHandle, Selector.GetHandle ("setUserEmails:withCryptType:"), nsa_userEmails.Handle, (UInt32)type);
			}
			nsa_userEmails.Dispose ();
			
		}
		
		[Export ("sharedTracker")]
		[CompilerGenerated]
		public static AppsFlyerTracker SharedTracker ()
		{
			return  Runtime.GetNSObject<AppsFlyerTracker> (ApiDefinition.Messaging.IntPtr_objc_msgSend (class_ptr, Selector.GetHandle ("sharedTracker")));
		}
		
		[Export ("trackAppLaunch")]
		[CompilerGenerated]
		public virtual void TrackAppLaunch ()
		{
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend (this.Handle, Selector.GetHandle ("trackAppLaunch"));
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("trackAppLaunch"));
			}
		}
		
		[Export ("trackEvent:withValue:")]
		[CompilerGenerated]
		public virtual void TrackEvent (string eventName, string value)
		{
			if (eventName == null)
				throw new ArgumentNullException ("eventName");
			if (value == null)
				throw new ArgumentNullException ("value");
			var nseventName = NSString.CreateNative (eventName);
			var nsvalue = NSString.CreateNative (value);
			
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr_IntPtr (this.Handle, Selector.GetHandle ("trackEvent:withValue:"), nseventName, nsvalue);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr_IntPtr (this.SuperHandle, Selector.GetHandle ("trackEvent:withValue:"), nseventName, nsvalue);
			}
			NSString.ReleaseNative (nseventName);
			NSString.ReleaseNative (nsvalue);
			
		}
		
		[Export ("trackEvent:withValues:")]
		[CompilerGenerated]
		public virtual void TrackEvent (string eventName, NSDictionary values)
		{
			if (eventName == null)
				throw new ArgumentNullException ("eventName");
			if (values == null)
				throw new ArgumentNullException ("values");
			var nseventName = NSString.CreateNative (eventName);
			
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr_IntPtr (this.Handle, Selector.GetHandle ("trackEvent:withValues:"), nseventName, values.Handle);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr_IntPtr (this.SuperHandle, Selector.GetHandle ("trackEvent:withValues:"), nseventName, values.Handle);
			}
			NSString.ReleaseNative (nseventName);
			
		}
		
		[Export ("validateAndTrackInAppPurchase:eventNameIfFailed:withValue:withProduct:price:currency:success:failure:")]
		[CompilerGenerated]
		public unsafe virtual void ValidateAndTrackInAppPurchase (string eventNameIfSuucceed, string failedEventName, string value, string productIdentifier, NSDecimalNumber price, string currency, [BlockProxy (typeof (ObjCRuntime.Trampolines.NIDActionArity1V0))]global::System.Action<NSDictionary> successBlock, [BlockProxy (typeof (ObjCRuntime.Trampolines.NIDActionArity2V0))]global::System.Action<NSError, NSObject> failedBlock)
		{
			if (eventNameIfSuucceed == null)
				throw new ArgumentNullException ("eventNameIfSuucceed");
			if (failedEventName == null)
				throw new ArgumentNullException ("failedEventName");
			if (value == null)
				throw new ArgumentNullException ("value");
			if (productIdentifier == null)
				throw new ArgumentNullException ("productIdentifier");
			if (price == null)
				throw new ArgumentNullException ("price");
			if (currency == null)
				throw new ArgumentNullException ("currency");
			if (successBlock == null)
				throw new ArgumentNullException ("successBlock");
			if (failedBlock == null)
				throw new ArgumentNullException ("failedBlock");
			var nseventNameIfSuucceed = NSString.CreateNative (eventNameIfSuucceed);
			var nsfailedEventName = NSString.CreateNative (failedEventName);
			var nsvalue = NSString.CreateNative (value);
			var nsproductIdentifier = NSString.CreateNative (productIdentifier);
			var nscurrency = NSString.CreateNative (currency);
			BlockLiteral *block_ptr_successBlock;
			BlockLiteral block_successBlock;
			block_successBlock = new BlockLiteral ();
			block_ptr_successBlock = &block_successBlock;
			block_successBlock.SetupBlock (Trampolines.SDActionArity1V0.Handler, successBlock);
			BlockLiteral *block_ptr_failedBlock;
			BlockLiteral block_failedBlock;
			block_failedBlock = new BlockLiteral ();
			block_ptr_failedBlock = &block_failedBlock;
			block_failedBlock.SetupBlock (Trampolines.SDActionArity2V0.Handler, failedBlock);
			
			if (IsDirectBinding) {
				ApiDefinition.Messaging.void_objc_msgSend_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr (this.Handle, Selector.GetHandle ("validateAndTrackInAppPurchase:eventNameIfFailed:withValue:withProduct:price:currency:success:failure:"), nseventNameIfSuucceed, nsfailedEventName, nsvalue, nsproductIdentifier, price.Handle, nscurrency, (IntPtr) block_ptr_successBlock, (IntPtr) block_ptr_failedBlock);
			} else {
				ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr_IntPtr (this.SuperHandle, Selector.GetHandle ("validateAndTrackInAppPurchase:eventNameIfFailed:withValue:withProduct:price:currency:success:failure:"), nseventNameIfSuucceed, nsfailedEventName, nsvalue, nsproductIdentifier, price.Handle, nscurrency, (IntPtr) block_ptr_successBlock, (IntPtr) block_ptr_failedBlock);
			}
			NSString.ReleaseNative (nseventNameIfSuucceed);
			NSString.ReleaseNative (nsfailedEventName);
			NSString.ReleaseNative (nsvalue);
			NSString.ReleaseNative (nsproductIdentifier);
			NSString.ReleaseNative (nscurrency);
			block_ptr_successBlock->CleanupBlock ();
			block_ptr_failedBlock->CleanupBlock ();
			
		}
		
		[CompilerGenerated]
		public virtual string AppleAppID {
			[Export ("appleAppID", ArgumentSemantic.Retain)]
			get {
				if (IsDirectBinding) {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.GetHandle ("appleAppID")));
				} else {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("appleAppID")));
				}
			}
			
			[Export ("setAppleAppID:", ArgumentSemantic.Retain)]
			set {
				if (value == null)
					throw new ArgumentNullException ("value");
				var nsvalue = NSString.CreateNative (value);
				
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_IntPtr (this.Handle, Selector.GetHandle ("setAppleAppID:"), nsvalue);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.GetHandle ("setAppleAppID:"), nsvalue);
				}
				NSString.ReleaseNative (nsvalue);
				
			}
		}
		
		[CompilerGenerated]
		public virtual string AppsFlyerDevKey {
			[Export ("appsFlyerDevKey", ArgumentSemantic.Retain)]
			get {
				if (IsDirectBinding) {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.GetHandle ("appsFlyerDevKey")));
				} else {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("appsFlyerDevKey")));
				}
			}
			
			[Export ("setAppsFlyerDevKey:", ArgumentSemantic.Retain)]
			set {
				if (value == null)
					throw new ArgumentNullException ("value");
				var nsvalue = NSString.CreateNative (value);
				
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_IntPtr (this.Handle, Selector.GetHandle ("setAppsFlyerDevKey:"), nsvalue);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.GetHandle ("setAppsFlyerDevKey:"), nsvalue);
				}
				NSString.ReleaseNative (nsvalue);
				
			}
		}
		
		[CompilerGenerated]
		public virtual string CurrencyCode {
			[Export ("currencyCode", ArgumentSemantic.Retain)]
			get {
				if (IsDirectBinding) {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.GetHandle ("currencyCode")));
				} else {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("currencyCode")));
				}
			}
			
			[Export ("setCurrencyCode:", ArgumentSemantic.Retain)]
			set {
				if (value == null)
					throw new ArgumentNullException ("value");
				var nsvalue = NSString.CreateNative (value);
				
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_IntPtr (this.Handle, Selector.GetHandle ("setCurrencyCode:"), nsvalue);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.GetHandle ("setCurrencyCode:"), nsvalue);
				}
				NSString.ReleaseNative (nsvalue);
				
			}
		}
		
		[CompilerGenerated]
		public virtual string CustomerUserID {
			[Export ("customerUserID", ArgumentSemantic.Retain)]
			get {
				if (IsDirectBinding) {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.GetHandle ("customerUserID")));
				} else {
					return NSString.FromHandle (ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("customerUserID")));
				}
			}
			
			[Export ("setCustomerUserID:", ArgumentSemantic.Retain)]
			set {
				if (value == null)
					throw new ArgumentNullException ("value");
				var nsvalue = NSString.CreateNative (value);
				
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_IntPtr (this.Handle, Selector.GetHandle ("setCustomerUserID:"), nsvalue);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.GetHandle ("setCustomerUserID:"), nsvalue);
				}
				NSString.ReleaseNative (nsvalue);
				
			}
		}
		
		[CompilerGenerated]
		public AppsFlyerTrackerDelegate Delegate {
			get {
				return WeakDelegate as /**/AppsFlyerTrackerDelegate;
			}
			set {
				WeakDelegate = value;
			}
		}
		
		[CompilerGenerated]
		public virtual bool DeviceTrackingDisabled {
			[Export ("deviceTrackingDisabled")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("deviceTrackingDisabled"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("deviceTrackingDisabled"));
				}
			}
			
			[Export ("setDeviceTrackingDisabled:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setDeviceTrackingDisabled:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setDeviceTrackingDisabled:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		public virtual bool DisableAppleAdSupportTracking {
			[Export ("disableAppleAdSupportTracking")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("disableAppleAdSupportTracking"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("disableAppleAdSupportTracking"));
				}
			}
			
			[Export ("setDisableAppleAdSupportTracking:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setDisableAppleAdSupportTracking:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setDisableAppleAdSupportTracking:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		public virtual bool DisableIAdTracking {
			[Export ("disableIAdTracking")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("disableIAdTracking"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("disableIAdTracking"));
				}
			}
			
			[Export ("setDisableIAdTracking:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setDisableIAdTracking:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setDisableIAdTracking:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		public virtual bool IsDebug {
			[Export ("isDebug")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("isDebug"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("isDebug"));
				}
			}
			
			[Export ("setIsDebug:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setIsDebug:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setIsDebug:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		public virtual bool IsHTTPS {
			[Export ("isHTTPS")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("isHTTPS"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("isHTTPS"));
				}
			}
			
			[Export ("setIsHTTPS:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setIsHTTPS:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setIsHTTPS:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		public virtual bool ShouldCollectDeviceName {
			[Export ("shouldCollectDeviceName")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("shouldCollectDeviceName"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("shouldCollectDeviceName"));
				}
			}
			
			[Export ("setShouldCollectDeviceName:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setShouldCollectDeviceName:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setShouldCollectDeviceName:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		public virtual bool UseReceiptValidationSandbox {
			[Export ("useReceiptValidationSandbox")]
			get {
				if (IsDirectBinding) {
					return ApiDefinition.Messaging.bool_objc_msgSend (this.Handle, Selector.GetHandle ("useReceiptValidationSandbox"));
				} else {
					return ApiDefinition.Messaging.bool_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("useReceiptValidationSandbox"));
				}
			}
			
			[Export ("setUseReceiptValidationSandbox:")]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_bool (this.Handle, Selector.GetHandle ("setUseReceiptValidationSandbox:"), value);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_bool (this.SuperHandle, Selector.GetHandle ("setUseReceiptValidationSandbox:"), value);
				}
			}
		}
		
		[CompilerGenerated]
		object __mt_WeakDelegate_var;
		[CompilerGenerated]
		public virtual NSObject WeakDelegate {
			[Export ("delegate", ArgumentSemantic.UnsafeUnretained)]
			get {
				NSObject ret;
				if (IsDirectBinding) {
					ret = Runtime.GetNSObject (ApiDefinition.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.GetHandle ("delegate")));
				} else {
					ret = Runtime.GetNSObject (ApiDefinition.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.GetHandle ("delegate")));
				}
				MarkDirty ();
				__mt_WeakDelegate_var = ret;
				return ret;
			}
			
			[Export ("setDelegate:", ArgumentSemantic.UnsafeUnretained)]
			set {
				if (IsDirectBinding) {
					ApiDefinition.Messaging.void_objc_msgSend_IntPtr (this.Handle, Selector.GetHandle ("setDelegate:"), value == null ? IntPtr.Zero : value.Handle);
				} else {
					ApiDefinition.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.GetHandle ("setDelegate:"), value == null ? IntPtr.Zero : value.Handle);
				}
				MarkDirty ();
				__mt_WeakDelegate_var = value;
			}
		}
		
		[CompilerGenerated]
		protected override void Dispose (bool disposing)
		{
			base.Dispose (disposing);
			if (Handle == IntPtr.Zero) {
				__mt_WeakDelegate_var = null;
			}
		}
	} /* class AppsFlyerTracker */
}
