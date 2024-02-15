using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BstuGO.Droid;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;


[assembly: Xamarin.Forms.Dependency(typeof(NativeHttpHandler))]
namespace BstuGO.Droid
{
    public class NativeHttpHandler : INativeHttpHandler
    {
        public HttpClientHandler GetNativeHandler()
        {
            return new HttpClientHandler();
        }
    }
}