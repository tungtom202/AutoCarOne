using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class indexAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("/FormAdmin/DangNhapAD.aspx");
            }

            if (HttpContext.Current.Session["chucvu"] != null)
                lbHello.Text = Page.Session["chucvu"].ToString();
        }
    }
}