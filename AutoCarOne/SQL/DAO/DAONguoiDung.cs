using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DAONguoiDung
    {
        public static Entity.NguoiDung Login(string _email, string _password)
        {
            Entity.NguoiDung objUser = null;

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select IDND, Email, SDT, QueQuan, CMT, MatKhau, HoTen from [tbNguoiDung] where Email='" + _email + "'  and MatKhau='" + _password + "'";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            if (reader.Read())
            {
                objUser = new Entity.NguoiDung();
                objUser.IDND = Convert.ToInt32(reader["IDND"]);
                objUser.Email = Convert.ToString(reader["Email"]);
                objUser.SDT = Convert.ToString(reader["SDT"]);
                objUser.HoTen = Convert.ToString(reader["HoTen"]);
                objUser.CMT = Convert.ToString(reader["CMT"]);
                objUser.QueQuan = Convert.ToString(reader["QueQuan"]);
                objUser.MatKhau = Convert.ToString(reader["MatKhau"]);

            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return objUser;
        }

        //get all nd
        public static List<NguoiDung> getallND()
        {
            List<NguoiDung> listnd = new List<NguoiDung>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select IDND, HoTen, SDT, Email, MatKhau, QueQuan, CMT from [tbNguoiDung] ORDER BY IDND DESC";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                NguoiDung nd = new NguoiDung();
                nd.IDND = Convert.ToInt32(reader["IDND"]);
                nd.SDT = Convert.ToString(reader["SDT"]);
                nd.HoTen = Convert.ToString(reader["HoTen"]);
                nd.Email = Convert.ToString(reader["Email"]);
                nd.QueQuan = Convert.ToString(reader["QueQuan"]);
                nd.MatKhau = Convert.ToString(reader["MatKhau"]);
                nd.CMT = Convert.ToString(reader["CMT"]);
                listnd.Add(nd);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return listnd;


        }
        //get all nd
        public static List<NguoiDung> getallNDDanhba()
        {
            List<NguoiDung> listnd = new List<NguoiDung>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select IDND, HoTen, SDT, Email, MatKhau, QueQuan, CMT, img from [tbNguoiDung]";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                NguoiDung nd = new NguoiDung();
                nd.IDND = Convert.ToInt32(reader["IDND"]);
                nd.SDT = Convert.ToString(reader["SDT"]);
                nd.HoTen = Convert.ToString(reader["HoTen"]);
                nd.Email = Convert.ToString(reader["Email"]);
                nd.QueQuan = Convert.ToString(reader["QueQuan"]);
                nd.MatKhau = Convert.ToString(reader["MatKhau"]);
                nd.CMT = Convert.ToString(reader["CMT"]);
                nd.img = Convert.ToString(reader["img"]);

                listnd.Add(nd);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return listnd;


        }
        ///Đếm ô ID nd
        public static NguoiDung getDemnd()
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();

            string sql = "select count( IDND) as  TongND from [tbNguoiDung]  ";

            NguoiDung objtag = null;
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            //Mở kết nối tới CSDL
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                objtag = new NguoiDung();
                objtag.TongND = Convert.ToInt32(reader["TongND"]);

            }
            reader.Close();
            conn.Close();
            conn.Dispose();
            return objtag;


        }
        public static List<NguoiDung> getIDNguoiDung(int _id)
        {
            List<NguoiDung> nd = new List<NguoiDung>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select IDND, HoTen, SDT, Email, MatKhau, QueQuan, CMT from [tbNguoiDung] Where IDND=@idnd";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            sqlCommand.Parameters.AddWithValue("@idnd", _id);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                NguoiDung user = new NguoiDung();
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.Email = Convert.ToString(reader["Email"]);
                user.MatKhau = Convert.ToString(reader["MatKhau"]);
                user.QueQuan = Convert.ToString(reader["QueQuan"]);
                user.CMT = Convert.ToString(reader["CMT"]);

                nd.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return nd;
        }
        // lấy id admin
        public static NguoiDung GetNDbyID(int _id)
        {
            NguoiDung ad = null;
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select IDND, HoTen, SDT, Email, MatKhau, QueQuan, CMT from [tbNguoiDung] Where IDND=@idnd";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;


            conn.Open();

            sqlCommand.Parameters.AddWithValue("@idnd", _id);

            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                ad = new NguoiDung();
                ad.IDND = Convert.ToInt32(reader["IDND"]);
                ad.HoTen = Convert.ToString(reader["HoTen"]);
                ad.SDT = Convert.ToString(reader["SDT"]);
                ad.Email = Convert.ToString(reader["Email"]);
                ad.MatKhau = Convert.ToString(reader["MatKhau"]);
                ad.QueQuan = Convert.ToString(reader["QueQuan"]);
                ad.CMT = Convert.ToString(reader["CMT"]);

            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return ad;
        }
        ///update <summary>
        /// update
        public static bool UpdateND(NguoiDung nd)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "";
            if (nd.IDND != 0)
            {
                sql = "Update [tbNguoiDung] set HoTen=@hoten, Email=@email, SDT=@sdt, MatKhau = @matkhau, QueQuan=@quequan, CMT =@cmt where IDND = @idnd";

            }
            else
            {
            }
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@idnd", nd.IDND);
            sqlCommand.Parameters.AddWithValue("@hoten", nd.HoTen);
            sqlCommand.Parameters.AddWithValue("@email", nd.Email);
            sqlCommand.Parameters.AddWithValue("@sdt", nd.SDT);
            sqlCommand.Parameters.AddWithValue("@matkhau", nd.MatKhau);
            sqlCommand.Parameters.AddWithValue("@quequan", nd.QueQuan);
            sqlCommand.Parameters.AddWithValue("@cmt", nd.CMT);

            int rs = sqlCommand.ExecuteNonQuery();
            if (rs > 0)
            {
                conn.Close();
                conn.Dispose();
                return true;
            }
            return false;
        }
    }
}