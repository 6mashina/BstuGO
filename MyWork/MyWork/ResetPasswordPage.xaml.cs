using Firebase.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using FirebaseAdmin;
using Google.Apis.Auth.OAuth2;



namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ResetPasswordPage : ContentPage
    {
        public ResetPasswordPage()
        {
            InitializeComponent();
        }




        private async void ResetPasswordButton_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(emailEntry.Text))
            {
                await DisplayAlert("Восстановление", "Введите Email", "ok");
            }
            else
            {
                string email = emailEntry.Text.Trim();
                ResetPassword(email);
            }

        }

        private async void BackClicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }


        private async void ResetPassword(string email)
        {

            //var user = await authProvider.GetUserAsync(email);
            try
            {

                var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                await authProvider.SendPasswordResetEmailAsync(email);
                // Ссылка для сброса пароля отправлена на электронную почту пользователя
                await DisplayAlert("Success", "Password reset email sent.", "OK");
            }
            catch (FirebaseAuthException ex)
            {
                if (ex.Message.Contains("INVALID_EMAIL"))
                {

                    await DisplayAlert("Ошибка", "Неверный формат электронной почты", "OK");

                }
                else
                {
                    await DisplayAlert("Error", "Ошибка восстановления пароля", "OK");
                }
            }
        }
    }
}