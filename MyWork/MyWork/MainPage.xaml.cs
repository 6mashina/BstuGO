using Firebase.Database;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Firebase.Database;


namespace MyWork
{
    public partial class MainPage : ContentPage
    {

        //FirebaseClient firebaseClient = new Firebase.Database.FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/");
        public MainPage()
        {
            InitializeComponent();
        }

        private async void profilePage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfilePage());
        }

        private async void PageOfRegister(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Page1());
        }

        private async void ConnectDB(object sender, EventArgs e)
        {
            try
            {
                using (var firebaseClient = new FirebaseClient("https://registerdb-ea982-default-rtdb.europe-west1.firebasedatabase.app/"))
                {
                    var result = await firebaseClient.Child("test_key").OnceSingleAsync<string>();

                    if (result != null)
                    {
                        await DisplayAlert("title", result, "OK");
                    }
                }
            }
            catch (FirebaseException ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }


    }
}
