using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Syncfusion.SfPdfViewer.XForms;
using Xamarin.Forms.Xaml;
using System.Net.Http;

namespace BstuGO.views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PdfViewerPage : ContentPage
    {
        public PdfViewerPage(string filePath)
        {
            InitializeComponent();
           
           LoadPdfFromUrl(filePath);
        }

        private async void LoadPdfFromUrl(string pdfUrl)
        {
           
            using (HttpClient client = new HttpClient())
            {
                
                var pdfStream = await client.GetStreamAsync(pdfUrl);

               
                pdfViewerControl.LoadDocument(pdfStream);
            }
        }
    }
}