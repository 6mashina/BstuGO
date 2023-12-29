using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO
{
    [XamlCompilation(XamlCompilationOptions.Compile)]

    public partial class Schedule : ContentPage
    {
        WebView webView;
        public Schedule()
        {
            InitializeComponent();
            webView = new WebView
            {
                Source = new UrlWebViewSource { Url = "https://feis.bstu.by/wp-content/uploads/2023/08/%D0%A4%D0%AD%D0%98%D0%A1-3.pdf" },
                VerticalOptions = LayoutOptions.FillAndExpand
            };
            this.Content = new StackLayout { Children = { webView } };
        }
    }
}