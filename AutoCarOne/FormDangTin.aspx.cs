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

namespace AutoCarOne
{
    public partial class FormDangTin : System.Web.UI.Page
    {
        int queryId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("/FormFend/DangNhap.aspx?ViewProduct=0");
            }
            if (!Page.IsPostBack)
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


        protected void btnDangNgay_Click(object sender, EventArgs e)
        {
            string imgefolder = "\\Acsset\\image\\Anhxe\\";
            string imgeFile = string.Empty;
            string imgefolder2 = "\\Acsset\\image\\Anhxe\\";
            string imgeFile2 = string.Empty;
            string imgefolder3 = "\\Acsset\\image\\Anhxe\\";
            string imgeFile3 = string.Empty;
            string imgefolder4 = "\\Acsset\\image\\Anhxe\\";
            string imgeFile4 = string.Empty;
            string imgefolder5 = "\\Acsset\\image\\Anhxe\\";
            string imgeFile5 = string.Empty;
            string imgefolder6 = "\\Acsset\\image\\Anhxe\\";
            string imgeFile6 = string.Empty;

            if (FileUpload1.HasFile)
            {
                imgeFile = FileUpload1.FileName;
                string imageSeverPath = Server.MapPath(imgefolder + imgeFile);
                FileUpload1.SaveAs(imageSeverPath);
            }
            if (FileUpload2.HasFile)
            {
                imgeFile2 = FileUpload2.FileName;
                string imageSeverPath = Server.MapPath(imgefolder2 + imgeFile2);
                FileUpload2.SaveAs(imageSeverPath);
            }
            if (FileUpload3.HasFile)
            {
                imgeFile3 = FileUpload3.FileName;
                string imageSeverPath = Server.MapPath(imgefolder3 + imgeFile3);
                FileUpload3.SaveAs(imageSeverPath);
            }
            if (FileUpload4.HasFile)
            {
                imgeFile4 = FileUpload4.FileName;
                string imageSeverPath = Server.MapPath(imgefolder4 + imgeFile4);
                FileUpload4.SaveAs(imageSeverPath);
            }
            if (FileUpload5.HasFile)
            {
                imgeFile5 = FileUpload5.FileName;
                string imageSeverPath = Server.MapPath(imgefolder5 + imgeFile5);
                FileUpload5.SaveAs(imageSeverPath);
            }
            if (FileUpload6.HasFile)
            {
                imgeFile6 = FileUpload6.FileName;
                string imageSeverPath = Server.MapPath(imgefolder6 + imgeFile6);
                FileUpload6.SaveAs(imageSeverPath);
            }
            SanPham pr = new SanPham();
            //pr.ID = queryId;
            pr.TenOto = tbTenOto.Text;
            pr.Hang = tbHangXe.Text;
            pr.MoTa = tbMota.Text;
            pr.img1 = imgefolder + imgeFile;
            pr.img2 = imgefolder2 + imgeFile2;
            pr.img3 = imgefolder3 + imgeFile3;
            pr.img4 = imgefolder4 + imgeFile4;
            pr.img5 = imgefolder5 + imgeFile5;
            pr.img6 = imgefolder6 + imgeFile6;
            pr.Gia = Convert.ToDouble(tbGia.Text);
            pr.TinhTP = tbtinhtp.Text;
            pr.DiaChi = tbdiachi.Text;
            pr.XuatXu = dropXuatxu.SelectedItem.ToString();
            pr.TinhTrang = droptinhtrang.SelectedItem.ToString();
            pr.KieuDang = dropKieuDang.SelectedItem.ToString();
            pr.HopSo = drophopso.SelectedItem.ToString();
            pr.NhienLieu = dropNhienlieu.SelectedItem.ToString();
            pr.SoLuong = Convert.ToInt32(tbSoluong.Text);
            pr.Sokm = tbSokm.Text;
            pr.NgayDang = Convert.ToDateTime(DateTime.Now.ToLongDateString());
            //pr.TenSale = tbNguoiban.Text;
            pr.IDND = Convert.ToInt32(Session["user_id"]);
            pr.NamSx = Convert.ToInt32(TbNamsx.Text);

            if (DaoSanPham.CreateDangTin(pr))
            {
                Response.Redirect("TrangChu.aspx");
            }
        }




    }

}