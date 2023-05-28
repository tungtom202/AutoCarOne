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

namespace AutoCarOne
{

    public partial class ProductDetail : System.Web.UI.Page
    {
        protected int id=0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
            {

                if (Request.QueryString["ViewProduct"] != null)
                {
                    
                    id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
                    List<SanPham> ls = DaoSanPham.GetAllProductsById(id);
                    
                    List<SanPham> lst = DaoSanPham.GetAllGiaLanBanh(id);
                    List<SanPham> lsid = DaoSanPham.GetAllSPById(id);
                    if (ls.Count > 0)
                    {
                        Repeater.DataSource = ls;
                        Repeater.DataBind();
                        Repeater1.DataSource = ls;
                        Repeater1.DataBind();
                        RepeaterID.DataSource = lsid;
                        RepeaterID.DataBind();
                        RepeaterLanBanh.DataSource = lst;
                        RepeaterLanBanh.DataBind();
                    }




                }
                


                string kieudang = Convert.ToString(Request.QueryString["KieuDangSS"]);
                List<SanPham> listid = DaoSanPham.getbyIDXelienquan(kieudang, id);
                Repeater2.DataSource = listid;
                Repeater2.DataBind();


                int idnd = Convert.ToInt32(Request.QueryString["IDNDSS"]);
                List<SanPham> listidnd = DaoSanPham.getbyIDXeNguoiBan(idnd, id);
                Repeater3.DataSource = listidnd;
                Repeater3.DataBind();
                                

                //get alll comment
                id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
                List<EntyComment> listcmt = DaoComment.getallComment(id);
                RepeaterBLKH.DataSource = listcmt;
                RepeaterBLKH.DataBind();
                
                //getall RepCMT
                List<EntyRepCMT> listrep = DaoComment.getallRepBinhLuan(id);
                RepeaterRepCMT.DataSource = listrep;
                RepeaterRepCMT.DataBind();

                SanPham sanPham = DaoSanPham.getCountSLKHOID(id);
                lbDemXeKho.Text = Convert.ToInt32(sanPham.SoLuong).ToString();
                lbHang.Text = sanPham.Hang;
                //trả giá
                lbTenxehoi.Text = sanPham.TenOto;
                tbGia.Text = Convert.ToDouble(sanPham.Gia).ToString();
                tbEmail.Text = sanPham.Email;


                update_lich_su();
            }
        }

        ///lịch sử đọc
        public void update_lich_su()
        {
            
            int id = Convert.ToInt32(Page.Request.QueryString["ViewProduct"]);
            int idnd = Convert.ToInt32(Page.Session["user_id"]);
          
            if (idnd != 0)
            {
                string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand
                   ("insert into tbLichSuDoc (IDND,IDSP) values (@IDND,@IDSP)", conn);
                    conn.Open();
                    cmd.Parameters.AddWithValue("@IDSP", id);
                    cmd.Parameters.AddWithValue("@IDND", idnd);
                    cmd.ExecuteNonQuery();
                    conn.Close();

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
            if (Session["userName"] == null)
            {
                Response.Redirect("/FormFend/DangNhap?ViewProduct=" + id);
            }
            else
            {

            string imgefolder = "\\Acsset\\image\\Anhxe\\";
            string imgeFile = string.Empty;
            if (fileAnh.HasFile)
            {
                imgeFile = fileAnh.FileName;
                string imageSeverPath = Server.MapPath(imgefolder + imgeFile);
                fileAnh.SaveAs(imageSeverPath);
            }
            EntyComment cmt = new EntyComment();
            cmt.IDND = Convert.ToInt32(Session["user_id"]);
            cmt.IDSP = id;
            cmt.Comment = tbBinhLuan.Text;
            cmt.image = imgefolder + imgeFile;
            if (DaoComment.ThemBinhLuan(cmt))
            {
                Response.Redirect("ProductDetail.aspx?ViewProduct=&&KieuDangSS=&&IDNDSS=" + id);
            }
            }
        }

        protected void btnCapNhap_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
           
            if (Session["userName"] == null)
            {
                Response.Redirect("/FormFend/DangNhap?ViewProduct=" + id);
            }
            else
            {

                EntyRepCMT cmt = new EntyRepCMT();
                cmt.IDND = Convert.ToInt32(Session["user_id"]);
                cmt.IDSP = id;
                cmt.RepCMT = tbBinhLuanND.Text;
                if (DaoComment.ThemBinhLuanND(cmt))
                {
                    Response.Redirect("ProductDetail.aspx?ViewProduct=&&KieuDangSS=&&IDNDSS=" + id);
                }
            }

        }



