using BstuGO.models;
using BstuGO.services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO.views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]

	public partial class RegisterPage : ContentPage
	{
		DBServices services = new DBServices();
        string coursePicker = "1";
		public RegisterPage ()
		{
        
			InitializeComponent ();
		}


        private async void AddRegisterPage_2(object sender, EventArgs e)
        {
            User user = new User();
            if (string.IsNullOrEmpty(FirstNameEntry.Text) || string.IsNullOrEmpty(LastNameEntry.Text) //|| string.IsNullOrEmpty(UserNameEntry.Text)
                || (maleGenger.IsChecked == false && femaleGenger.IsChecked == false) || (teacherStatus.IsChecked == false && studentStatus.IsChecked == false))
            {
                await DisplayAlert("Регистрация", "Заполните все данные", "Ok");
                CheckEmptyFields();
            }
            else
            {
                user.FirstName = FirstNameEntry.Text.Trim();
                user.LastName = LastNameEntry.Text.Trim();
             
                if (maleGenger.IsChecked)
                {
                    user.Gender = "male";
                }
                else
                {
                    user.Gender = "female";
                }

                if (teacherStatus.IsChecked)
                {
                    user.Role = "teacher";
                }
                else
                {
                    user.Role = "student";
                }

                await Navigation.PushAsync(new RegisterPage_2(user));
            }

        }
        private void CheckEmptyFields()
        {
            if (string.IsNullOrEmpty(FirstNameEntry.Text))
            {
                FirstNameEntry.BorderColor = Color.Red;
                label_1.IsVisible = true;

            }
            else
            {
                label_1.IsVisible = false;
            }

            if (string.IsNullOrEmpty(LastNameEntry.Text))
            {
                LastNameEntry.BorderColor = Color.Red;
                label_2.IsVisible = true;
            }
            else
            {
                label_2.IsVisible = false;
            }

            /*            if (string.IsNullOrEmpty(UserNameEntry.Text))
                        {
                            UserNameEntry.BorderColor = Color.Red;
                            label_3.IsVisible = true;
                        }
                        else
                        {
                            label_3.IsVisible = false;
                        }*/

            if ((maleGenger.IsChecked == false && femaleGenger.IsChecked == false))
            {
                label_4.IsVisible = true;
            }
            else
            {
                label_4.IsVisible = false;
            }

            if ((teacherStatus.IsChecked == false && studentStatus.IsChecked == false))
            {
                label_5.IsVisible = true;
            }
            else
            {
                label_5.IsVisible = false;
            }
        }
      
        private async void Label_Tapped(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }
        private async void backToLoginPage(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }


    }
}