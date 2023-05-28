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
    public partial class WebForm9 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Page.Request.QueryString["id_tragia"]);
            if (!Page.IsPostBack)
            {
                EntyTraGia entyTraGia = DaoTraGia.getIDTraGia(id);
                tbEmail.Text = entyTraGia.Email;
                tbHoten.Text = entyTraGia.HoTen;
                tbTenoto.Text = entyTraGia.TenOto;
                tbSDT.Text = entyTraGia.SDT;
                tbIDTraGia.Text = Convert.ToInt32(entyTraGia.IDTraGia).ToString();
                tbIDSP.Text = Convert.ToInt32(entyTraGia.IDSP).ToString();
                tbIDND.Text = Convert.ToInt32(entyTraGia.IDND).ToString();
                tbIDSP.Text = Convert.ToInt32(entyTraGia.IDSP).ToString();
                tbGia.Text = Convert.ToDouble(entyTraGia.Gia).ToString();
                tbGiadexuat.Text = Convert.ToDouble(entyTraGia.GiaDeXuat).ToString();
                tbNgayGui.Text = Convert.ToDateTime(entyTraGia.NgayGui).ToString();
                tbTraloi.Text = entyTraGia.TraLoi;
            }
        }
        

        protected void btnSave_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Page.Request.QueryString["id_tragia"]);
            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand
               ("Update [tbTraGia] set  TraLoi= @TraLoi where IDTraGia = @id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@TraLoi", tbTraloi.Text);

                cmd.ExecuteNonQuery();
                conn.Close();
                conn.Dispose();
                Response.Redirect("RepTraGiaAD.aspx");
            }
        }
    }
}