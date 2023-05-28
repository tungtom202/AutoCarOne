using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Entity
{
    public class EntyLichSuDoc
    {
        public int IDLS { get; set; }
        public int IDSP { get; set; }
        public int ID { get; set; }

        public int IDND { get; set; }
        public string TenOto { get; set; }
        public string SDT { get; set; }
        public string img1 { get; set; }
        public double Gia { get; set; }
        public int NamSx { get; set; }
        public string HopSo  { get; set; }
        public string XuatXu { get; set; }
        public string NhienLieu { get; set; }
        public string KieuDang { get; set; }

    }
}