using BstuGO.iOS;
using Foundation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UIKit;
using Xamarin.Forms;


[assembly: Dependency(typeof(BaseUrl_iOS))]
namespace BstuGO.iOS
{
    public class BaseUrl_iOS
    {
        public string Get()
        {
            return NSBundle.MainBundle.BundlePath;
        }
    }
}