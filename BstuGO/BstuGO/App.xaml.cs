using BstuGO.views;
using System;
using Xamarin.Forms;
using Xamarin.Essentials;
using Xamarin.Forms.Xaml;


namespace BstuGO
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            System.Net.ServicePointManager.ServerCertificateValidationCallback += (sender, certificate, chain, sslPolicyErrors) => true;
            MainPage = new NavigationPage(new LoginPage());
        }
     
        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
