using BstuGO.models;
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
		    //Preferences.Remove("token"); //для проверки регистрации и логина
			if (HasKey)
			{
				string token = Preferences.Get("token","");
				if (!string.IsNullOrEmpty(token))
                    
				{
					Navigation.PushModalAsync(new MainTabbedPage(false));
				}
				
			}

		}

        private async void BtnSignIN_Clicked(object sender, EventArgs e)
        {
            string email = EmailEntry.Text.Trim();
            string password = PasswordEntry.Text;
            User user = new User
            {
                Email = email,
                Password = password,

            };
            string token = "asd";
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                await DisplayAlert("Ошибка", "Пожалуйста, введите Email и пароль.", "OK");
                return;
            }else if (!email.Contains("@"))
            {
                await DisplayAlert("Авторизация", "Неправильный email (email@mail.ru)", "ok");
            }
            else
            {
                    string result = await services.AuthUser(user);
                    if (result.Contains("Email not exists"))
                    {
                        await DisplayAlert("Авторизация", "Данный email не найден", "ok");
                    }
                    else if (result.Contains("Auth denied"))
                    {
                        await DisplayAlert("Авторизация", "Неверный пароль", "ok");
                    }else if (result.Contains("Auth confirm"))
                    {
                        if (!string.IsNullOrEmpty(token))
                        {
                            Preferences.Set("token", token);
                            Preferences.Set("email", email);

                            await Navigation.PushModalAsync(new MainTabbedPage(false));
                        }
                    }
                    else
                    {
                        await DisplayAlert("Авторизация", result, "ok");
                    }
            }                
            
			
        }
        private async void BtnSignINGhost_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new MainTabbedPage(true));
        }
        private async void AddRegisterPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegisterPage());
        }
        private async void forgotPasClicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new ResetPasswordPage());
        }

        protected override bool OnBackButtonPressed()
        {
            return true;
        }
    }
}