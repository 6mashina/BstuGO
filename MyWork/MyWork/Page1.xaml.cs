using Bometh.FirebaseDatabase;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Page1 : ContentPage
    {
        public Page1()
        {
            InitializeComponent();
        }

        private async void butRegister_Clicked(object sender, EventArgs e)
        {
            string email = registrEmail.Text;
            string password = registrPassword.Text;
            string repeatPassword = repPassword.Text;

            if (password == repeatPassword)
            {
                try
                {
                    var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                    var authResult = await authProvider.CreateUserWithEmailAndPasswordAsync(email, password);

                    // Получить уникальный идентификатор нового пользователя
                    var userId = authResult.User.LocalId;

                    // Получить информацию из элементов Entry
                    string firstName = entryFirstName.Text;
                    string lastName = entryLastName.Text;


                    // Получить URL вашей базы данных Firebase Realtime Database
                    var databaseUrl = "https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/"; // Замените на URL вашей базы данных

                    // Создать ссылку на узел пользователя с использованием URL
                    var userReference = new FirebaseClient(databaseUrl)
                        .Child("users")
                        .Child(userId);


                    // Сохранить информацию о пользователе в базе данных
                    await userReference.PutAsync(UserInfoGlobal.Instance);

                    // Пользователь успешно зарегистрирован
                    await DisplayAlert("Success", "Registration successful.", "OK");


                }
                catch (FirebaseAuthException ex)
                {
                    // Обработка ошибок регистрации
                    await DisplayAlert("Error", ex.Message, "OK");
                }
            }
            else
            {
                await DisplayAlert("Error", "Passwords do not match.", "OK");
            }
        }

        private async void butEnter_Clicked(object sender, EventArgs e)
        {
            string email = enrtyEmail.Text;
            string password = enrtyPassword.Text;

            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                var authResult = await authProvider.SignInWithEmailAndPasswordAsync(email, password);

                // Получить уникальный идентификатор нового пользователя
                var userId = authResult.User.LocalId;
                UserInfoGlobal.Instance.Uid = userId;
                // Успешный вход
                await DisplayAlert("Success", "Login successful.", "OK");


            }
            catch (FirebaseAuthException ex)
            {
                // Обработка ошибок входа
                await DisplayAlert("Error", ex.Message, "OK");
            }

        }

        private void ResetPasswordButton_Clicked(object sender, EventArgs e)
        {
            string email = emailEntry.Text;

            // Вызов метода для сброса пароля
            ResetPassword(email);
        }

        private async void ResetPassword(string email)
        {
            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                await authProvider.SendPasswordResetEmailAsync(email);

                // Ссылка для сброса пароля отправлена на электронную почту пользователя
                await DisplayAlert("Success", "Password reset email sent.", "OK");
            }
            catch (FirebaseAuthException ex)
            {
                // Обработка ошибок сброса пароля
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }


        private async void butenterCabiner(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Page2());
        }
    }
}