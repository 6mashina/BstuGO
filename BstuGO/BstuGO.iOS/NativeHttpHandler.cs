using BstuGO.iOS;
using Foundation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using UIKit;

[assembly: Xamarin.Forms.Dependency(typeof(NativeHttpHandler))]
namespace BstuGO.iOS
{
    public class NativeHttpHandler : INativeHttpHandler
    {
        public HttpClientHandler GetNativeHandler()
        {
            return new HttpClientHandler();
        }
    }
}