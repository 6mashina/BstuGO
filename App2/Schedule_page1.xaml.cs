using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Schedule_page1 : ContentPage
    {
        public Schedule_page1()
        {
            InitializeComponent();
        }
        private async void AddSchedule_students_page(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Schedaule_students_page());
        }
    }
}