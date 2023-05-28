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
    public partial class WebForm4 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            loaddrop();
        }


        private void loaddrop()
        {
            ///In thông tin hộp số
            string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            string strSql = "Select ID, HopSo FROM tbHopSo ";
            List<EntyHopSo> productSeniorities = new List<EntyHopSo>();
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                //mở kết nối sql
                sqlConnection.Open();
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    EntyHopSo productSeniority = new EntyHopSo
                    {
                        ID = Convert.ToInt32(sqlDataReader["ID"]),
                        HopSo = Convert.ToString(sqlDataReader["HopSo"]),
                    };
                    productSeniorities.Add(productSeniority);
                }
                sqlDataReader.Close();
                sqlConnection.Close();
                sqlConnection.Dispose();

                drophopso.DataSource = productSeniorities;
                drophopso.DataTextField = "HopSo";
                drophopso.DataValueField = "ID";

                drophopso.DataBind();
            }
            //kiểu dáng
            string Sql = "Select ID, KieuDang FROM tbKieuDang ";
            List<EntyKieuDang> lss = new List<EntyKieuDang>();
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(Sql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                //mở kết nối sql
                sqlConnection.Open();
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    EntyKieuDang kd = new EntyKieuDang
                    {
                        ID = Convert.ToInt32(sqlDataReader["ID"]),
                        KieuDang = Convert.ToString(sqlDataReader["KieuDang"]),
                    };
                    lss.Add(kd);
                }
                sqlDataReader.Close();
                sqlConnection.Close();
                sqlConnection.Dispose();

                dropKieuDang.DataSource = lss;
                dropKieuDang.DataTextField = "KieuDang";
                dropKieuDang.DataValueField = "ID";

                dropKieuDang.DataBind();
            }

            //Nhiên liệu
            string Sqll = "Select ID, NhienLieu FROM tbNhienLieu ";
            List<EntyNhienLieu> lsss = new List<EntyNhienLieu>();
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(Sqll, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                //mở kết nối sql
                sqlConnection.Open();
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    EntyNhienLieu kd = new EntyNhienLieu
                    {
                        ID = Convert.ToInt32(sqlDataReader["ID"]),
                        NhienLieu = Convert.ToString(sqlDataReader["NhienLieu"]),
                    };
                    lsss.Add(kd);
                }
                sqlDataReader.Close();
                sqlConnection.Close();
                sqlConnection.Dispose();

                dropNhienlieu.DataSource = lsss;
                dropNhienlieu.DataTextField = "NhienLieu";
                dropNhienlieu.DataValueField = "ID";

                dropNhienlieu.DataBind();
            }
            //Xuất xứ
            string Sqlll = "Select IDXuatXu, TenNuoc FROM tbXuatXu ";
            List<EntyXuatXu> lssss = new List<EntyXuatXu>();
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(Sqlll, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                //mở kết nối sql
                sqlConnection.Open();
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    EntyXuatXu kd = new EntyXuatXu
                    {
                        IDXuatXu = Convert.ToInt32(sqlDataReader["IDXuatXu"]),
                        TenNuoc = Convert.ToString(sqlDataReader["TenNuoc"]),
                    };
                    lssss.Add(kd);
                }
                sqlDataReader.Close();
                sqlConnection.Close();
                sqlConnection.Dispose();

                dropXuatxu.DataSource = lssss;
                dropXuatxu.DataTextField = "TenNuoc";
                dropXuatxu.DataValueField = "IDXuatXu";

                dropXuatxu.DataBind();
            }
            //tình trạng
            string stringSql = "Select IDTinhTrang, TinhTrang FROM tbTinhTrang ";
            List<EntyTinhTrang> tr = new List<EntyTinhTrang>();
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(stringSql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                //mở kết nối sql
                sqlConnection.Open();
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    EntyTinhTrang kd = new EntyTinhTrang
                    {
                        IDTinhTrang = Convert.ToInt32(sqlDataReader["IDTinhTrang"]),
                        TinhTrang = Convert.ToString(sqlDataReader["TinhTrang"]),
                    };
                    tr.Add(kd);
                }
                sqlDataReader.Close();
                sqlConnection.Close();
                sqlConnection.Dispose();

                droptinhtrang.DataSource = tr;
                droptinhtrang.DataTextField = "TinhTrang";
                droptinhtrang.DataValueField = "IDTinhTrang";

                droptinhtrang.DataBind();
            }
        }
    }
}