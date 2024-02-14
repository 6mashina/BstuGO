using System;
using System.Collections.Generic;
using System.Text;

namespace MyWork
{


    public class UserInfoGlobal
    {
        private static UserInfoGlobal instance;

        public Firebase.Auth.FirebaseAuth CurUser { get; set; }
        public string Uid { get; set; }
        public string idToken { get; set; }

        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Gender { get; set; }
        public string Status { get; set; }
        public string Record_number { get; set; }
        public string Faculry { get; set; }
        public string Course { get; set; }
        public string Speciality { get; set; }
        

        private UserInfoGlobal() { }

        public static UserInfoGlobal Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new UserInfoGlobal();
                }
                return instance;
            }
        }
    }


}


