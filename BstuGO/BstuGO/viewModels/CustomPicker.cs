using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace BstuGO.viewModels
{
    public class CustomPicker : Picker
    {
        public static readonly BindableProperty BorderColorProperty = BindableProperty.Create(nameof(BorderColor), typeof(Color), typeof(CustomEntry), Color.FromHex("#1825FF"));
        public CustomPicker() { }

        public Color BorderColor
        {
            get { return (Color)GetValue(BorderColorProperty); }
            set { SetValue(BorderColorProperty, value); }
        }


    }
}
