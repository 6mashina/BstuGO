using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using BstuGO.models;
using System.Threading.Tasks;

namespace BstuGO
{
    public class ServerConn
    {
        
        public static HttpClientHandler GetInsecureHandler()
        {
            HttpClientHandler handler = new HttpClientHandler();
            handler.ServerCertificateCustomValidationCallback = (message, cert, chain, errors) =>
            {
                return true;
            };
            return handler;
        }
        public static async Task<string> getData(string url)
        {
            using (var client = new HttpClient(GetInsecureHandler()))
            {
                var response = await client.GetAsync(url);
                var result = await response.Content.ReadAsStringAsync();
                return result;
            }
        }

        public static async Task<string> postData(string url, Object data)
        {
            using (var client = new HttpClient(GetInsecureHandler()))
            {
                var json = Newtonsoft.Json.JsonConvert.SerializeObject(data);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await client.PostAsync(url, content);
                var result = await response.Content.ReadAsStringAsync();
                return result;
            }
        }

        



    }
}
