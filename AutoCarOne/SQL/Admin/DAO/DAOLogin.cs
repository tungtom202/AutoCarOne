using AutoCarOne.SQL.Admin.Entity;
using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.Admin.DAO
{
    public class DAOLogin
    {
        public static EntyAdmin DangNhap(string _email, string _password)
        {
            EntyAdmin objUser = null;

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,  UserName, FullName, Password,tbChucVu.IDCV, tbChucVu.ChucVu from [ADAcount], [tbChucVu] where ADAcount.IDCV = tbChucVu.IDCV and UserName='" + _email + "'  and Password='" + _password + "'";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            if (reader.Read())
            {
                objUser = new EntyAdmin();
                objUser.ID = Convert.ToInt32(reader["ID"]);
                objUser.IDCV = Convert.ToInt32(reader["IDCV"]);
                objUser.UserName = Convert.ToString(reader["UserName"]);
                objUser.FullName = Convert.ToString(reader["FullName"]);
                objUser.Password = Convert.ToString(reader["Password"]);
                objUser.ChucVu = Convert.ToString(reader["ChucVu"]);

            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return objUser;
        }
    }
}