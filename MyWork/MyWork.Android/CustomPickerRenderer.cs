using Android.Content;
using Android.Graphics.Drawables;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using MyWork.viewModels;
using AlertDialog = Android.Support.V7.App.AlertDialog; // Добавленная директива using
using MyWork.Droid;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using System.Linq;
using System.ComponentModel;
using Android.App;


[assembly: ExportRenderer(typeof(CustomPicker), typeof(CustomPickerRenderer))]
namespace MyWork.Droid
{
    public class CustomPickerRenderer : PickerRenderer
    {
        public CustomPickerRenderer(Context context) : base(context)
        {
        }

        private CustomPicker customPicker;
        protected override void OnElementChanged(ElementChangedEventArgs<Picker> e)
        {
            base.OnElementChanged(e);

            if (Control != null && e.NewElement != null)
            {
                customPicker = (CustomPicker)e.NewElement;

                // Установка закругленных углов и обводки для элемента Entry
                var gradientDrawable = new GradientDrawable();
                gradientDrawable.SetShape(ShapeType.Rectangle);
                gradientDrawable.SetColor(Color.Transparent.ToAndroid());
                gradientDrawable.SetStroke(5, customPicker.BorderColor.ToAndroid());
                gradientDrawable.SetCornerRadius(10); // Радиус закругления углов

                Control.Background = gradientDrawable;

                Control.TextChanged += OnTextChanged;

            }



        }

        private void OnTextChanged(object sender, Android.Text.TextChangedEventArgs e)
        {
            var gradientDrawable = Control.Background as GradientDrawable;
            var customPicker = Element as CustomPicker;
            if (customPicker.SelectedItem != null)
            {
                gradientDrawable?.SetStroke(5, Color.Blue.ToAndroid());
            }
        }


        protected override void OnElementPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            base.OnElementPropertyChanged(sender, e);


            if (e.PropertyName == CustomPicker.BorderColorProperty.PropertyName && Control != null && customPicker != null)
            {
                var gradientDrawable = Control.Background as GradientDrawable;
                if (gradientDrawable != null)
                {
                    if (customPicker.SelectedItem != null)
                    {
                        gradientDrawable.SetStroke(5, customPicker.BorderColor.ToAndroid());
                    }
                    else
                    {
                        gradientDrawable.SetStroke(5, Color.Red.ToAndroid());
                    }
                }
            }
        }


    }
}