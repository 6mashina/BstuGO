using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class NewsPage : ContentPage
    {
        WebView webView;
        public NewsPage()
        {
            InitializeComponent();
            webView = new WebView
            {
                Source = new UrlWebViewSource { Url = "https://news.bstu.by/" },
                VerticalOptions = LayoutOptions.FillAndExpand
            };
            this.Content = new StackLayout { Children = { webView } };
        }
    }
}