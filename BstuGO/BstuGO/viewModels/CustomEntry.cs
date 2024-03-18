using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace BstuGO.viewModels
{
    public class CustomEntry : Entry
    {

        public CustomEntry()
        {
            Activity = false;
            ImageWidthRequest = 35;  // Базовое значение для ширины изображения
            ImageHeightRequest = 35;  // Базовое значение для высоты изображения
        }
        public static readonly BindableProperty BorderColorProperty = BindableProperty.Create(nameof(BorderColor), typeof(Color), typeof(CustomEntry), Color.FromHex("#1825FF"));

        public Color BorderColor
        {
            get { return (Color)GetValue(BorderColorProperty); }
            set { SetValue(BorderColorProperty, value); }
        }

        public bool Activity { get; set; }

        public static readonly BindableProperty ImageSourceProperty = BindableProperty.Create(nameof(ImageSource), typeof(ImageSource), typeof(CustomEntry), null);
        public ImageSource ImageSource
        {
            get { return (ImageSource)GetValue(ImageSourceProperty); }
            set { SetValue(ImageSourceProperty, value); }
        }
        public int ImageWidthRequest { get; set; }
        public int ImageHeightRequest { get; set; }

    }
}
