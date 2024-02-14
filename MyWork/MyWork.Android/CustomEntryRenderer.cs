using Android.Content;
using Android.Graphics.Drawables;
using MyWork.Droid;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(Entry), typeof(CustomEntryRenderer))]
namespace MyWork.Droid
{
    public class CustomEntryRenderer : EntryRenderer
    {
        public CustomEntryRenderer(Context context) : base(context)
        {
        }

        protected override void OnElementChanged(ElementChangedEventArgs<Entry> e)
        {
            base.OnElementChanged(e);

            if (Control != null && e.NewElement != null)
            {
                // Установка закругленных углов и обводки для элемента Entry
                var gradientDrawable = new GradientDrawable();
                gradientDrawable.SetShape(ShapeType.Rectangle);
                gradientDrawable.SetColor(Color.Transparent.ToAndroid());
                gradientDrawable.SetStroke(5, Color.FromHex("#1825FF").ToAndroid());
                gradientDrawable.SetCornerRadius(10); // Радиус закругления углов

                Control.Background = gradientDrawable;
            }
        }
    }
}
