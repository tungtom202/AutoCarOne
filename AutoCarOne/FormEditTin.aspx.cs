using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne
{
    public partial class FormEditTin : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
                id = Convert.ToInt32(Page.Request.QueryString["ID"]);
            if (!Page.IsPostBack)
            {
                loaddrop();

                if (id > 0)
                {
                    SanPham pr = DaoSanPham.GetprobyIDEdit(id);
                    lbID.Text = id.ToString();
                    tbTenOto.Text = pr.TenOto;
                    tbHangXe.Text = pr.Hang;
                    tbSokm.Text = pr.Sokm;
                    tbdiachi.Text = pr.DiaChi;
                    tbtinhtp.Text = pr.TinhTP;
                    tbMota.Text = pr.MoTa;
                    Image1.ImageUrl = pr.img1;
                    Image2.ImageUrl = pr.img2;
                    Image3.ImageUrl = pr.img3;
                    Image4.ImageUrl = pr.img4;
                    Image5.ImageUrl = pr.img5;
                    Image6.ImageUrl = pr.img6;
                    tbGia.Text = Convert.ToString(pr.Gia);
                    TbNamsx.Text = Convert.ToString(pr.NamSx);
                    tbSoluong.Text = Convert.ToString(pr.SoLuong);
                    ListItem listitem = dropXuatxu.Items.FindByText(pr.XuatXu);
                    if (listitem != null)
                    {
                        dropXuatxu.ClearSelection();
                        listitem.Selected = true;
                    }
                    ListItem listitem1 = drophopso.Items.FindByText(pr.HopSo);
                    if (listitem1 != null)
                    {
                        drophopso.ClearSelection();
                        listitem1.Selected = true;
                    }
                    ListItem listitem2 = dropNhienlieu.Items.FindByText(pr.NhienLieu);
                    if (listitem2 != null)
                    {
                        dropNhienlieu.ClearSelection();
                        listitem2.Selected = true;
                    }
                    ListItem listitem3 = dropKieuDang.Items.FindByText(pr.KieuDang);
                    if (listitem3 != null)
                    {
                        dropKieuDang.ClearSelection();
                        listitem3.Selected = true;
                    }
                    ListItem listitem4 = droptinhtrang.Items.FindByText(pr.TinhTrang);
                    if (listitem4 != null)
                    {
                        droptinhtrang.ClearSelection();
                        listitem4.Selected = true;
                    }
                }

            }

        }

       
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Page.Request.QueryString["ID"]);

            SanPham pr = new SanPham();
            pr.ID = id;
            pr.TenOto = tbTenOto.Text;
            pr.Hang = tbHangXe.Text;
            pr.DiaChi = tbdiachi.Text;
            pr.TinhTP = tbtinhtp.Text;
            pr.MoTa = tbMota.Text;
            pr.img1 = Image1.ImageUrl;
            pr.img2 = Image2.ImageUrl;
            pr.img3 = Image3.ImageUrl;
            pr.img4 = Image4.ImageUrl;
            pr.img5 = Image5.ImageUrl;
            pr.img6 = Image6.ImageUrl;
            pr.Gia = Convert.ToDouble(tbGia.Text);
            pr.XuatXu = dropXuatxu.SelectedItem.ToString();
            pr.HopSo = drophopso.SelectedItem.ToString();
            pr.NhienLieu = dropNhienlieu.SelectedItem.ToString();
            pr.KieuDang = dropKieuDang.SelectedItem.ToString();
            pr.TinhTrang = droptinhtrang.SelectedItem.ToString();
            pr.SoLuong = Convert.ToInt32(tbSoluong.Text);
            pr.NamSx = Convert.ToInt32(TbNamsx.Text);
            pr.Sokm = Convert.ToString(tbSokm.Text);
            pr.NgayDang = Convert.ToDateTime(DateTime.Now);
            if (DaoSanPham.CreateDangTin(pr))
            {
                Response.Redirect("FormQuanlytincuaban.aspx");
            }
        }
        protected void loaddrop()
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

        public void check_image()
        {
            if (Page.IsValid && FileUpload1.HasFile)
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload1.FileName;
                string filePath = MapPath(fileName);
                FileUpload1.SaveAs(filePath);
                Image1.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload2.HasFile)
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload2.FileName;
                string filePath = MapPath(fileName);
                FileUpload2.SaveAs(filePath);
                Image2.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload3.HasFile)
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload3.FileName;
                string filePath = MapPath(fileName);
                FileUpload3.SaveAs(filePath);
                Image3.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload4.HasFile)
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload4.FileName;
                string filePath = MapPath(fileName);
                FileUpload4.SaveAs(filePath);
                Image4.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload5.HasFile)
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload5.FileName;
                string filePath = MapPath(fileName);
                FileUpload5.SaveAs(filePath);
                Image5.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload6.HasFile)
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload6.FileName;
                string filePath = MapPath(fileName);
                FileUpload6.SaveAs(filePath);
                Image6.ImageUrl = fileName;
            }
        }

      
        bool CheckFileType(string fileName)
        {

            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void btnUploadImg_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid && FileUpload1.HasFile && CheckFileType(FileUpload1.FileName))
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload1.FileName;
                string filePath = MapPath(fileName);
                FileUpload1.SaveAs(filePath);
                Image1.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload2.HasFile && CheckFileType(FileUpload2.FileName))
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload2.FileName;
                string filePath = MapPath(fileName);
                FileUpload2.SaveAs(filePath);
                Image2.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload3.HasFile && CheckFileType(FileUpload3.FileName))
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload3.FileName;
                string filePath = MapPath(fileName);
                FileUpload3.SaveAs(filePath);
                Image3.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload4.HasFile && CheckFileType(FileUpload4.FileName))
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload4.FileName;
                string filePath = MapPath(fileName);
                FileUpload4.SaveAs(filePath);
                Image4.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload5.HasFile && CheckFileType(FileUpload5.FileName))
            {
                string fileName = "\\Acsset\\image\\Anhxe\\" + FileUpload5.FileName;
                string filePath = MapPath(fileName);
                FileUpload5.SaveAs(filePath);
                Image5.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload6.HasFile && CheckFileType(FileUpload6.FileName))
            {
                string fileName = ".\\Acsset\\image\\Anhxe\\" + FileUpload6.FileName;
                string filePath = MapPath(fileName);
                FileUpload6.SaveAs(filePath);
                Image6.ImageUrl = fileName;
            }
        }

    
    }
}