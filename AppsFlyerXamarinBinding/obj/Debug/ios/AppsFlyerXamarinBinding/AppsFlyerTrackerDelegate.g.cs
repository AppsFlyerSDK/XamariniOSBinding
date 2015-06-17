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
	[Protocol (Name = "AppsFlyerTrackerDelegate", WrapperType = typeof (AppsFlyerTrackerDelegateWrapper))]
	public interface IAppsFlyerTrackerDelegate : INativeObject, IDisposable
	{
	}
	
	public static partial class AppsFlyerTrackerDelegate_Extensions {
		[CompilerGenerated]
		public static void OnConversionDataReceived (this IAppsFlyerTrackerDelegate This, NSDictionary installData)
		{
			if (installData == null)
				throw new ArgumentNullException ("installData");
			ApiDefinition.Messaging.void_objc_msgSend_IntPtr (This.Handle, Selector.GetHandle ("onConversionDataReceived:"), installData.Handle);
		}
		
		[CompilerGenerated]
		public static void OnConversionDataRequestFailure (this IAppsFlyerTrackerDelegate This, NSError error)
		{
			if (error == null)
				throw new ArgumentNullException ("error");
			ApiDefinition.Messaging.void_objc_msgSend_IntPtr (This.Handle, Selector.GetHandle ("onConversionDataRequestFailure:"), error.Handle);
		}
		
		[CompilerGenerated]
		public static void OnAppOpenAttribution (this IAppsFlyerTrackerDelegate This, NSDictionary attributionData)
		{
			if (attributionData == null)
				throw new ArgumentNullException ("attributionData");
			ApiDefinition.Messaging.void_objc_msgSend_IntPtr (This.Handle, Selector.GetHandle ("onAppOpenAttribution:"), attributionData.Handle);
		}
		
		[CompilerGenerated]
		public static void OnAppOpenAttributionFailure (this IAppsFlyerTrackerDelegate This, NSError error)
		{
			if (error == null)
				throw new ArgumentNullException ("error");
			ApiDefinition.Messaging.void_objc_msgSend_IntPtr (This.Handle, Selector.GetHandle ("onAppOpenAttributionFailure:"), error.Handle);
		}
		
	}
	
	internal sealed class AppsFlyerTrackerDelegateWrapper : BaseWrapper, IAppsFlyerTrackerDelegate {
		public AppsFlyerTrackerDelegateWrapper (IntPtr handle)
			: base (handle, false)
		{
		}
		
		[Preserve (Conditional = true)]
		public AppsFlyerTrackerDelegateWrapper (IntPtr handle, bool owns)
			: base (handle, owns)
		{
		}
		
	}
}
namespace AppsFlyerXamarinBinding {
	[Protocol]
	[Register("AppsFlyerTrackerDelegate", false)]
	[Model]
	public unsafe partial class AppsFlyerTrackerDelegate : NSObject, IAppsFlyerTrackerDelegate {
		
		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		[Export ("init")]
		public AppsFlyerTrackerDelegate () : base (NSObjectFlag.Empty)
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
		protected AppsFlyerTrackerDelegate (NSObjectFlag t) : base (t)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
		}

		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		protected internal AppsFlyerTrackerDelegate (IntPtr handle) : base (handle)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
		}

		[Export ("onAppOpenAttribution:")]
		[CompilerGenerated]
		public virtual void OnAppOpenAttribution (NSDictionary attributionData)
		{
			throw new You_Should_Not_Call_base_In_This_Method ();
		}
		
		[Export ("onAppOpenAttributionFailure:")]
		[CompilerGenerated]
		public virtual void OnAppOpenAttributionFailure (NSError error)
		{
			throw new You_Should_Not_Call_base_In_This_Method ();
		}
		
		[Export ("onConversionDataReceived:")]
		[CompilerGenerated]
		public virtual void OnConversionDataReceived (NSDictionary installData)
		{
			throw new You_Should_Not_Call_base_In_This_Method ();
		}
		
		[Export ("onConversionDataRequestFailure:")]
		[CompilerGenerated]
		public virtual void OnConversionDataRequestFailure (NSError error)
		{
			throw new You_Should_Not_Call_base_In_This_Method ();
		}
		
	} /* class AppsFlyerTrackerDelegate */
}
