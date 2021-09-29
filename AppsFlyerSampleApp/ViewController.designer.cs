// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace AppsFlyerSampleApp
{
    [Register ("ViewController")]
    partial class ViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton eventButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        public UIKit.UITextView gcdTextView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        public UIKit.UITextView deepLinkTextView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton shareButton { get; set; }

        [Action ("EventButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void EventButton_TouchUpInside (UIKit.UIButton sender);

        [Action ("ShareButton_TouchUpInside:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void ShareButton_TouchUpInside (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (eventButton != null) {
                eventButton.Dispose ();
                eventButton = null;
            }

            if (gcdTextView != null) {
                gcdTextView.Dispose ();
                gcdTextView = null;
            }

            if (deepLinkTextView != null) {
                deepLinkTextView.Dispose ();
                deepLinkTextView = null;
            }

            if (shareButton != null) {
                shareButton.Dispose ();
                shareButton = null;
            }
        }
    }
}