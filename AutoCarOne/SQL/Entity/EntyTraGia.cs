using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Entity
{
    public class EntyTraGia
    {
        public int IDTraGia { get; set; }
        public int IDSP { get; set; }
        public int IDND { get; set; }
        public string TenOto { get; set; }
        public string Email { get; set; }
        public string SDT { get; set; }
        public string HoTen { get; set; }
        public string TraLoi { get; set; }
        public string img1 { get; set; }
        public int DemTraGia { get; set; }

        public Double Gia { get; set; }
        public Double GiaDeXuat { get; set; }
        public DateTime NgayGui { get; set; }

    }
}