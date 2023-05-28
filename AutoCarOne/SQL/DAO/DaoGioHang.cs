using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls.WebParts;

namespace AutoCarOne.SQL.DAO
{
    public class DaoGioHang
    {
        public static List<EntyGioHang> getIDgiohang(int _userid)
        {
            List<EntyGioHang> lstND = new List<EntyGioHang>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "" +
                "select IDCart, TenOto,Gia,img1,TrangThaiThanhToan, tbNguoiDung.HoTen, GioHang.SoLuong, TinhTrang from [GioHang], [tbNguoiDung], [SanPham] where GioHang.IDSP = SanPham.ID and GioHang.IDNguoiDung = tbNguoiDung.IDND and TrangThaiThanhToan = 'false' and GioHang.IDNguoidung = '" + _userid + "'";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                EntyGioHang objSV = null;
                while (sqlDataReader.Read())
                {
                    objSV = new EntyGioHang();
                    objSV.IDCart = Convert.ToInt32(sqlDataReader["IDCart"]);
                    objSV.TenOto = Convert.ToString(sqlDataReader["TenOto"]);
                    objSV.Gia = Convert.ToDouble(sqlDataReader["Gia"]);
                    objSV.TinhTrang = Convert.ToString(sqlDataReader["TinhTrang"]);
                    objSV.img1 = Convert.ToString(sqlDataReader["img1"]);
                    objSV.SoLuong = Convert.ToInt32(sqlDataReader["SoLuong"]);
                    objSV.HoTen = Convert.ToString(sqlDataReader["HoTen"]);

                    lstND.Add(objSV);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstND;

            }

        }
            public static EntyGioHang CheckGiohang(int _userid, int _tensp)
            {

                EntyGioHang objND = null;

                string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;

                string sql = "select GioHang.IDSP,TrangThaiThanhToan, TenOto, GioHang.SoLuong from [GioHang], [SanPham] where TrangThaiThanhToan = 'false' and GioHang.IDSP = SanPham.ID and IDNguoiDung = '" + _userid + "' and SanPham.ID = '" + _tensp + "'";

                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand sqlCommand = new SqlCommand(sql, conn);
                    sqlCommand.CommandType = System.Data.CommandType.Text;

                    conn.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();

                    if (reader.Read())
                    {
                        objND = new EntyGioHang();
                        objND.IDSP = Convert.ToInt32(reader["IDSP"]);
                        objND.SoLuong = Convert.ToInt32(reader["SoLuong"]);

                }
                reader.Close();//Đóng đối tượng DataReader
                    conn.Close();//Đóng kết nối
                    conn.Dispose();//Giải phóng bộ nhớ
                    return objND;
                }
        }

        public static EntyGioHang TongTien(int _userid)
        {
            EntyGioHang objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;

            string sql = "select  IDNguoidung, SUM(Gia * GioHang.SoLuong) as TongTien from [SanPham], [GioHang] where  TrangThaiThanhToan = 'false' and GioHang.IDSP = SanPham.ID and IDNguoidung = '" + _userid + "' group by IDNguoidung";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new EntyGioHang();
                    objND.TongTien = Convert.ToInt32(reader["TongTien"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
        //Tổng tiền vnpay
        public static EntyGioHang TongTienVnpay(int _userid)
        {
            EntyGioHang objND = null;

            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;

            string sql = "select  IDNguoidung, SUM(Gia * GioHang.SoLuong) as TongTien from [SanPham], [GioHang] where TrangThaiThanhToan = 'false' and GioHang.IDSP = SanPham.ID and IDNguoidung = '" + _userid + "' group by IDNguoidung";

            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand sqlCommand = new SqlCommand(sql, conn);
                sqlCommand.CommandType = System.Data.CommandType.Text;

                conn.Open();
                SqlDataReader reader = sqlCommand.ExecuteReader();

                if (reader.Read())
                {
                    objND = new EntyGioHang();
                    objND.TongTien = Convert.ToInt32(reader["TongTien"]);
                }
                reader.Close();//Đóng đối tượng DataReader
                conn.Close();//Đóng kết nối
                conn.Dispose();//Giải phóng bộ nhớ
                return objND;
            }
        }
        ///Đếm giỏ hàng
        public static EntyGioHang getCountIDCart(int id)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();

            string sql = "Select Count(IDCart) as DemCart from [GioHang] where IDNguoiDung=@id ";

            EntyGioHang objtag = null;
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", id);
            //Mở kết nối tới CSDL
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                objtag = new EntyGioHang();
                objtag.DemCart = Convert.ToInt32(reader["DemCart"]);

            }
            reader.Close();
            conn.Close();
            conn.Dispose();
            return objtag;


        }
    }
}