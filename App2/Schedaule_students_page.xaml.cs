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
    public partial class Schedaule_students_page : ContentPage
    {
        public List<ScheduleItem> ScheduleItems { get; set; } // Свойство для установки источника данных
        public Schedaule_students_page()
        {
            InitializeComponent();

            // Получение данных расписания и установка источника данных
            ScheduleItems = GetScheduleData();
            scheduleCollectionView.ItemsSource = ScheduleItems;

            // Установка контекста привязки данных
            BindingContext = this;
        }
        private void facultyPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedOption = (string)facultyPicker.SelectedItem;
            if (selectedOption != "Не выбрано")
            {
                kyrsPicker.IsVisible = true;
            }
            else
            {
                kyrsPicker.IsVisible = false;
                groupPicker.IsVisible = false;
                outputButton.IsVisible = false;
            }
        }

        private void kyrsPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedKyrs = (string)kyrsPicker.SelectedItem;
            var selectedFaculty = (string)facultyPicker.SelectedItem;
            if (selectedKyrs != "Не выбрано")
            {
                groupPicker.IsVisible = true;
                var secondPickerItems = GetPickerItems(selectedFaculty, selectedKyrs);
                groupPicker.ItemsSource = secondPickerItems;
            }
            else
            {
                groupPicker.IsVisible = false;
                outputButton.IsVisible = false;
            }
        }
        private List<string> GetPickerItems(string selectedFaculty, string selectedKyrs)
        {
            if (selectedFaculty == "Факультет Электронно-информационных систем" && selectedKyrs == "1 курс")
            {
                return new List<string> { "Не выбрано", "ИИ-21", "ИИ-22", "ИИ-23" };
            }
            else
            {
                return new List<string>(); // пустой список для других вариантов в первом Picker
            }
        }

        private void groupPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedGroup = (string)groupPicker.SelectedItem;
            if (selectedGroup != "Не выбрано")
            {
                outputButton.IsVisible = true;
            }
            else
            {
                outputButton.IsVisible = false;
            }
        }

        private void pressOutputButton(object sender, EventArgs e)
        {
            if (scheduleCollectionView.IsVisible)
            {
                scheduleCollectionView.IsVisible = false;
            }
            else
            {
                scheduleCollectionView.IsVisible = true;
            }
        }

        private List<ScheduleItem> GetScheduleData()
        {
            List<ScheduleItem> scheduleItems = new List<ScheduleItem>
        {
            new ScheduleItem
            {
                Time = "9:00 - 10:00",
                Subject = "Математика",
                Teacher = "Иванов",
                Room = "101"
            },
            new ScheduleItem
            {
                Time = "10:00 - 11:00",
                Subject = "Физика",
                Teacher = "Петров",
                Room = "202"
            },
            new ScheduleItem
            {
                Time = "11:00 - 12:00",
                Subject = "Английский язык",
                Teacher = "Сидорова",
                Room = "303"
            },
            // Другие элементы расписания...
        };

            return scheduleItems;
        }



    }
}

public class ScheduleItem
{
    public string Time { get; set; }
    public string Subject { get; set; }
    public string Teacher { get; set; }
    public string Room { get; set; }
}