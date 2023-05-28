using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AutoCarOne.Control
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idnd = 0;
            idnd = Convert.ToInt32(Session["user_id"]);
            if (HttpContext.Current.Session["userName"] != null)
                lbHello.Text = Page.Session["userName"].ToString();
            if (!IsPostBack)
            {
                List<EntyTraGia> traGias = DaoTraGia.GetAllBEllById(idnd);
                DataListTraGia.DataSource = traGias;
                DataListTraGia.DataBind();

                //dem
                EntyTraGia traGia = DaoTraGia.getCount(idnd);
                Label1.Text = Convert.ToString(traGia.DemTraGia);
            }
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string _tb = tbsearch.Text.ToString();
            Response.Redirect("Otocu?search=" + _tb);
            //SqlConnection conn = ConnectionSql.GetSqlConnection();
            //string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo,KieuDang, NhienLieu,Hang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],tbNguoiDung where   SanPham.IDND = tbNguoiDung.IDND where (NamSx LIKE '%" + tbsearch.Text + "%' or TenOto LIKE '%" + tbsearch.Text + "%' or Hang LIKE '%" + tbsearch.Text + "%')";
            //SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            //DataSet ds = new DataSet();
            //adapter.Fill(ds);

            //RepeaterSearchHeader.DataSource = ds.Tables[0];
            //RepeaterSearchHeader.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Page.Session["user_id"] = null;
            Page.Session["userName"] = null;
            Page.Session["email"] = null;
            Page.Session["HoTen"] = null;
            Page.Session["CMT"] = null;
            Page.Session["QueQuan"] = null;
            Page.Session["SDT"] = null;

        }

        

        protected void DataListTraGia_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(DataListTraGia.DataKeys[e.Item.ItemIndex]);
            if (e.CommandName == "seen_delete")
            {
                string conn = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string strsql1 = "Delete from [tbTraGia] where IDTraGia= '" + id + "'";

                using (SqlConnection sqlConnection = new SqlConnection(conn))
                {
                    SqlCommand cmd = new SqlCommand(strsql1, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    sqlConnection.Open();
                    cmd.ExecuteNonQuery();
                    sqlConnection.Close();
                    sqlConnection.Dispose();
                }
                Response.Redirect("TrangChu.aspx");
            }
        }
    }
}