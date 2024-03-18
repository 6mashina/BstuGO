using BstuGO.services;
using Rg.Plugins.Popup.Services;
using SkiaSharp;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Forms.Xaml;

namespace BstuGO
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PopUp : Rg.Plugins.Popup.Pages.PopupPage
    {
        public delegate void ButtonClickedHandler(object sender, EventArgs e);
       

        public event EventHandler<string> ValueSelectedFaculty;
        public event EventHandler<SKBitmap> ValueBitmap;
        public event EventHandler<string> ValueSelectedCourse;

        DBServices services;
        
        public PopUp()
        {

            InitializeComponent();

            facultyPicker.Items.Add("ФИСЕ");
            facultyPicker.Items.Add("ФЭИС");
            facultyPicker.Items.Add("СФ");
            facultyPicker.Items.Add("ЭФ");
            facultyPicker.Items.Add("МСФ");


            

            facultyPicker.SelectedIndexChanged += OnTableFacultySelectedIndexChanged; 
            coursePicker.SelectedIndexChanged += OnTableCourseSelectedIndexChanged;

        }
        private void OnTableFacultySelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedOption1 = facultyPicker.SelectedItem as string;

            switch (selectedOption1) {
                case "ФЭИС":
                    coursePicker.ItemsSource = new string[] { "1", "2", "3", "4" };
                    break;
                case "ФИСЕ":
                    coursePicker.ItemsSource = new string[] { "1","2","3","4","4(ТВ)"}; 
                    break;

                case "МСФ":
                    coursePicker.ItemsSource = new string[] { "1","2","3","4","4(ТО)"};
                    break;
                case "СФ":
                    coursePicker.ItemsSource = new string[] { "1-4(А,АД)", "1-3(Н,Д,ДИ,СТ)", "4(Н,СТ)", "1-3(П)" };
                    break;
                case "ЭФ":
                    coursePicker.ItemsSource = new string[] { "1", "2", "3", "3(ЭМ,ЭЛБ)","4(ЭМ,ЭЛБ)"};
                    break;
            }

            ValueSelectedFaculty?.Invoke(this, selectedOption1);
        }

        private void OnTableCourseSelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedOption2 = coursePicker.SelectedItem as string;
            ValueSelectedCourse?.Invoke(this, selectedOption2);
        }

        private async void OnButtonClicked(object sender, EventArgs e)
        {
            Console.WriteLine(facultyPicker.SelectedItem.ToString() + coursePicker.SelectedItem.ToString());
            services = new DBServices();
            SKBitmap bitmap =  await services.getImage($"/{facultyPicker.SelectedItem.ToString() + coursePicker.SelectedItem.ToString()}.png");
            ValueBitmap?.Invoke(this, bitmap);
            await PopupNavigation.Instance.PopAsync();
        }
        private void ClosePage(object sender, EventArgs e)
        {
            PopupNavigation.Instance.PopAsync();
        }
    }
}