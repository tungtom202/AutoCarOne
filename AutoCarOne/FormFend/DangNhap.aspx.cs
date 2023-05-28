using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormFend
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            NguoiDung users = DAONguoiDung.Login(tbemail.Text, tbpass.Text);
            if (users == null)
            {
                Response.Write("<script>alert('Tài khoản hoặc mật khẩu của bạn chưa đúng!!!: ') </script>");
            }
            else 
            {
                int ktraid = 0;
                ktraid = Convert.ToInt32(Request.QueryString["ViewProduct"].ToString());
                if (ktraid == 0)
                {
                Page.Session["user_id"] = users.IDND;
                Page.Session["userName"] = users.HoTen;
                Page.Session["email"] = users.Email;
                Page.Session["HoTen"] = users.HoTen;
                Page.Session["CMT"] = users.CMT;
                Page.Session["QueQuan"] = users.QueQuan;
                Page.Session["SDT"] = users.SDT;
                Response.Redirect("/TrangChu.aspx");
                }

                else
                {
                    Page.Session["user_id"] = users.IDND;
                    Page.Session["userName"] = users.HoTen;
                    Page.Session["email"] = users.Email;
                    Page.Session["HoTen"] = users.HoTen;
                    Page.Session["CMT"] = users.CMT;
                    Page.Session["QueQuan"] = users.QueQuan;
                    Page.Session["SDT"] = users.SDT;
                    Response.Redirect("/ProductDetail?ViewProduct=" + ktraid);
                }
            }
        }
    }
}