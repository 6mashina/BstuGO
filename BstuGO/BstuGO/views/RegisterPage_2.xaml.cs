using BstuGO.models;
using BstuGO.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO.views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegisterPage_2 : ContentPage
    {
        User user;
        DBServices services = new DBServices();
        public RegisterPage_2(User user)
        {
            this.user = user;
            InitializeComponent();
        }
        private void showPassword(object sender, CheckedChangedEventArgs e)
        {
            if (e.Value)
            {
                repeatPasswordEntry.IsPassword = false;
                PasswordEntry.IsPassword = false;
            }
            else
            {
                repeatPasswordEntry.IsPassword = true;
                PasswordEntry.IsPassword = true;
            }
        }
        private void CheckEmptyFields()
        {
            if (string.IsNullOrEmpty(Record_numberEntry.Text))
            {
                Record_numberEntry.BorderColor = Color.Red;
                label_recordNumber.IsVisible = true;

            }
            else
            {
                label_recordNumber.IsVisible = false;
            }

            if (facultyPicker.SelectedItem == null)
            {
                facultyPicker.BorderColor = Color.Red;
                label_faculty.IsVisible = true;
            }
            else
            {
                label_faculty.IsVisible = false;
            }

            if (coursePicker.SelectedItem == null)
            {
                coursePicker.BorderColor = Color.Red;
                label_course.IsVisible = true;
            }
            else
            {
                label_course.IsVisible = false;
            }

            if (string.IsNullOrEmpty(UserEmailEntry.Text))
            {
                UserEmailEntry.BorderColor = Color.Red;
                label_email.IsVisible = true;
            }
            else
            {
                label_email.IsVisible = false;
            }

            if (string.IsNullOrEmpty(PasswordEntry.Text))
            {
                PasswordEntry.BorderColor = Color.Red;
                label_password.IsVisible = true;
            }
            else
            {
                label_password.IsVisible = false;
            }


            if (string.IsNullOrEmpty(repeatPasswordEntry.Text))
            {
                repeatPasswordEntry.BorderColor = Color.Red;
                label_repeatPass.IsVisible = true;
            }
            else
            {
                label_repeatPass.IsVisible = false;
            }

            if (specialityPicker.SelectedItem == null)
            {
                specialityPicker.BorderColor = Color.Red;
                label_speciality.IsVisible = true;
            }
            else
            {
                label_speciality.IsVisible = false;
            }

        }


        private async void toRegister(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(Record_numberEntry.Text) || facultyPicker.SelectedItem == null || coursePicker.SelectedItem == null
                || string.IsNullOrEmpty(UserEmailEntry.Text) || string.IsNullOrEmpty(PasswordEntry.Text) || string.IsNullOrEmpty(repeatPasswordEntry.Text))
            {
                await DisplayAlert("Регистрация", "Заполните все данные", "Ok");

                CheckEmptyFields();
                scrollView.ForceLayout();
            }
            else
            {
                Regex validatePassword = new Regex("^(?=.*?[A-Z])(?=.*?[0-9]).{8,}$");
                string email  = UserEmailEntry.Text.Trim();
                Regex validateEmailRegex = new Regex("^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$");
                bool isEmailMatch = validateEmailRegex.IsMatch(email);
                if (!isEmailMatch)
                {
                    await DisplayAlert("Регистрация", "Неверный email", "Ok");
                    return;
                }
                user.Email = email;
                string password = PasswordEntry.Text;
                bool isPasswordMatch = validatePassword.IsMatch(password);
                if (!isPasswordMatch)
                {
                    await DisplayAlert("Регистрация", "Пароль должен содержать минимум 8 символов, одну заглавную английскую букву и одну цифру", "Ok");
                    return;
                }
                string repeatPassword = repeatPasswordEntry.Text;
                if (password != repeatPassword)
                {
                    await DisplayAlert("Регистрация", "Пароли не совпадают", "Ok");
                    return;
                }

                user.Password = password;
                user.GradebookNumber = Record_numberEntry.Text;
                user.Faculty = facultyPicker.SelectedItem as string;
                user.Course = coursePicker.SelectedItem as string;
                user.Specialization = specialityPicker.SelectedItem as string;

                string result = await services.AddUser(user);

                if (result.Contains("Email is exists"))
                {
                    await DisplayAlert("Регистрация", "Данный email уже зарегистрован", "OK");
                }
                else if (result.Contains("User added successfully"))
                {
                    await DisplayAlert("Success", "Registration successful.", "OK");
                    await Navigation.PopToRootAsync();
                }
                else
                {
                    await DisplayAlert("Регистрация", result, "OK");
                }               

            }
        }

        private void facultyPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedFaculty = facultyPicker.SelectedItem as string;
            switch (selectedFaculty)
            {
                case "Электронно-информационных систем":
                    specialityPicker.ItemsSource = new string[]
                    {
                            "Программное обеспечение",
                            "Искусственный интеллект",
                            "Вычислительные машины, системы и сети",
                            "Промышленная электроника",
                            "Мобильные системы",
                            "Автоматизированные системы"
                    };
                    break;
                case "Строительный":
                    specialityPicker.ItemsSource = new string[]
                    {
                        "Строительство зданий и сооружений",
                        "Экспертиза и управление недвижимостью",
                        "Архитектура",
                        "Архитектурный дизайн"
                    };
                    break;

                case "Машиностроительный":
                    specialityPicker.ItemsSource = new string[]
                    {
                        "Технология машиностроения, металлорежущие станки и инструменты",
                        "Эксплуатация наземных транспортных и технологических машин и комплексов",
                        "Технологические машины и оборудование",
                        "Производство изделий на основе трехмерных технологий",
                        "Автоматизация технологических процессов и производств"
                    };
                    break;

                case "Инженерных систем и экологии":
                    specialityPicker.ItemsSource = new string[]
                    {
                        "Инженерные сети, оборудование зданий и сооружений",
                        "Природоохранная деятельность",
                        "Мелиорация и водное хозяйство"
                    };
                    break;

                case "Экономический":
                    specialityPicker.ItemsSource = new string[]
                    {
                        "Финансы и кредит",
                        "Экономика и управление",
                        "Бухгалтерский учет, анализ и аудит",
                        "Маркетинг",
                        "Логистика",
                        "Электронная экономика",
                        "Таможенное дело"
                    };
                    break;

                default:
                    specialityPicker.ItemsSource = new string[] { };
                    break;
            }
        }
    }
}