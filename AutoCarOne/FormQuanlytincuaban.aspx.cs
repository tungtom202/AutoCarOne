using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne
{
    public partial class FormQuanlytincuaban : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["userName"] == null)
            {
                Response.Redirect("/FormFend/DangNhap.aspx?ViewProduct=0");
            }
            id = Convert.ToInt32(Page.Request.QueryString["user_id"]);
            if (!IsPostBack)
            {
                if (HttpContext.Current.Session["userName"] != null)
                    lblName.Text = Page.Session["userName"].ToString();
                    lbEmail.Text = Page.Session["email"].ToString();

                id = Convert.ToInt32(Session["user_id"]);
                List<SanPham> sp = DaoSanPham.GetAllProTinGiaoById(id);
                Datalist1.DataSource = sp;
                Datalist1.DataBind();

                
                //no duyệt

                List<SanPham> nosp = DaoSanPham.GetAllProTinGiaoNoById(id);
                Repeater1.DataSource = nosp;
                Repeater1.DataBind();

                
                if (id > 0)
                {
                //lấy id người dùng
                NguoiDung nd = DAONguoiDung.GetNDbyID(id);
                tbID.Text = nd.IDND.ToString();
                tbHoTen.Text = nd.HoTen;
                tbemail.Text = nd.Email;
                tbSDT.Text = nd.SDT;
                tbMatkhau.Text = nd.MatKhau;
                tbQuequan.Text = nd.QueQuan;
                tbCMT.Text = nd.CMT;
                }
                SanPham spp = DaoSanPham.getDemIDSP(id);
                Lbdemtin.Text = Convert.ToInt32(spp.DemIDSP).ToString();
                ///

            }
        }

        protected void btnCapNhap_Click(object sender, EventArgs e)
        {
            NguoiDung kh = new NguoiDung();
            id = Convert.ToInt32(Session["user_id"]);
            kh.IDND = id;
            kh.MatKhau = tbMatkhau.Text;
            kh.CMT = tbCMT.Text;
            kh.QueQuan = tbQuequan.Text;
            kh.HoTen = tbHoTen.Text;
            kh.SDT = tbSDT.Text;
            kh.Email = tbemail.Text;
            if (DAONguoiDung.UpdateND(kh))
            {
            Response.Redirect("FormQuanlytincuaban.aspx");

            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

            //Response.Redirect("/PageAdmin/Views/button/createproduct.aspx?user_id=" + strId);
        }


    
        protected void Datalist1_ItemCommand(object source, DataListCommandEventArgs e)
        {
                int id = Convert.ToInt32(Datalist1.DataKeys[e.Item.ItemIndex]);
            if (e.CommandName == "btnXoa")
            {
                string strSql = "Delete from [SanPham] where ID= " + id;
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
                //xoa lisu
                string strsql1 = "Delete from [tbLichSuDoc] where IDSP= '"+ id +"'";

                using (SqlConnection sqlConnection = new SqlConnection(conn))
                {
                    SqlCommand cmd = new SqlCommand(strsql1, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    sqlConnection.Open();
                    cmd.ExecuteNonQuery();
                    sqlConnection.Close();
                    sqlConnection.Dispose();
                }
                Response.Redirect("FormQuanlytincuaban.aspx");
            }
            else
            {
            SanPham pr = DaoSanPham.GetprobyIDEdit(id);
            string strId = pr.ID.ToString();
            Response.Redirect("FormEditTin.aspx?ID=" + strId);
            }
        }

        protected void linklichsudoc_Click(object sender, EventArgs e)
        {
            lbls.Visible = true;
            id = Convert.ToInt32(Session["user_id"]);
            List<EntyLichSuDoc> ls = DaoLichSuDoc.getallIDLichSudoc(id);
            DatalistLS.DataSource = ls;
            DatalistLS.DataBind();
        }

        protected void DatalistLS_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(DatalistLS.DataKeys[e.Item.ItemIndex]);
            if (e.CommandName == "btnXoaLS")
            {
                string conn = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string strsql1 = "Delete from [tbLichSuDoc] where IDLS= '"+ id +"'" ;

                using (SqlConnection sqlConnection = new SqlConnection(conn))
                {
                    SqlCommand cmd = new SqlCommand(strsql1, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    sqlConnection.Open();
                    cmd.ExecuteNonQuery();
                    sqlConnection.Close();
                    sqlConnection.Dispose();
                }
                Response.Redirect("FormQuanlytincuaban.aspx");
            }
        }
    }
}