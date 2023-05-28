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

namespace AutoCarOne
{
    public partial class DanhBaOto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                List<NguoiDung> nd = DAONguoiDung.getallNDDanhba();
                RepeaterItem.DataSource = nd;
                RepeaterItem.DataBind();

                NguoiDung dem = DAONguoiDung.getDemnd();
                lbTongND.Text = Convert.ToInt32( dem.TongND).ToString();
            }
        }
        
    }
}