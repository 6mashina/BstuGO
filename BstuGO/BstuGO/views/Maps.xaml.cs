using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BstuGO.views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Maps : ContentPage
	{
		public Maps ()
		{
			InitializeComponent ();
            WebView webView = new WebView();
            UrlWebViewSource urlSource = new UrlWebViewSource();
            urlSource.Url = System.IO.Path.Combine(DependencyService.Get<IBaseUrl>().Get(), "maps.html");
            webView.Source = urlSource;
            this.Content = webView;
        }
        public interface IBaseUrl { string Get(); }

    }
}