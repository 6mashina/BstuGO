using BstuGO.models;
using BstuGO.services;
using Firebase.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO.views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfileChangePage : ContentPage
    {
        DBServices services = new DBServices();
        public ProfileChangePage()
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

                firstNameEntry.Text = user.FirstName;
                lastNameEntry.Text = user.LastName;
                numberEntry.Text = user.GradebookNumber;
                genderEntry.Text = user.Gender;
                statusEntry.Text = user.Role;
                facultyPicker.SelectedItem = user.Faculty;
                specialityPicker.SelectedItem = user.Specialization;
                coursePicker.SelectedItem = user.Course;
            }
            catch (Exception ex)
            {
                
                Console.WriteLine("Ошибка при загрузке информации о пользователе: " + ex.Message);
            }

        }
        private async void ChangeClicked(object sender, EventArgs e)
        {
            try
            {
                // Получение UID текущего пользователя
                User user = new User();
              
                /*existingValue.FirstName = firstNameEntry.Text;
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
                    .PutAsync(existingValue);*/

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