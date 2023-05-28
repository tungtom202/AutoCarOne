using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class QuanLyKhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<NguoiDung> listUS = DAONguoiDung.getallND();
                gvUser.DataSource = listUS;
                gvUser.DataBind();
            }
        }

        protected void gvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUser.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            gvUser.PageIndex = e.NewPageIndex;
            List<NguoiDung> listUS = DAONguoiDung.getallND();
            gvUser.DataSource = listUS;
            gvUser.DataBind();
        }

        protected void gvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(gvUser.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from [tbNguoiDung] where IDND= " + ID.ToString();
            string conn = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            using (SqlConnection sqlConnection = new SqlConnection(conn))
            {
                SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
            Response.Redirect("/FormAdmin/QuanLyKhachHang.aspx");
        }

        public static List<int> listpage()
        {
            List<int> list = new List<int>();
            for (int i = 5; i < 20; i += 5)
            {
                list.Add(i);

            }
            return list;
        }

        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<NguoiDung> list = DAONguoiDung.getallND();
            gvUser.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            gvUser.PageIndex = 0;
            gvUser.DataSource = list;
            gvUser.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select IDND, HoTen, SDT, Email, MatKhau, QueQuan, CMT from [tbNguoiDung] where (IDND LIKE '%" + tbsearch.Text + "%' or HoTen LIKE '%" + tbsearch.Text + "%' or IDND LIKE '%" + tbsearch.Text + "%')";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            gvUser.DataSource = ds.Tables[0];
            gvUser.DataBind();
        }
    }
}