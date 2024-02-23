using BstuGO.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.Collections.ObjectModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Net.Http;
using Newtonsoft.Json;
using SkiaSharp;

namespace BstuGO.services
{
    public class DBServices
    {
        private const string BaseUrl = "https://194.87.237.231";
       

        public DBServices() 
        {
          
        }

        public async Task<SKBitmap> getImage(string adr)
        {
            var httpClient = new HttpClient(ServerConn.GetInsecureHandler());
            var stream = await httpClient.GetStreamAsync($"{BaseUrl + adr}");
            using (MemoryStream memStream = new MemoryStream())
            {
                await stream.CopyToAsync(memStream);
                memStream.Seek(0, SeekOrigin.Begin);
                return SKBitmap.Decode(memStream);

            };
        }
        public async Task<User> getUser(string email)
        {
            User user = null;
            var url = $"{BaseUrl}/get_user?email={email}";
            try
            {
                string jsonObject = await ServerConn.getData(url);
                if (jsonObject.Contains("User not found")) {
                    return user;
                }
                user = JsonConvert.DeserializeObject<User>(jsonObject);
                return user;
            }
            catch (Exception ex)
            {
               
            }
            return user;
        }

        public async Task<string> deleteUser(string email)
        {
            var url = $"{BaseUrl}/delete_user?email={email}";
            try
            {
                return await ServerConn.postData(url, email);

            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }
        public async Task<string> AddUser(User user)
        {
            var url = $"{BaseUrl}/register";
            try
            {
             return await ServerConn.postData(url,user);

            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }
        public async Task<string> AuthUser(User user)
        {

            var url = $"{BaseUrl}/auth";
            try
            {
                return await ServerConn.postData(url,user);
            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }

        public async Task<string> uploadUser(User user)
        {
            var url = $"{BaseUrl}/upload_user";
            try
            {
                return await ServerConn.postData(url, user);
            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }

       






    }
}