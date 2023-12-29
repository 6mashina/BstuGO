using App2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App2
{
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        // Ваша логика страницы LoginPage

        private void LoginButton_Clicked(object sender, EventArgs e)
        {
            // Ваша логика для обработки события нажатия на кнопку входа
            string username = UsernameEntry.Text;
            string password = PasswordEntry.Text;

            if (CheckCredentials(username, password))
            {
                // Если учетные данные верны, перейти на главную страницу
                MainPage mainPage = new MainPage();
                NavigationPage.SetHasNavigationBar(mainPage, false);
                Navigation.PushAsync(mainPage);
            }
            else
            {
                // Если учетные данные неверны, показать сообщение об ошибке
                DisplayAlert("Ошибка", "Неверное имя пользователя или пароль", "OK");
            }
        }

        // Метод для проверки учетных данных
        private bool CheckCredentials(string username, string password)
        {
            // Ваша логика для проверки учетных данных
            // Здесь вы можете выполнить аутентификацию с помощью API, базы данных и т.д.
            return (username == "admin" && password == "password");
        }

        private async void AddRegisterPage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegistrPage());
        }
    }
}