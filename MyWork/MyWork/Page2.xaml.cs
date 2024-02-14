using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using Firebase.Database.Query;
using Firebase.Auth;

namespace MyWork
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Page2 : ContentPage
    {
        FirebaseClient firebase = new FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/");

        public Page2()
        {
            InitializeComponent();

            LoadUserInfo();

        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

        }

        private async Task LoadUserInfo()
        {
            try
            {


                // Получение UID текущего пользователя
                string uid = UserInfoGlobal.Instance.Uid;

                // Получение информации о пользователе из Firebase
                var user = await firebase.Child("users").Child(uid).OnceSingleAsync<User>();

                // Вывод имени пользователя на страницу
                labelWelcome.Text = "Имя пользователя: " + user.FirstName;
            }
            catch (Exception ex)
            {
                // Обработка ошибок
                Console.WriteLine("Ошибка при загрузке информации о пользователе: " + ex.Message);
            }
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            LoadUserInfo();
        }
    }
}
