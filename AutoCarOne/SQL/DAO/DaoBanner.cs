using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DaoBanner
    {
        public static List<EntyBanner> getllBanner()
        {
            List<EntyBanner> list = new List<EntyBanner>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select id, img1, img2, img3, tieude from [Banner]";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                EntyBanner bn = new EntyBanner();
                bn.id = Convert.ToInt32(reader["id"]);
                bn.img1 = Convert.ToString(reader["img1"]);
                bn.img2 = Convert.ToString(reader["img2"]);
                bn.img3 = Convert.ToString(reader["img3"]);
                bn.tieude = Convert.ToString(reader["tieude"]);
                list.Add(bn);
            }
            conn.Close();
            conn.Dispose();
            return list;
        }
        public static List<EntyBanner> getllBannerhome()
        {
            List<EntyBanner> list = new List<EntyBanner>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select id,img1, img2, img3, tieude from [Banner] where tieude = 'home'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                EntyBanner bn = new EntyBanner();
                bn.id = Convert.ToInt32(reader["id"]);
                bn.img1 = Convert.ToString(reader["img1"]);
                bn.img2 = Convert.ToString(reader["img2"]);
                bn.img3 = Convert.ToString(reader["img3"]);
                bn.tieude = Convert.ToString(reader["tieude"]);
                list.Add(bn);
            }
            conn.Close();
            conn.Dispose();
            return list;
        }
        //lấy id
        public static EntyBanner getIDBanner(int _id)
        {
            EntyBanner banner = null;
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select id, img1, img2, img3, tieude from [Banner] where id = @id";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", _id);
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                banner = new EntyBanner();
                banner.id = Convert.ToInt32(reader["id"]);
                banner.img1 = Convert.ToString(reader["img1"]);
                banner.img2 = Convert.ToString(reader["img2"]);
                banner.img3 = Convert.ToString(reader["img3"]);
                banner.tieude = Convert.ToString(reader["tieude"]);

            }
            conn.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return banner;
        }
        // insert + edit banner
        public static bool CreateOrUpdate(EntyBanner us)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "";
            if (us.id != 0)
            {
                sql = "update [Banner] set img1 = @img1,img2 = @img2,img3 = @img3, tieude=@tieude where id=@id";

            }
            else
            {
                sql = "insert into [Banner] (img1,img2, img3, tieude) values ( @img1,@img2,@img3, @tieude) ";
            }
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", us.id);
            sqlCommand.Parameters.AddWithValue("@img1", us.img1);
            sqlCommand.Parameters.AddWithValue("@img2", us.img2);
            sqlCommand.Parameters.AddWithValue("@img3", us.img3);
            sqlCommand.Parameters.AddWithValue("@tieude", us.tieude);

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