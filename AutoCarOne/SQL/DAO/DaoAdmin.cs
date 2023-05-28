using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DaoAdmin
    {
        //get all Admin
        public static List<AccAdmin> getAllAdmin()
        {
            List<AccAdmin> list = new List<AccAdmin>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select ID, FullName, UserName, Password, tbChucVu.ChucVu, tbChucVu.IDCV, SDT, NgaySinh from [ADAcount],[tbChucVu] where ADAcount.IDCV = tbChucVu.IDCV";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                AccAdmin acc = new AccAdmin();
                acc.ID = Convert.ToInt32(reader["ID"]);
                acc.IDCV = Convert.ToInt32(reader["IDCV"]);
                acc.FullName = Convert.ToString(reader["FullName"]);
                acc.UserName = Convert.ToString(reader["UserName"]);
                acc.Password = Convert.ToString(reader["Password"]);
                acc.ChucVu = Convert.ToString(reader["ChucVu"]);
                acc.SDT = Convert.ToInt32(reader["SDT"]);
                acc.NgaySinh = Convert.ToDateTime(reader["NgaySinh"]);

                list.Add(acc);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return list;

        }
        // lấy id product
        public static AccAdmin GetAccAdminID(int _id)
        {
            AccAdmin pr = null;
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select ID, FullName, UserName, Password, tbChucVu.ChucVu, SDT, tbChucVu.IDCV, NgaySinh from [ADAcount], [tbChucVu] where ADAcount.IDCV = tbChucVu.IDCV and ID=@id";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;


            conn.Open();

            sqlCommand.Parameters.AddWithValue("@id", _id);

            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {

                pr = new AccAdmin();
                pr.ID = Convert.ToInt32(reader["ID"]);
                pr.IDCV = Convert.ToInt32(reader["IDCV"]);
                pr.FullName = Convert.ToString(reader["FullName"]);
                pr.Password = Convert.ToString(reader["Password"]);
                pr.ChucVu = Convert.ToString(reader["ChucVu"]);
                pr.SDT = Convert.ToInt32(reader["SDT"]);
                pr.NgaySinh = Convert.ToDateTime(reader["NgaySinh"]);
                pr.UserName = Convert.ToString(reader["UserName"]);


            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return pr;
        }

        // insert + edit admin
        public static bool CreateOrUpdate(AccAdmin pr)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "";
            if (pr.ID != 0)
            {
                sql = "update [ADAcount] set  IDCV=@IDCV, SDT=@SDT, NgaySinh=@NgaySinh, UserName=@UserName where ID=@id";

            }
            else
            {
                sql = "insert into [ADAcount] ( FullName, Password, IDCV, SDT, NgaySinh, UserName) values ( @FullName, @Password, @IDCV, @SDT, @NgaySinh ,@UserName  ) ";
            }
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", pr.ID);
            sqlCommand.Parameters.AddWithValue("@IDCV", pr.IDCV);
            sqlCommand.Parameters.AddWithValue("@FullName", pr.FullName);
            sqlCommand.Parameters.AddWithValue("@Password", pr.Password);
            sqlCommand.Parameters.AddWithValue("@SDT", pr.SDT);
            sqlCommand.Parameters.AddWithValue("@NgaySinh", pr.NgaySinh);
            sqlCommand.Parameters.AddWithValue("@UserName", pr.UserName);


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