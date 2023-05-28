using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DaoComment
    {


        //thêm bình luận
        public static bool ThemBinhLuan(EntyComment cmt)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "";
            if (cmt.IDCMT != 0)
            {
            }
            else
            {
                sql = "insert into [tbComment] ( Comment, IDSP, IDND, image)" +
                                                " values ( @Comment, @IDSP, @IDND, @image ) ";
            }
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@IDSP", cmt.IDSP);
            sqlCommand.Parameters.AddWithValue("@IDND", cmt.IDND);
            sqlCommand.Parameters.AddWithValue("@image", cmt.image);
            sqlCommand.Parameters.AddWithValue("@Comment", cmt.Comment);


            int rs = sqlCommand.ExecuteNonQuery();
            if (rs > 0)
            {
                conn.Close();
                conn.Dispose();
                return true;
            }
            return false;
        }

        //thêm comment của người dùng admin
        //thêm bình luận
        public static bool ThemBinhLuanND(EntyRepCMT cmt)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "";
            if (cmt.RepCmtID != 0)
            {
            }
            else
            {
                sql = "insert into tbRepCMT (RepCMT, IDND, IDCMT, IDSP) values (@RepCMT, @IDND, @IDCMT, @IDSP)";
            }
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@RepCMT", cmt.RepCMT);
            sqlCommand.Parameters.AddWithValue("@IDND", cmt.IDND);
            sqlCommand.Parameters.AddWithValue("@IDCMT", cmt.IDCMT);
            sqlCommand.Parameters.AddWithValue("@IDSP", cmt.IDSP);


            int rs = sqlCommand.ExecuteNonQuery();
            if (rs > 0)
            {
                conn.Close();
                conn.Dispose();
                return true;
            }
            return false;
        }

        ///get all bình luận
        public static List<EntyComment> getallComment(int _id)
        {
            List<EntyComment> list = new List<EntyComment>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select IDCMT, Comment, IDSP, tbNguoiDung.IDND,tbNguoiDung.HoTen, image from [tbComment], [tbNguoiDung] where tbComment.IDND = tbNguoiDung.IDND and IDSP='"+ _id+"'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                EntyComment cmt = new EntyComment();
                cmt.IDCMT = Convert.ToInt32(reader["IDCMT"]);
                cmt.Comment = Convert.ToString(reader["Comment"]);
                cmt.IDSP = Convert.ToInt32(reader["IDSP"]);
                cmt.IDND = Convert.ToInt32(reader["IDND"]);
                cmt.image = Convert.ToString(reader["image"]);
                cmt.HoTen = Convert.ToString(reader["HoTen"]);

                list.Add(cmt);
            }
            conn.Close();
            conn.Dispose();
            return list;
        }
    public static List<EntyRepCMT> getallRepBinhLuan( int _idrep)
    {
        List<EntyRepCMT> list = new List<EntyRepCMT>();
        SqlConnection conn = ConnectionSql.GetSqlConnection();
        string sql = "Select RepCmtID, RepCMT, tbNguoiDung.IDND,tbNguoiDung.HoTen, IDCMT, SanPham.ID from [tbRepCMT], [tbNguoiDung], [SanPham] where tbRepCMT.IDND = tbNguoiDung.IDND and tbRepCMT.IDSP = SanPham.ID and ID = '"+_idrep+"'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.CommandType = System.Data.CommandType.Text;
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            EntyRepCMT cmt = new EntyRepCMT();
            cmt.RepCmtID = Convert.ToInt32(reader["RepCmtID"]);
            cmt.IDCMT = Convert.ToInt32(reader["IDCMT"]);
            cmt.RepCMT = Convert.ToString(reader["RepCMT"]);
            cmt.IDSP = Convert.ToInt32(reader["ID"]);
            cmt.IDND = Convert.ToInt32(reader["IDND"]);
            cmt.HoTen = Convert.ToString(reader["HoTen"]);

                list.Add(cmt);
        }
        conn.Close();
        conn.Dispose();
        return list;
    }
    }///get all bình luận
}