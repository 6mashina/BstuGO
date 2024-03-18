using BstuGO.models;
using BstuGO.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO.views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfilePage : ContentPage
    {

        DBServices services = new DBServices();

        public ProfilePage()
        {
            InitializeComponent();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                string email = Preferences.Get("email", "");
                User user = await services.getUser(email);
                firstNameLabel.Text = user.FirstName;
                lastNameLabel.Text = user.LastName;
                emailLabel.Text = "Email: " + user.Email;
                numberLabel.Text = "Зачетка: " + user.GradebookNumber;
                genderLabel.Text = "Пол: " + user.Gender;
                statusLabel.Text = "Статус: " + user.Role;
                facultyLabel.Text = "Факультет: " + user.Faculty;
                specialityLabel.Text = "Специальность:" + user.Specialization;
                kyrsLabel.Text = "Курс: " + user.Course;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ошибка при загрузке информации о пользователе: " + ex.Message);
            }

        }

        private async void ExitAccount(object sender, EventArgs e)
        {
            bool consent = await DisplayAlert("Выйти", "Вы уверены что хотите выйти из аккаунт?", "Согласен", "Отказаться");

            if (consent)
            {
                Preferences.Remove("token");
                Preferences.Remove("email");
                Application.Current.MainPage = new NavigationPage(new LoginPage());
            }
        }

        private async void DeleteAccount(object sender, EventArgs e)
        {

            bool consent = await DisplayAlert("Удалить аккаунт", "Вы уверены что хотите удалить аккаунт?", "Согласен", "Отказаться");

            // Удаление Email  и всех данных  
            if (consent)
            {
                string email = Preferences.Get("email", "");
                string response = await services.deleteUser(email);
                // Удаление 

                if (response.Contains("User deleted successfully"))
                {
                    await DisplayAlert("Удаление аккаунта", "Аккаунт успешно удален", "OK");
                    Preferences.Remove("token");
                    Preferences.Remove("email");
                    Application.Current.MainPage = new NavigationPage(new LoginPage());
                }
                else
                {
                    await DisplayAlert("Ошибка", "Не удалось удалить аккаунт", "OK");
                }
            }
        }

        private async void ChangeClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfileChangePage());
        }

    }
}

