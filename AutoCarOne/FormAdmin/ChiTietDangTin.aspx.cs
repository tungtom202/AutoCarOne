using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class ChiTietDangTin : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["user_id"] != null)
                {

                    id = Convert.ToInt32(Request.QueryString["user_id"].ToString());
                    List<SanPham> ls = DaoSanPham.GetAllProductsById(id);
                    if (ls.Count > 0)
                    {
                        Repeater.DataSource = ls;
                        Repeater.DataBind();
                       
                    }

                }


                /// chủ đề
                string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string strSql = "Select IDChuDe, ChuDe FROM tbChuDe ";
                List<EntyChuDe> productSeniorities = new List<EntyChuDe>();
                using (SqlConnection sqlConnection = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    //mở kết nối sql
                    sqlConnection.Open();
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    while (sqlDataReader.Read())
                    {
                        EntyChuDe productSeniority = new EntyChuDe
                        {
                            IDChuDe = Convert.ToInt32(sqlDataReader["IDChuDe"]),
                            ChuDe = Convert.ToString(sqlDataReader["ChuDe"]),
                        };
                        productSeniorities.Add(productSeniority);
                    }
                    sqlDataReader.Close();
                    sqlConnection.Close();
                    sqlConnection.Dispose();

                    dropDuyet.DataSource = productSeniorities;
                    dropDuyet.DataTextField = "ChuDe";
                    dropDuyet.DataValueField = "IDChuDe";

                    dropDuyet.DataBind();
                }

            }

        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            int queryid = Convert.ToInt32(Page.Request.QueryString["user_id"]);
            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand
               ("update [SanPham] set DuyetTin = 0 where ID=@ID", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@ID", queryid);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("/FormAdmin/QuanlyDangTin.aspx");
            }
        }

        protected void btnDuyet_Click(object sender, EventArgs e)
        {
            int Cd = Convert.ToInt32( dropDuyet.SelectedValue.ToString());
            int queryid = Convert.ToInt32(Page.Request.QueryString["user_id"]);
            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand
               ("update SanPham set DuyetTin = 1, IDChuDe ='"+ Cd+ "' where ID=@ID", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@ID", queryid);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("/FormAdmin/QuanlyDangTin.aspx");
            }
        }
    }
}