using AutoCarOne.SQL.Admin.DAO;
using AutoCarOne.SQL.Admin.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class DangNhapAD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            EntyAdmin users = DAOLogin.DangNhap(tbemali.Text, tbmatkhau.Text);
            if (users == null)
            {
                Response.Write("<script>alert('Tài khoản hoặc mật khẩu của bạn chưa đúng!!!: ') </script>");
            }
            else
            {

                Page.Session["ID_Acc"] = users.ID;
                Page.Session["Name"] = users.FullName;
                Page.Session["chucvu"] = users.ChucVu;
                Page.Session["ID_CV"] = users.IDCV;
                Page.Session["user_name"] = users.UserName;

                Response.Redirect("/FormAdmin/indexAdmin.aspx");

            }
        }
    }
}