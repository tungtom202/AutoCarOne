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
using System.Xml;
using System.Xml.Linq;

namespace AutoCarOne.FormAdmin
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        int queryId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            queryId = Convert.ToInt32(Page.Request.QueryString["ID_Acc"]);
            if (!Page.IsPostBack)
            {
                List<EntyBanner> banner = DaoBanner.getllBanner();
                gvBanner.DataSource = banner;
                gvBanner.DataBind();


                
            }    
        }

        protected void gvBanner_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBanner.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            List<EntyBanner> banner = DaoBanner.getllBanner();
            gvBanner.PageIndex = e.NewPageIndex;
            gvBanner.DataSource = banner;
            gvBanner.DataBind();
        }

        protected void gvBanner_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int _id = Convert.ToInt32(gvBanner.DataKeys[e.NewEditIndex].Value);
            EntyBanner banner = DaoBanner.getIDBanner(_id);
            string strId = banner.id.ToString();
            Response.Redirect("/FormAdmin/CreateEditBNer.aspx?user_id=" + strId);
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FormAdmin/CreateEditBNer.aspx");
        }

        protected void gvBanner_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(gvBanner.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from [Banner] where id= " + ID.ToString();
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
            Response.Redirect("/FormAdmin/QuanLyBanner.aspx");
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
            List<EntyBanner> list = DaoBanner.getllBanner();
            gvBanner.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            gvBanner.PageIndex = 0;
            gvBanner.DataSource = list;
            gvBanner.DataBind();
        }
    }
}