using Android.Content;
using Android.Graphics;
using Android.Graphics.Drawables;
using Android.Support.V4.Content;
using MyWork.Droid;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using System.ComponentModel;
using MyWork.viewModels;

[assembly: ExportRenderer(typeof(CustomEntry), typeof(CustomImageEntryRenderer))]
namespace MyWork.Droid
{
    public class CustomImageEntryRenderer : EntryRenderer
    {
        private CustomEntry customEntry;

        public CustomImageEntryRenderer(Context context) : base(context)
        {
        }

        protected override void OnElementChanged(ElementChangedEventArgs<Entry> e)
        {
            base.OnElementChanged(e);

            if (Control != null && e.NewElement != null)
            {
                customEntry = (CustomEntry)e.NewElement;
                

                // Установка закругленных углов и обводки для элемента Entry
                var gradientDrawable = new GradientDrawable();
                gradientDrawable.SetShape(ShapeType.Rectangle);

                gradientDrawable.SetColor(Android.Graphics.Color.Transparent);
                gradientDrawable.SetStroke(5, customEntry.BorderColor.ToAndroid());
                gradientDrawable.SetCornerRadius(10);

                Control.Background = gradientDrawable;

                if (customEntry.ImageSource is FileImageSource fileImageSource)
                {
                    string imageName = fileImageSource.File;

                    // Получим ресурс изображения по его имени
                    int resourceId = Resources.GetIdentifier(imageName, "drawable", Context.PackageName);
                    if (resourceId != 0)
                    {
                        Drawable drawable = ContextCompat.GetDrawable(Context, resourceId);

                        // Расчет размеров изображения
                        int width = customEntry.ImageWidthRequest;
                        int height = customEntry.ImageHeightRequest;

                        // Масштабирование изображения с помощью Bitmap и установка его в начало строки элемента Entry
                        Bitmap bitmap = ((BitmapDrawable)drawable).Bitmap;
                        Drawable scaledDrawable = new BitmapDrawable(Context.Resources, Bitmap.CreateScaledBitmap(bitmap, width, height, true));
                        Control.SetCompoundDrawablesRelativeWithIntrinsicBounds(scaledDrawable, null, null, null);
                    }
                }

                Control.TextChanged += OnTextChanged;
            }
        }

        private void OnTextChanged(object sender, Android.Text.TextChangedEventArgs e)
        {
            // Обновляем цвет обводки в зависимости от заданных условий
            if (!string.IsNullOrEmpty(e.Text.ToString()))
            {
                var gradientDrawable = Control.Background as GradientDrawable;
                gradientDrawable?.SetStroke(5, Android.Graphics.Color.Blue);
                customEntry.BorderColor = Xamarin.Forms.Color.Blue;
            }
        }

        protected override void OnElementPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            base.OnElementPropertyChanged(sender, e);

            if (e.PropertyName == CustomEntry.BorderColorProperty.PropertyName && Control != null && customEntry != null && string.IsNullOrEmpty(customEntry.Text))
            {
                var gradientDrawable = Control.Background as GradientDrawable;
                gradientDrawable?.SetStroke(5, customEntry.BorderColor.ToAndroid());
            }
        }
    }
}
