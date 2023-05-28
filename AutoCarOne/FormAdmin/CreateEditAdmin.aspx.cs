using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Page.Request.QueryString["user_id"]);
            int iddcv = Convert.ToInt32(Page.Request.QueryString["ID_CV"]);

            if (!Page.IsPostBack)
            {
                string hoten = Convert.ToString(Page.Session["Name"]);
                lablHoTen.Text = hoten;
                string eml = Convert.ToString(Page.Session["user_name"]);
                lablEmail.Text = eml;

                if (id > 0)
                {
                    lbcreate.Text = "Update Admin AutoCar ID";
                    AccAdmin kh = DaoAdmin.GetAccAdminID(id);
                    tbID.Text = id.ToString();
                    tbHoTen.Text = kh.FullName;
                    tbNgaySinh.Text = Convert.ToDateTime(kh.NgaySinh).ToShortDateString();
                    tbNgaySinh.TextMode = TextBoxMode.DateTime;
                    tbPass.Text = kh.Password;
                    tbEmail.Text = kh.UserName;
                    tbSDT.Text = kh.SDT.ToString();
                    dropChucvu.SelectedValue = iddcv.ToString();

                    //enibale
                    tbID.Enabled = false;
                    tbHoTen.Enabled = false;
                    tbNgaySinh.Enabled = false;
                    tbPass.Enabled = false;
                    tbEmail.Enabled = false;
                    tbSDT.Enabled = false;

                }
                else
                {
                    lbcreate.Text = "Insert Admin AutoCar ID";
                }


                //Chức vụ
                string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string stringSql = "Select IDCV, ChucVu FROM [tbChucVu] ";
                List<EntyChucVu> tr = new List<EntyChucVu>();
                using (SqlConnection sqlConnection = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand(stringSql, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    //mở kết nối sql
                    sqlConnection.Open();
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    while (sqlDataReader.Read())
                    {
                        EntyChucVu kd = new EntyChucVu
                        {
                            IDCV = Convert.ToInt32(sqlDataReader["IDCV"]),
                            ChucVu = Convert.ToString(sqlDataReader["ChucVu"]),
                        };
                        tr.Add(kd);
                    }
                    sqlDataReader.Close();
                    sqlConnection.Close();
                    sqlConnection.Dispose();

                    dropChucvu.DataSource = tr;
                    dropChucvu.DataTextField = "ChucVu";
                    dropChucvu.DataValueField = "IDCV";

                    dropChucvu.DataBind();
                    
                }
                
            }    
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            AccAdmin pr = new AccAdmin();
            pr.ID = id;
            pr.FullName = tbHoTen.Text;
            pr.UserName = tbEmail.Text;
            pr.Password = tbPass.Text;
            pr.IDCV = Convert.ToInt32(dropChucvu.Text);
            pr.SDT = Convert.ToInt32(tbSDT.Text);
            pr.NgaySinh = Convert.ToDateTime(tbNgaySinh.Text);
            
            if (DaoAdmin.CreateOrUpdate(pr))
            {
                Response.Redirect("/FormAdmin/QuanLyAdmin.aspx");
            }
        }
    }
}