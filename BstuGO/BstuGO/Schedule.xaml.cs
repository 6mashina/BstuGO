using BstuGO.models;
using BstuGO.services;
using BstuGO.views;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Plugin.FilePicker;
using Plugin.FilePicker.Abstractions;
using Xamarin.Forms.Xaml;
using Plugin.XamarinFormsSaveOpenPDFPackage;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Picker = Xamarin.Forms.Picker;

namespace BstuGO
{
    [XamlCompilation(XamlCompilationOptions.Compile)]

    public partial class Schedule : ContentPage
    {
        Picker facultyPicker;
        Picker coursePicker;
        Label header;
        Label header2;
        Button buttonGetShedule;
        string pickFaculty = "";
        string pickCourse = "";
        
       
        public Schedule()
        {
           
            InitializeComponent();


            header = new Label
            {
                Text = "Выберите факультет",
                FontSize = Device.GetNamedSize(NamedSize.Large, typeof(Label))
            };

            header2 = new Label
            {
                Text = "Выберите курс",
                FontSize = Device.GetNamedSize(NamedSize.Large, typeof(Label))
            };


            facultyPicker = new Picker
            {
                Title = "Факультеты"
            };
            facultyPicker.Items.Add("ФИСЕ");
            facultyPicker.Items.Add("ФЭИС");
            facultyPicker.Items.Add("СФ");
            facultyPicker.Items.Add("ЭФ");
            facultyPicker.Items.Add("МСФ");

            facultyPicker.SelectedIndexChanged += picker_SelectedIndexChanged;


            coursePicker = new Picker
            {
                Title = "Курс"
            };

            coursePicker.Items.Add("1");
            coursePicker.Items.Add("2");
            coursePicker.Items.Add("3");
            coursePicker.Items.Add("4");

            coursePicker.SelectedIndexChanged += picker2_SelectedIndexChanged;


            buttonGetShedule = new Button
            {
                Text = "Расписание"

            };
            buttonGetShedule.Clicked += LoadPdfButton_Clicked;
               
            this.Content = new StackLayout { Children = { header, facultyPicker, header2, coursePicker, buttonGetShedule } };
        }


        void picker_SelectedIndexChanged(object sender, EventArgs e)
        {
            pickFaculty = facultyPicker.Items[facultyPicker.SelectedIndex];
            
        }
        void picker2_SelectedIndexChanged(object sender, EventArgs e)
        {
            pickCourse = coursePicker.Items[coursePicker.SelectedIndex];

        }
        public string getCourse()
        {
            string course = "";
            switch (pickCourse)
            {
                case "1":
                    course = "1.pdf";
                    break;
                case "2":
                    course = "2.pdf";
                    break;
                case "3":
                    course = "3.pdf";
                    break;
                case "4":
                    course = "4.pdf";
                    break;
                case "5":
                    course = "5.pdf";
                    break;
            }
            return course;

        }

        public string getFaculty()
        {
            string faculty = "";
            switch (pickFaculty)
            {
                case "ФИСЭ":
                    faculty = "fise";
                    break;
                case "ФЭИС":
                    faculty = "feis";
                    break;
                case "СФ":
                    faculty = "sf";
                    break;
                case "ЭФ":
                    faculty = "ef";
                    break;
                case "МСФ":
                    faculty = "msf";
                    break;
            }
           return faculty;
           
        }
        private async void LoadPdfButton_Clicked(object sender, EventArgs e)
        {
            if (getFaculty() != "" && getCourse() != "")
            {
                var httpClient = new HttpClient(ServerConn.GetInsecureHandler());
                var stream = await httpClient.GetStreamAsync($"https://194.87.237.231/{getFaculty() + getCourse()}");
                using (var memoryStream = new MemoryStream())
                {
                    await stream.CopyToAsync(memoryStream);
                    await CrossXamarinFormsSaveOpenPDFPackage.Current.SaveAndView(getFaculty() + getCourse(), "application/pdf", memoryStream, PDFOpenContext.InApp);
                }
            }
          
        }
        
    }
}
