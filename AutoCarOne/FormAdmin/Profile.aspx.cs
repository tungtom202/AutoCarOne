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
    public partial class WebForm2 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("/FormAdmin/DangNhapAD.aspx");
            }
            id = Convert.ToInt32(Session["ID_Acc"]);
            int iddcv = Convert.ToInt32(Session["ID_CV"]);
            if (!Page.IsPostBack)
            {
                if (id > 0)
                {

                    //lấy id người dùng
                    AccAdmin kh = DaoAdmin.GetAccAdminID(id);
                    tbID.Text = id.ToString();
                    tbHoTen.Text = kh.FullName;
                    tbNgaySinh.Text = Convert.ToDateTime(kh.NgaySinh).ToShortDateString();
                    tbNgaySinh.TextMode = TextBoxMode.DateTime;
                    tbPass.Text = kh.Password;
                    tbEmail.Text = kh.UserName;
                    tbSDT.Text = kh.SDT.ToString();
                    dropChucvu.SelectedValue = iddcv.ToString();
                    lblEmail.Text = kh.UserName;
                    lblTen.Text = kh.FullName;


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
                Response.Redirect("/FormAdmin/Profile.aspx");
            }
        }
    }
}