        protected void BtnBuy_Click(object sender, EventArgs e)
        {
            
            if (Session["userName"] == null)
            {
                Response.Redirect("FormFend/DangNhap.aspx?ViewProduct=" + id);
            }
            else
            {
                id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());

                EntyGioHang data = DaoGioHang.CheckGiohang((int)Session["user_id"], id);
                if (data == null)
                {
                    string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                    id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
                    using (SqlConnection conn = new SqlConnection(strConnection))
                    {
                        EntyGioHang entyGioHang = new EntyGioHang();
                        SqlCommand cmd = new SqlCommand(
                            "insert into [GioHang] ( IDSP, IDNguoiDung, SoLuong, NgayMua, TrangThaiThanhToan ) values ( @IDSP,  @IDNguoiDung, @SoLuong, @NgayMua, @TrangThaiThanhToan)", conn);
                        conn.Open();
                        cmd.Parameters.AddWithValue("@IDSP", id);
                        cmd.Parameters.AddWithValue("IDNguoiDung", Session["user_id"]);
                        cmd.Parameters.AddWithValue("@SoLuong", tbSoLuong.Text);
                        cmd.Parameters.AddWithValue("@NgayMua", DateTime.Now);
                        cmd.Parameters.AddWithValue("@TrangThaiThanhToan", false);

                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("FormCarts.aspx");
                    }
                }
                else
                {
                    string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                    id = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
                    using (SqlConnection conn = new SqlConnection(strConnection))
                    {
                        SqlCommand cmd = new SqlCommand(
                            //"update GioHang ( IDSanPham, UserID,SoLuong ) values ( @IDSanPham,  @UserID, @SoLuong)", conn);
                            "update [GioHang]  set SoLuong = SoLuong + @SoLuong where TrangThaiThanhToan='false' and IDSP = @IDSP and IDNguoiDung = @IDNguoiDung", conn);

                        conn.Open();
                        cmd.Parameters.AddWithValue("@IDSP", id);
                        cmd.Parameters.AddWithValue("@IDNguoiDung", Session["user_id"]);
                        cmd.Parameters.AddWithValue("@SoLuong", tbSoLuong.Text);

                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("FormCarts.aspx");
                    }
                }
            }
        }


        protected void LinkButtonGui_Click(object sender, EventArgs e)
        {
            int id = 0;
                id= Convert.ToInt32(Page.Request.QueryString["ViewProduct"]);
            int idnd = Convert.ToInt32(Page.Session["user_id"]);
            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand
                   ("insert into [tbTraGia] (IDSP, IDND,Gia, GiaDeXuat, Email, NgayGui) values (@IDSP,@IDND, @Gia, @GiaDeXuat, @Email, @NgayGui)", conn);
                    conn.Open();
                    cmd.Parameters.AddWithValue("@IDSP", id);
                    cmd.Parameters.AddWithValue("@IDND", idnd);
                    cmd.Parameters.AddWithValue("@Gia", tbGia.Text);
                    cmd.Parameters.AddWithValue("@GiaDeXuat", tbTragia.Text);
                    cmd.Parameters.AddWithValue("@Email", tbEmail.Text);
                    cmd.Parameters.AddWithValue("@NgayGui", DateTime.Now);

                int ktra =  cmd.ExecuteNonQuery();
                    if(ktra > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Trả giá của bạn đã được gửi!!!');", true);
                }
                    conn.Close();

                }
        }

        protected void btnTraGia_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FormFend/DangNhap.aspx?ViewProduct=0");
        }
    }
}