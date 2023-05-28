using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Entity
{
    public class AccAdmin
    {
        public int ID { get; set; }
        public string FullName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ChucVu { get; set; }
        public DateTime NgaySinh { get; set; }
        public int SDT  { get; set; }
        public int IDCV { get; set; }
    }
}