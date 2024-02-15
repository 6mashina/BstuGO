using BstuGO.models;
using BstuGO.services;
using BstuGO.views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BstuGO
{
    public partial class MainPage : ContentPage
    {
        DBServices dBServices = new DBServices();
        public MainPage()
        {
            InitializeComponent();

        }

        private async void News_Button(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new NewsPage());
        }

        private async void Schedule_Class_Button(object sender, EventArgs e)
        {
            /*System.Console.WriteLine(await dBServices.AddUserAsync("sasha"));
             await dBServices.GetHelloMessageAsync();*/

            User user = new User
            {
                Email = "aaasdggda",
                Course = "1",
                Faculty = "asdads",
                FirstName = "asda",
                GradebookNumber = "1",
                Specialization = "1",
                LastName = "1",
                Password = "1asdfasdf",
                Role = "1",
                Gender = "1"
              
            };
            await dBServices.AddUser(user);
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {

        }

        private async void Profile_Button(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new NewsPage());
        }

        private async void Maps_Button_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Maps());
        }
    }
}
