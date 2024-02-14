using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;



namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegisterPage : ContentPage
    {
        UserInfoGlobal userInfo = UserInfoGlobal.Instance;

        public RegisterPage()
        {
            InitializeComponent();
        }



        private async void AddRegisterPage_2(object sender, EventArgs e)
        {

            if(string.IsNullOrEmpty(FirstNameEntry.Text) || string.IsNullOrEmpty(LastNameEntry.Text) //|| string.IsNullOrEmpty(UserNameEntry.Text)
                || (maleGenger.IsChecked == false && femaleGenger.IsChecked == false) || (teacherStatus.IsChecked == false && studentStatus.IsChecked == false))
            {
                await DisplayAlert("Регистрация", "Заполните все данные", "Ok" );
                CheckEmptyFields();
                await Navigation.PushAsync(new RegisterPage_2()); // Удалить 
            }
            else
            {
                UserInfoGlobal.Instance.FirstName = FirstNameEntry.Text;
                UserInfoGlobal.Instance.LastName = LastNameEntry.Text;
                //UserInfoGlobal.Instance.UserName = UserNameEntry.Text;
                if (maleGenger.IsChecked)
                {
                    UserInfoGlobal.Instance.Gender = "Мужской";
                }
                else
                {
                    UserInfoGlobal.Instance.Gender = "Женский";

                }

                if (teacherStatus.IsChecked)
                {
                    UserInfoGlobal.Instance.Status = "Преподаватель"; ;

                }
                else
                {
                    UserInfoGlobal.Instance.Status = "Студент";
                }

                await Navigation.PushAsync(new RegisterPage_2());
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
        private async void backToLoginPage(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }




    }

}