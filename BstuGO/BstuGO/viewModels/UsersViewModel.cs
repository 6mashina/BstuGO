using BstuGO.models;
using BstuGO.services;
using MvvmHelpers;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace BstuGO.viewModels
{
    public class UsersViewModel : BaseViewModel
    {

        public string Login { get; set; }
        public string Password { get; set; }
       

        DBServices services;
        ObservableCollection<User> users;
        public Command AddUserCommand { get; }
        public UsersViewModel() 
        {
        
            services = new DBServices();

            
        }

        
    }
}