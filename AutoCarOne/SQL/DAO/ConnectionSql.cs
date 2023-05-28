using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class ConnectionSql
    {
        public static SqlConnection GetSqlConnection()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString);
            if (conn != null)
            {
                return conn;
            }
            return null;
        }
        public static void close(SqlConnection conn)
        {
            conn.Close();
        }
    }
}