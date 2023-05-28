using AutoCarOne.SQL.DAO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormFend
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = ConnectionSql.GetSqlConnection();
                SqlCommand cmd = new SqlCommand("INSERT INTO tbNguoiDung(HoTen, SDT, Email, MatKhau, QueQuan, CMT) VALUES(@hoten, @sdt, @email, @matkhau,@quequan, @cmt)", conn);
                cmd.CommandType = System.Data.CommandType.Text;
                conn.Open();
                cmd.Parameters.AddWithValue("@hoten", tbHoTen.Text);
                cmd.Parameters.AddWithValue("@sdt",tbSDT.Text);
                cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                cmd.Parameters.AddWithValue("@matkhau", tbMatKhau.Text);
                cmd.Parameters.AddWithValue("@quequan", tbTinhTP.Text);
                cmd.Parameters.AddWithValue("@cmt", tbCMT.Text);



                int rs = cmd.ExecuteNonQuery();

                if (rs > 0)
                {
                    Response.Write("<script>alert('Đăng ký tài khoản thành công!!!: ') </script>");
                    Response.Redirect("../TrangChu.aspx");
                    conn.Close();
                    conn.Dispose();
                }

            }
            catch
            {
                Response.Write("<script>alert('Tài khoản đã được đăng ký!!!: ') </script>");
            }

        }
    }
}