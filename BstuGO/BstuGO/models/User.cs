using System;
using System.Collections.Generic;
using System.Linq;
using System;

namespace BstuGO.models
{
    public class User
    { 
        public string Password { get; set; }
        public string Email { get; set; }
        //public string Group { get; set; }
        public string Specialization { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Faculty { get; set; }
        public string GradebookNumber {  get; set; }
        public string Course { get; set; }

        public string Role { get; set; }
       

        public string Gender { get; set; }
       
    }
}