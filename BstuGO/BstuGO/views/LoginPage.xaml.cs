using BstuGO.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;


namespace BstuGO.views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LoginPage : ContentPage
	{
		DBServices services = new DBServices();
		
		public LoginPage ()
		{
			InitializeComponent ();
            
			bool HasKey = Preferences.ContainsKey("token");
		    ///Preferences.Remove("token"); //для проверки регистрации и логина
			if (HasKey)
			{
				string token = Preferences.Get("token","");
				if (!string.IsNullOrEmpty(token))
                    
				{
					Navigation.PushModalAsync( new NavigationPage(new MainPage()));
				}
				
			}

		}

        private async void BtnSignIN_Clicked(object sender, EventArgs e)
        {

			try
			{
                string email = UsernameEntry.Text;
                string password = PasswordEntry.Text;
                string token = await services.SignIn(email, password);
                if (!string.IsNullOrEmpty(token))
                {
                    Preferences.Set("token", token);
                    Preferences.Set("email", email);

                    await Navigation.PushModalAsync(new NavigationPage(new MainPage()));
                }
                else
                {
                    await DisplayAlert("Sign in", "Failed", "OK");
                }
            }
            catch(Exception ex)
			{
				if (ex.Message.Contains("INVALID_EMAIL"))
				{
					await DisplayAlert("Авторизация", "Неправильный email (email@mail.ru)", "ok");
				}else if (ex.Message.Contains("MISSING_PASSWORD"))
				{
					await DisplayAlert("Авторизация", "Введите пароль", "ok");
				}
                else if (ex.Message.Contains("EMAIL_NOT_FOUND"))
                {
                    await DisplayAlert("Авторизация", "Данный email не найден", "ok");
                }
                else if (ex.Message.Contains("INVALID_LOGIN_CREDENTIALS"))
                {
                    await DisplayAlert("Авторизация", "Неверный логин либо пароль", "ok");
                }
                else
				{
                    await DisplayAlert("Авторизация", ex.Message, "ok");
                }
			}
			
        }
        private async void AddRegisterPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegisterPage());
        }
    }
}