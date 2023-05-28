using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Entity
{
    public class EntyComment
    {
        public int IDCMT { get; set; }
        public string Comment { get; set; }
        public int IDSP { get; set; }
        public int IDND { get; set; }
        public string image { get; set; }
        public int RepCmtID { get; set; }
        public string HoTen { get; set; }
    }
}