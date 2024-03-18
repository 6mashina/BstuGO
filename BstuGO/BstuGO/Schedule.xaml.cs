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
using SkiaSharp;
using SkiaSharp.Views.Forms;
using Xamarin.Forms.Shapes;
using TouchTracking;
using TouchTracking.Forms;
using Rg.Plugins.Popup.Services;
using Rg.Plugins.Popup.Pages;
using System.Runtime.InteropServices;


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
        Button buttonPhotoCropper;
        string pickFaculty = "";
        string pickCourse = "";
        string email = Preferences.Get("email","");
        SKBitmap bitmap = new SKBitmap();
        SKBitmap croppedBitmap;
        SKMatrix matrix = SKMatrix.MakeIdentity();
        Dictionary<long, SKPoint> touchDictionary = new Dictionary<long, SKPoint>();
        long touchId = -1;
        SKPoint previousPoint;
        DBServices services;
        PhotoCropperCanvasView photoCropper = null;
        Button buttonOnDone;
        bool mode = false;

        public async Task getImage()
        {
            
            /*string email = Preferences.Get("email", "");
            User user = await services.getUser(email);*/
            var httpClient = new HttpClient(ServerConn.GetInsecureHandler());
            var stream = await httpClient.GetStreamAsync($"https://194.87.237.231/feis2.png");
            using (MemoryStream memStream = new MemoryStream())
            {
                await stream.CopyToAsync(memStream);
                memStream.Seek(0, SeekOrigin.Begin);
                bitmap = SKBitmap.Decode(memStream);

            };
        }

        void OnTouchEffectAction(object sender, TouchActionEventArgs args)
        {
            double x = args.Location.X;
            double y = args.Location.Y;

            Point pt = new Point(x, y);
            SKPoint point = new SKPoint((float)(canvasView.CanvasSize.Width * pt.X / canvasView.Width),
            (float)(canvasView.CanvasSize.Height * pt.Y / canvasView.Height));
            switch (args.Type)
            {
                case TouchActionType.Pressed:
                    if (!touchDictionary.ContainsKey(args.Id))
                    {

                        if (matrix.TryInvert(out SKMatrix inverseMatrix))
                        {
                            SKPoint transformedPoint = inverseMatrix.MapPoint(point);
                            SKRect rect = new SKRect(0, 0, bitmap.Width, bitmap.Height);
                            if (rect.Contains(transformedPoint) && (!touchDictionary.ContainsKey(args.Id)))
                            {

                                Console.WriteLine("size iamge " + bitmap.Width + "W " + bitmap.Height + "H");
                                touchDictionary.Add(args.Id, point);


                            }
                        }
                    }
                    break;
                case TouchActionType.Moved:
                    if (touchDictionary.ContainsKey(args.Id))
                    {

                        if (touchDictionary.Count == 1)
                        {
                            SKPoint prevPoint = touchDictionary[args.Id];

                            matrix.TransX += point.X - prevPoint.X;
                            matrix.TransY += point.Y - prevPoint.Y;
                            canvasView.InvalidateSurface();
                        }

                        else if (touchDictionary.Count >= 2)
                        {
                            long[] keys = new long[touchDictionary.Count];
                            touchDictionary.Keys.CopyTo(keys, 0);
                            int pivotIndex = (keys[0] == args.Id) ? 1 : 0;

                            SKPoint pivotPoint = touchDictionary[keys[pivotIndex]];
                            SKPoint prevPoint = touchDictionary[args.Id];
                            SKPoint newPoint = point;

                            SKPoint oldVector = prevPoint - pivotPoint;
                            SKPoint newVector = newPoint - pivotPoint;

                            float oldAngle = (float)Math.Atan2(oldVector.Y, oldVector.X);
                            float newAngle = (float)Math.Atan2(newVector.Y, newVector.X);
                            float angle = newAngle - oldAngle;
                            SKMatrix touchMatrix = SKMatrix.CreateRotation(angle, pivotPoint.X, pivotPoint.Y);
                            //SKMatrix touchMatrix = SKMatrix.MakeRotation(angle, pivotPoint.X, pivotPoint.Y);
                            float magnitudeRatio = Magnitude(oldVector) / Magnitude(newVector);
                            oldVector.X = magnitudeRatio * newVector.X;
                            oldVector.Y = magnitudeRatio * newVector.Y;
                            float scale = Magnitude(newVector) / Magnitude(oldVector);
                            if (!float.IsNaN(scale) && !float.IsInfinity(scale))
                            {
                                SKMatrix.PostConcat(ref touchMatrix, SKMatrix.MakeScale(scale, scale, pivotPoint.X, pivotPoint.Y));
                                SKMatrix.PostConcat(ref matrix, touchMatrix);
                                canvasView.InvalidateSurface();
                            }
                        }

                        touchDictionary[args.Id] = point;
                    }
                    break;
                case TouchActionType.Released:
                case TouchActionType.Cancelled:

                    if (touchDictionary.ContainsKey(args.Id))
                    {
                        Console.WriteLine("remove " + args.Id);
                        touchDictionary.Remove(args.Id);
                    }
                    break;
            }


        }
        float Magnitude(SKPoint vector)
        {
            return (float)Math.Sqrt(vector.X * vector.X + vector.Y * vector.Y);
        }
        void OnCanvasViewPaintSurface(object sender, SKPaintSurfaceEventArgs args)
        {


            if (!mode)
            {
                            SKImageInfo info = args.Info;
            SKSurface surface = args.Surface;
            SKCanvas canvas = surface.Canvas;
            canvas.Clear();
            canvas.SetMatrix(matrix);
            //canvas.DrawBitmap(croppedBitmap, info.Rect, BitmapStretch.Uniform);
            try
            {
                canvasView.InvalidateSurface();

                canvas.DrawBitmap(bitmap, new SKPoint());


            }
            catch (Exception ex) { }
            }

        }
        void ButtonCropperClicked(Object sender, EventArgs args)
        {
            CanvasViewHost.IsVisible = false;
            CanvasViewHost2.Children.Clear();
            CanvasViewHost2.IsVisible = true;

            photoCropper = new PhotoCropperCanvasView(bitmap);
            buttonOnDone = new Button
            {
                Text = "Готово"
            };
            buttonOnDone.Clicked += OnDoneButtonClicked;
            
            CanvasViewHost2.Children.Add(photoCropper, 0, 0);
            CanvasViewHost2.Children.Add(buttonOnDone, 0, 1);
           
           
        }

      
        void OnDoneButtonClicked(object sender, EventArgs args)
        {
            CanvasViewHost.IsVisible = true;
            CanvasViewHost2.IsVisible = false;
            croppedBitmap = photoCropper.CroppedBitmap;
            bitmap = croppedBitmap;
            canvasView.InvalidateSurface();

        }



        public Schedule(SKBitmap image)
        {
       


            InitializeComponent();

            

            buttonGetShedule = new Button
            {
                Text = "Расписание"

            };
            buttonGetShedule.Clicked += LoadPdfButton_Clicked;

            buttonPhotoCropper = new Button
            {
                Text = "Вырезать"
            };
            buttonPhotoCropper.Clicked += ButtonCropperClicked;

           
            
            canvasView.InvalidateSurface();

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
          

            
               /* try
                {
                    var httpClient = new HttpClient(ServerConn.GetInsecureHandler());
                    Console.WriteLine(pickFaculty + pickCourse);
                    //var stream = await httpClient.GetStreamAsync($"https://194.87.237.231/{getFaculty() + getCourse()}");
                    var stream = await httpClient.GetStreamAsync($"https://194.87.237.231/feis2.png");
                    using (MemoryStream memStream = new MemoryStream())
                    {
                        await stream.CopyToAsync(memStream);
                        memStream.Seek(0, SeekOrigin.Begin);
                        bitmap = SKBitmap.Decode(memStream);

                    };
                    //SKCanvasView canvasView = new SKCanvasView();
                    //canvasView.PaintSurface += OnCanvasViewPaintSurface;

                }
                catch (Exception ex)
                {

                }*/

           

        }
 

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            services = new DBServices();
            bitmap = await services.getImage($"/ФЭИС1.png");

        }
        private async void ShowPopUp(object sender, EventArgs e)
        {
            var popupPage = new PopUp();
            popupPage.ValueBitmap += GetBitmap;
            popupPage.ValueSelectedFaculty += OnTableFacultyValueSelected;
            popupPage.ValueSelectedCourse += OnTableCourseValueSelected;

            await PopupNavigation.Instance.PushAsync(popupPage);
        }

        private void OnTableFacultyValueSelected(object sender, string selectedFaculty)
        {
            pickFaculty = selectedFaculty;
            // Действия с выбранным значением элемента faculty
        }

        private async void OnTableCourseValueSelected(object sender, string selectedCourse)
        {
            pickCourse = selectedCourse;
            // Действия с выбранным значением элемента course
        }

        private async void GetBitmap(object sender,SKBitmap bitmap)
        {
            this.bitmap = bitmap;
            Console.WriteLine("new bitmap");
            canvasView.InvalidateSurface();
        }
    }
}
