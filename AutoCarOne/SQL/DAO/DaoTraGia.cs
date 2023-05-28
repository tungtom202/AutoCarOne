using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DaoTraGia
    {
        public static List<EntyTraGia> getAllTraGia(){
            List<EntyTraGia> list = new List<EntyTraGia>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select IDTraGia, IDSP, tbNguoiDung.IDND, GiaDeXuat,TraLoi, SanPham.Gia, tbNguoiDung.HoTen,  tbNguoiDung.Email, SanPham.TenOto, NgayGui from tbTraGia " +
                "inner join SanPham on SanPham.ID = tbTraGia.IDSP " +
                "inner join tbNguoiDung on tbNguoiDung.IDND = tbTraGia.IDND";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            while (sqlDataReader.Read())
            {
                EntyTraGia entyTraGia = new EntyTraGia();
                entyTraGia.IDTraGia = Convert.ToInt32(sqlDataReader["IDTraGia"]);
                entyTraGia.IDSP = Convert.ToInt32(sqlDataReader["IDSP"]);
                entyTraGia.IDND = Convert.ToInt32(sqlDataReader["IDND"]);
                entyTraGia.Gia = Convert.ToDouble(sqlDataReader["Gia"]);
                entyTraGia.GiaDeXuat = Convert.ToDouble(sqlDataReader["GiaDeXuat"]);
                entyTraGia.TenOto = Convert.ToString(sqlDataReader["TenOto"]);
                entyTraGia.Email = Convert.ToString(sqlDataReader["Email"]);
                entyTraGia.HoTen = Convert.ToString(sqlDataReader["HoTen"]);
                entyTraGia.TraLoi = Convert.ToString(sqlDataReader["TraLoi"]);
                entyTraGia.NgayGui = Convert.ToDateTime(sqlDataReader["NgayGui"]);
                list.Add(entyTraGia);

            }
            conn.Close();
            conn.Dispose();
            return list;
        }
        public static EntyTraGia getIDTraGia(int _id)
        {
            EntyTraGia entyTraGia = new EntyTraGia();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select IDTraGia, IDSP, tbNguoiDung.IDND, GiaDeXuat,TraLoi, SanPham.Gia,tbNguoiDung.SDT, tbNguoiDung.HoTen,  tbNguoiDung.Email, SanPham.TenOto, NgayGui from tbTraGia" +
                "                inner join SanPham on SanPham.ID = tbTraGia.IDSP" +
                "               inner join tbNguoiDung on tbNguoiDung.IDND = tbTraGia.IDND where tbTraGia.IDTraGia = @id ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@id", _id);
            conn.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            while (sqlDataReader.Read())
            {
                entyTraGia.IDTraGia = Convert.ToInt32(sqlDataReader["IDTraGia"]);
                entyTraGia.IDSP = Convert.ToInt32(sqlDataReader["IDSP"]);
                entyTraGia.IDND = Convert.ToInt32(sqlDataReader["IDND"]);
                entyTraGia.Gia = Convert.ToDouble(sqlDataReader["Gia"]);
                entyTraGia.GiaDeXuat = Convert.ToDouble(sqlDataReader["GiaDeXuat"]);
                entyTraGia.TenOto = Convert.ToString(sqlDataReader["TenOto"]);
                entyTraGia.Email = Convert.ToString(sqlDataReader["Email"]);
                entyTraGia.HoTen = Convert.ToString(sqlDataReader["HoTen"]);
                entyTraGia.TraLoi = Convert.ToString(sqlDataReader["TraLoi"]);
                entyTraGia.SDT = Convert.ToString(sqlDataReader["SDT"]);
                entyTraGia.NgayGui = Convert.ToDateTime(sqlDataReader["NgayGui"]);
            }
            conn.Close();
            conn.Dispose();
            return entyTraGia;
        }
       
        public static List<EntyTraGia> GetAllBEllById(int _id)
        {
            List<EntyTraGia> allUser = new List<EntyTraGia>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select IDTraGia, IDSP, tbNguoiDung.IDND, GiaDeXuat,TraLoi, SanPham.Gia,SanPham.img1 , SanPham.TenOto from tbTraGia" +
                "                inner join SanPham on SanPham.ID = tbTraGia.IDSP" +
                "               inner join tbNguoiDung on tbNguoiDung.IDND = tbTraGia.IDND where tbTraGia.IDND = @id ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", _id);
            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                EntyTraGia user = new EntyTraGia();
                user.IDTraGia = Convert.ToInt32(reader["IDTraGia"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.IDSP = Convert.ToInt32(reader["IDSP"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.GiaDeXuat = Convert.ToDouble(reader["GiaDeXuat"]);
                user.TraLoi = Convert.ToString(reader["TraLoi"]);
                user.img1 = Convert.ToString(reader["img1"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        //dem
        public static EntyTraGia getCount(int id)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();

            string sql = "Select Count(IDTraGia) as DemTraGia from [tbTraGia], [tbNguoiDung] where tbTraGia.IDND = tbNguoiDung.IDND and tbTraGia.IDND = @id ";

            EntyTraGia objtag = null;
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", id);
            //Mở kết nối tới CSDL
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                objtag = new EntyTraGia();
                objtag.DemTraGia = Convert.ToInt32(reader["DemTraGia"]);
                

            }
            reader.Close();
            conn.Close();
            conn.Dispose();
            return objtag;


        }
    }
}