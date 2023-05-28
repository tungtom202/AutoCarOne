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
    public partial class WebForm3 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                    id = Convert.ToInt32(Page.Request.QueryString["IDSP"]);
                
                    loaddrownlist();
                if (id > 0)
                {
                    SanPham ls = DaoSanPham.GetprobyIDEdit(id);
                    tbID.Text = Convert.ToString(ls.ID);
                    tbHang.Text = ls.Hang;
                    tbTen.Text = ls.TenOto;
                    tbNamSX.Text = Convert.ToString(ls.NamSx);
                    tbkm.Text = Convert.ToString(ls.Sokm);
                    tbDiachi.Text = ls.DiaChi;
                    TbTinhtp.Text = ls.TinhTP;
                    Tbgia.Text = Convert.ToString(ls.Gia);
                    tbSoLuong.Text = Convert.ToString(ls.SoLuong);
                    Image1.ImageUrl = ls.img1;
                    Image2.ImageUrl = ls.img2;
                    Image3.ImageUrl = ls.img3;
                    Image4.ImageUrl = ls.img4;
                    Image5.ImageUrl = ls.img5;
                    Image6.ImageUrl = ls.img6;
                    ListItem listItem = dropXuatXu.Items.FindByText(ls.XuatXu);
                    if (listItem != null)
                    {
                        dropXuatXu.ClearSelection();
                        listItem.Selected = true;
                    }
                    
                    ListItem listitem1 = dropHopSo.Items.FindByText(ls.HopSo);
                    if (listitem1 != null)
                    {
                        dropHopSo.ClearSelection();
                        listitem1.Selected = true;
                    }
                    ListItem listitem2 = Dropnhienlieu.Items.FindByText(ls.NhienLieu);
                    if (listitem2 != null)
                    {
                        dropHopSo.ClearSelection();
                        listitem2.Selected = true;
                    }
                    ListItem listitem3 = Dropkieudang.Items.FindByText(ls.KieuDang);
                    if (listitem3 != null)
                    {
                        dropHopSo.ClearSelection();
                        listitem3.Selected = true;
                    }
                    ListItem listitem4 = Droptinhtrang.Items.FindByText(ls.TinhTrang);
                    if (listitem4 != null)
                    {
                        dropHopSo.ClearSelection();
                        listitem4.Selected = true;
                    }
                }
            }
               
        }

        private void loaddrownlist()
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

                dropHopSo.DataSource = productSeniorities;
                dropHopSo.DataTextField = "HopSo";
                dropHopSo.DataValueField = "ID";

                dropHopSo.DataBind();
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

                Dropkieudang.DataSource = lss;
                Dropkieudang.DataTextField = "KieuDang";
                Dropkieudang.DataValueField = "ID";

                Dropkieudang.DataBind();
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

                Dropnhienlieu.DataSource = lsss;
                Dropnhienlieu.DataTextField = "NhienLieu";
                Dropnhienlieu.DataValueField = "ID";

                Dropnhienlieu.DataBind();
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

                dropXuatXu.DataSource = lssss;
                dropXuatXu.DataTextField = "TenNuoc";
                dropXuatXu.DataValueField = "IDXuatXu";

                dropXuatXu.DataBind();
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

                Droptinhtrang.DataSource = tr;
                Droptinhtrang.DataTextField = "TinhTrang";
                Droptinhtrang.DataValueField = "IDTinhTrang";

                Droptinhtrang.DataBind();
            }

        }
    }
}