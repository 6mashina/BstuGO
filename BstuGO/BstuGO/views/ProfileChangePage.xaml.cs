using BstuGO.models;
using BstuGO.services;

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
                user.Email = Preferences.Get("email", "");
                user.FirstName = firstNameEntry.Text;
                user.LastName = lastNameEntry.Text;
                user.GradebookNumber = numberEntry.Text;
                user.Gender = genderEntry.Text;
                user.Role = statusEntry.Text;
                user.Faculty = facultyPicker.SelectedItem as string;
                user.Specialization = specialityPicker.SelectedItem as string;
                user.Course = coursePicker.SelectedItem as string;

                string response = await services.uploadUser(user);
                if (response.Contains("DATA_UPDATE"))
                {
                    await DisplayAlert("Изменено", "Ваши данные успешно изменены", "OK");
                }
                else
                {
                    await DisplayAlert("Ошибка", "Произошла ошибка", "OK");
                }
          
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