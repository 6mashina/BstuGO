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
    public partial class ProfilePage : ContentPage
    {

        FirebaseClient firebase = new FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/");
        public ProfilePage()
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
                //userNameLabel.Text = user.UserName;
                firstNameLabel.Text = user.FirstName;
                lastNameLabel.Text = user.LastName;
                emailLabel.Text = "Email: " + user.Email;
                numberLabel.Text = "Зачетка: " + user.Record_number;
                genderLabel.Text = "Пол: " + user.Gender;
                statusLabel.Text = "Статус: " + user.Status;
                facultyLabel.Text = "Факультет: " + user.Faculry;
                specialityLabel.Text = "Специальность:" + user.Speciality;
                kyrsLabel.Text = "Курс: " + user.Course;
            }
            catch (Exception ex)
            {
                // Обработка ошибок
                Console.WriteLine("Ошибка при загрузке информации о пользователе: " + ex.Message);
            }

        }

        private async void ExitAccount(object sender, EventArgs e)
        {
            bool consent = await DisplayAlert("Выйти", "Вы уверены что хотите выйти из аккаунт?", "Согласен", "Отказаться");

            if (consent)
            {
                // Проверяем текущую платформу
                UserInfoGlobal.Instance.Uid = null;
                UserInfoGlobal.Instance.idToken = null;
                UserInfoGlobal.Instance.CurUser = null;

                Application.Current.MainPage = new NavigationPage(new LoginPage());
            }
        }

        private async void DeleteAccount(object sender, EventArgs e)
        {

            bool consent = await DisplayAlert("Удалить аккаунт", "Вы уверены что хотите удалить аккаунт?", "Согласен", "Отказаться");

           // Удаление Email  и всех данных  
           if (consent)
            {

                FirebaseAuthProvider authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc"));
                FirebaseClient firebaseClient = new FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/");

                string uid = UserInfoGlobal.Instance.Uid;
                var databaseUrl = "https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/";
                string apiKey = "AIzaSyC7BQL5bgVzcRcv7duvYGJe5UWENPlefDc";
                string url = $"https://identitytoolkit.googleapis.com/v1/accounts:delete?key={apiKey}";

                using (HttpClient client = new HttpClient())
                {
                    var data = new
                    {
                        idToken = UserInfoGlobal.Instance.idToken,
                        email = UserInfoGlobal.Instance.Email
                    };

                    var json = JsonSerializer.Serialize(data);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");

                    var response = await client.PostAsync(url, content);

                    // Удаление 
                    var userReference = new FirebaseClient(databaseUrl)
                        .Child("Users")
                        .Child(uid)
                        .DeleteAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        await DisplayAlert("Удаление аккаунта", "Аккаунт успешно удален", "OK");
                        UserInfoGlobal.Instance.Uid = null;
                        UserInfoGlobal.Instance.idToken = null;
                        UserInfoGlobal.Instance.CurUser = null;

                        // Меняем корневую  главную страницу 
                        Application.Current.MainPage = new NavigationPage(new LoginPage());
                    }
                    else
                    {
                        await DisplayAlert("Ошибка", "Не удалось удалить аккаунт", "OK");
                    }
                }
            }
        }

        private async void ChangeClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfileChangePage());
        }

    }
}