using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App2
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            var page = new NavigationPage( new MainPage());
            page.BarBackgroundColor = Color.Red;
            MainPage = page;
        }

        protected override void OnStart()
        {
            // Проверка, нужно ли открывать страницу авторизации при запуске приложения
            if (!IsLoggedIn())
            {
                MainPage.Navigation.PushModalAsync(new NavigationPage(new LoginPage()));
            }
        }

        private bool IsLoggedIn()
        {
            // Ваша логика проверки состояния авторизации
            return false;
        }
        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
