using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using System.Text.Json;


using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using Firebase.Database.Query;
using Firebase.Auth;
using Xamarin.Essentials;
using System.Security.Cryptography;
using Xamarin.Forms.PlatformConfiguration;


namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfileChangePage : ContentPage
    {
        FirebaseClient firebase = new FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/");

        public ProfileChangePage()
        {
            InitializeComponent();
        }


        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {


                // Получение UID текущего пользователя
                string uid = UserInfoGlobal.Instance.Uid;

                // Получение информации о пользователе из Firebase
                var user = await firebase.Child("Users").Child(UserInfoGlobal.Instance.Uid).OnceSingleAsync<UserInfoGlobal>();

                // Вывод имени пользователя на страницу
                //userNameEntry.Text = user.UserName;
                firstNameEntry.Text = user.FirstName;
                lastNameEntry.Text = user.LastName;
                numberEntry.Text = user.Record_number;
                genderEntry.Text =  user.Gender;
                statusEntry.Text =  user.Status;
                facultyPicker.SelectedItem =  user.Faculry;
                specialityPicker.SelectedItem = user.Speciality;
                coursePicker.SelectedItem = user.Course;
            }
            catch (Exception ex)
            {
                // Обработка ошибок
                Console.WriteLine("Ошибка при загрузке информации о пользователе: " + ex.Message);
            }

        }
        private async void ChangeClicked(object sender, EventArgs e)
        {
            try
            {
                // Получение UID текущего пользователя
                string uid = UserInfoGlobal.Instance.Uid;
                FirebaseClient firebaseClient = new FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/");

                var existingValue = await firebaseClient
                    .Child("Users")
                    .Child(uid)
                    .OnceSingleAsync<UserInfoGlobal>();

                //existingValue.UserName= userNameEntry.Text;
                existingValue.FirstName = firstNameEntry.Text;
                existingValue.LastName = lastNameEntry.Text;
                existingValue.Record_number = numberEntry.Text;
                existingValue.Gender = genderEntry.Text;
                existingValue.Status = statusEntry.Text;
                existingValue.Faculry = facultyPicker.SelectedItem as string;
                existingValue.Speciality = specialityPicker.SelectedItem as string;
                existingValue.Course = coursePicker.SelectedItem as string;
                await firebase
                    .Child("Users")
                    .Child(uid)
                    .PutAsync(existingValue);

                await DisplayAlert("Изменено", "Ваши данные успешно изменены", "OK");

                OnAppearing();

            }
            catch (Exception ex)
            {
                // Обработка ошибки
                Console.WriteLine($"Ошибка при обновлении значения поля FirstName: {ex.Message}");
            }
        }
    }
}