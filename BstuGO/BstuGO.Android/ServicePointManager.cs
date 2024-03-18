using System.Net;
using Android.App;
using Android.OS;
using Xamarin.Forms;

[assembly: Dependency(typeof(BstuGO.Droid.CustomServicePointManager))]
namespace BstuGO.Droid
{
    public class CustomServicePointManager : ICustomServicePointManager
    {
        public void Initialize()
        {
            ServicePointManager.ServerCertificateValidationCallback += (sender, certificate, chain, sslPolicyErrors) =>
            {
                
                
                return true;
            };
        }
    }
}
