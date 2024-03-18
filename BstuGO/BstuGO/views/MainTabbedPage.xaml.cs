using BstuGO.services;
using SkiaSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;

namespace BstuGO.views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainTabbedPage : TabbedPage
    {
        DBServices services = new DBServices();
        SKBitmap image;
        public MainTabbedPage (bool isGhost)
        {
            InitializeComponent();

          

            NavigationPage mapsPage = new NavigationPage(new Maps());
            NavigationPage schedulesPage = new NavigationPage(new Schedule(image));
            NavigationPage newsPage = new NavigationPage(new NewsPage());
            NavigationPage profilesPage = new NavigationPage(new ProfilePage());

            // "this" refers to a Page object

            mapsPage.Title = "Карты";
            mapsPage.IconImageSource = "logomaps.png";

            schedulesPage.Title = "Расписание";
            schedulesPage.IconImageSource = "logoschedule.png";

            newsPage.Title = "Новости";
            newsPage.IconImageSource = "logonews.png";

            profilesPage.Title = "Личный кабинет";
            profilesPage.IconImageSource = "profile.png";

            Children.Add(schedulesPage);
            Children.Add(newsPage);
            Children.Add(mapsPage);
            if (!isGhost)
            {
                Children.Add(profilesPage);
            }
           


        }
        protected override bool OnBackButtonPressed()
        {
            return true;
        }
    
    }
}