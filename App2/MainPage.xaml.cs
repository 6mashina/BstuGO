﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace App2
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();

        }

        private async void AddSchedulePage(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Schedule_page1());
        }

    }
}
