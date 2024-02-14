using System;
using System.Collections.Generic;
using System.Linq;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Essentials;
using Xamarin.Forms.PlatformConfiguration.TizenSpecific;

namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegisterPage_2 : ContentPage
    {
        public RegisterPage_2()
        {

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
                || string.IsNullOrEmpty(UserEmailEntry.Text) || string.IsNullOrEmpty(PasswordEntry.Text)|| string.IsNullOrEmpty(repeatPasswordEntry.Text))
            {
                await DisplayAlert("Регистрация", "Заполните все данные", "Ok");

                CheckEmptyFields();
                scrollView.ForceLayout();
            }
            else
            {

                UserInfoGlobal.Instance.Email = UserEmailEntry.Text.Trim();
                string email = UserInfoGlobal.Instance.Email;
                string password = PasswordEntry.Text;
                string repeatPassword = repeatPasswordEntry.Text;

                if (password == repeatPassword)
                {
                    try
                    {
                        var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                        var authResult = await authProvider.CreateUserWithEmailAndPasswordAsync(email, password);

                        var userId = authResult.User.LocalId;


                        UserInfoGlobal.Instance.Record_number = Record_numberEntry.Text;
                        UserInfoGlobal.Instance.Faculry = facultyPicker.SelectedItem as string;
                        UserInfoGlobal.Instance.Course = coursePicker.SelectedItem as string;
                        UserInfoGlobal.Instance.Speciality = specialityPicker.SelectedItem as string;

                        var databaseUrl = "https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/"; // Замените на URL вашей базы данных

                        var userReference = new FirebaseClient(databaseUrl)
                            .Child("Users")
                            .Child(userId);

                        await userReference.PutAsync(UserInfoGlobal.Instance);

                        await DisplayAlert("Success", "Registration successful.", "OK");

                        await Navigation.PopToRootAsync();


                    }
                    catch (Exception ex)
                    {
                        if (ex.Message.Contains("EMAIL_EXISTS"))
                        {
                            await DisplayAlert("Регистрация", "Данный email уже зарегистрован", "OK");
                        }
                        else if (ex.Message.Contains("WEAK_PASSWORD"))
                        {
                            await DisplayAlert("Регистрация", "Пароль должен быть больше или равен 6 символам", "OK");
                        }
                        else if (ex.Message.Contains("Object reference"))
                        {
                            await DisplayAlert("Регистрация", "Введите данные!", "ОК");
                        }
                        else if (ex.Message.Contains("INVALID_EMAIL"))
                        {

                                await DisplayAlert("Ошибка", "Неверный формат электронной почты", "OK");

                        }
                        else

                        {
                            await DisplayAlert("Регистрация", ex.Message, "OK");
                        }

                    }
                    
                }
                else
                {
                    await DisplayAlert("Error", "Passwords do not match.", "OK");
                }

            }


        }

    }
}