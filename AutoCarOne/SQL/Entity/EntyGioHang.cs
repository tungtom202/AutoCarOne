using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Entity
{
    public class EntyGioHang
    {
        public int IDCart { get; set; }
        public int IDNguoiDung { get; set; }
        public int DemCart { get; set; }
        public string HoTen { get; set; }
        public int IDSP { get; set; }
        public int SoLuong { get; set; }
        public int TongTien { get; set; }
        public double Gia { get; set; }
        public int ThanhTien { get; set; }
        public string TenOto { get; set; }
        public string img1 { get; set; }
        public string TinhTrang { get; set; }
        public DateTime NgayMua { get; set; }
        public bool TrangThaiThanhToan { get; set; }

    }
}