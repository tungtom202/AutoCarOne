using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Admin.Entity
{
    public class EntyAdmin
    {
        public int ID { get; set; }
        public int IDCV { get; set; }
        public string FullName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ChucVu { get; set; }
        public string Email { get; set; }


    }
}