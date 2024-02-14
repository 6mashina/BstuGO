using Firebase.Auth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Forms.Platform;



namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private async void LoginButton_Clicked(object sender, EventArgs e)
        {


            if (string.IsNullOrEmpty(EmailEntry.Text) || string.IsNullOrEmpty(PasswordEntry.Text))
            {
                // Показать сообщение об ошибке или выполнить другие операции обработки
                DisplayAlert("Ошибка", "Пожалуйста, введите Email и пароль.", "OK");
                return;
            }
            else
            {
                try
                {
                    string email = EmailEntry.Text.Trim();
                    string password = PasswordEntry.Text;

                    var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                    var authResult = await authProvider.SignInWithEmailAndPasswordAsync(email, password);

                    var userId = authResult.User.LocalId;
                    UserInfoGlobal.Instance.CurUser = authResult;
                    UserInfoGlobal.Instance.idToken = authResult.FirebaseToken;
                    UserInfoGlobal.Instance.Uid = userId;

                    Application.Current.MainPage = new NavigationPage(new MainPage());

                }
                catch (Exception ex)
                {


                    string errorMessage = "Неправильный пароль или Email";

                    if (ex.Message.Contains("CONNECTION_FAILED"))
                    {
                        errorMessage = "Ошибка соединения";
                    }

                    await DisplayAlert("Ошибка", errorMessage, "OK");

                }
            }

           

        }




        private async void LoginButton_Clicked_2(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new MainPage());
        }

        private async void AddRegisterPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegisterPage());
        }

        private async void forgotPasClicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new ResetPasswordPage());
        }


    }
}