using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class QuanLyAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                List<AccAdmin> acc = DaoAdmin.getAllAdmin();
                gvAdmin.DataSource = acc;
                gvAdmin.DataBind();
            }
        }

        protected void gvAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAdmin.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            List<AccAdmin> acc = DaoAdmin.getAllAdmin();
            gvAdmin.PageIndex = e.NewPageIndex;
            gvAdmin.DataSource = acc;
            gvAdmin.DataBind();
        }

        protected void gvAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(gvAdmin.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from [ADAcount] where ID= " + ID.ToString();
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
            Response.Redirect("/FormAdmin/QuanLyAdmin.aspx");
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
            List<AccAdmin> list = DaoAdmin.getAllAdmin();
            gvAdmin.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            gvAdmin.PageIndex = 0;
            gvAdmin.DataSource = list;
            gvAdmin.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select ID, FullName, UserName, SDT, NgaySinh, tbChucVu.ChucVu from [ADAcount], [tbChucVu] where ADAcount.IDCV = tbChucVu.IDCV and (ID LIKE '%" + tbsearch.Text + "%' or FullName LIKE '%" + tbsearch.Text + "%' )";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            gvAdmin.DataSource = ds.Tables[0];
            gvAdmin.DataBind();
        }

      

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FormAdmin/CreateEditAdmin.aspx");


        }

        protected void gvAdmin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            int _id = Convert.ToInt32(gvAdmin.DataKeys[e.NewEditIndex].Value);
            AccAdmin pr = DaoAdmin.GetAccAdminID(_id);
            string strId = pr.ID.ToString();
            int iddcv = pr.IDCV;
            Response.Redirect("/FormAdmin/CreateEditAdmin.aspx?user_id=" + strId + "&&ID_CV="+ iddcv);

        }
    }
}