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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<EntyTraGia> entyTraGias = DaoTraGia.getAllTraGia();
                gvTraGia.DataSource = entyTraGias;
                gvTraGia.DataBind();
            }
        }

        protected void gvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void gvTraGia_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int _id = Convert.ToInt32(gvTraGia.DataKeys[e.NewEditIndex].Value);
            EntyTraGia pr = DaoTraGia.getIDTraGia(_id);
            string strId = pr.IDTraGia.ToString();
            Response.Redirect("/FormAdmin/CreateEditTraGia.aspx?id_tragia=" + strId);
        }

        protected void gvTraGia_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(gvTraGia.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from [tbTraGia] where IDTraGia= " + ID.ToString();
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
            Response.Redirect("/FormAdmin/RepTraGiaAD.aspx");
        }
    }
}