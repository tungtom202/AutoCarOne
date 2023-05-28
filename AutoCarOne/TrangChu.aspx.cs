using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne
{
    public partial class TrangChu : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Session["user_id"]);


            if (!Page.IsPostBack)
            {
                
                List<EntyBanner> listbanner = DaoBanner.getllBannerhome();
                RepeaterBanner.DataSource = listbanner;
                RepeaterBanner.DataBind();

                List<SanPham> list = DaoSanPham.GetallProductHome();
                Repeater.DataSource = list;
                Repeater.DataBind();
                //luotxem love
                List<SanPham> listLove = DaoSanPham.GetallProductLove();
                RepeaterLove.DataSource = listLove;
                RepeaterLove.DataBind();


                dropGia.Items.Insert(0, new ListItem("Giá", "0"));
                dropGia.Items.Insert(1, new ListItem("200tr - 500tr", "1"));
                dropGia.Items.Insert(2, new ListItem("500tr - 1 tỷ", "2"));
                dropGia.Items.Insert(3, new ListItem("1 tỷ - 2 tỷ", "3"));
                dropGia.Items.Insert(4, new ListItem("> 2 tỷ", "4"));

                //trả giá
                //if (Session["user_id"] == null)
                //{
                //    tbEmailorSDT.Enabled = false;
                //    tbGia.Enabled = false;
                //}
                //else
                //{
                //    id = Convert.ToInt32(Session["user_id"]);
                //    SanPham sp = DaoSanPham.getIDTraGia(id);
                //    tbEmailorSDT.Text = sp.SDT.ToString();
                //    tbGia.Text = Convert.ToDouble(sp.Gia).ToString();
                //    lbTenxe.Text = sp.TenOto;
                //    lbTinhtrang.Text = sp.TinhTrang;
                //    lbXuatxu.Text = sp.XuatXu;
                //    lbID.Text = sp.ID.ToString();

                //}
                  
                //đẩy csdl lên drop
                //kểu dáng
                string strConnection = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
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

                dropDongxe.DataSource = lss;
                dropDongxe.DataTextField = "KieuDang";
                dropDongxe.DataValueField = "ID";

                dropDongxe.DataBind();
                    dropDongxe.Items.Insert(0, new ListItem("Dòng xe", "0"));

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
                    droptinhtrang.Items.Insert(0, new ListItem( "Tình trạng", "0"));
                }
                //Hãng xe

                string stringSq = "Select IDHangXe, HangXe FROM tbHangXe ";
                List<EntyHangXe> tre = new List<EntyHangXe>();
                using (SqlConnection sqlConnection = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand(stringSq, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    //mở kết nối sql
                    sqlConnection.Open();
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    while (sqlDataReader.Read())
                    {
                        EntyHangXe hx = new EntyHangXe
                        {
                            IDHangXe = Convert.ToInt32(sqlDataReader["IDHangXe"]),
                            HangXe = Convert.ToString(sqlDataReader["HangXe"]),
                        };
                        tre.Add(hx);
                    }
                    sqlDataReader.Close();
                    sqlConnection.Close();
                    sqlConnection.Dispose();

                    dropHangxe.DataSource = tre;
                    dropHangxe.DataTextField = "HangXe";
                    dropHangxe.DataValueField = "IDHangXe";

                    dropHangxe.DataBind();
                    dropHangxe.Items.Insert(0, new ListItem("Hãng xe", "0"));

                }

            }
        }

        protected void btnTimkiemDrop_Click(object sender, EventArgs e)
        {
            string _search1 = Convert.ToString( dropHangxe.SelectedItem);
            string _search2 = Convert.ToString( droptinhtrang.SelectedItem);
            string _search3 = Convert.ToString(dropDongxe.SelectedItem);
            //string _search4 = Convert.ToString(dropGia.SelectedItem);
            
            List<SanPham> cartItems = DaoSanPham.SearchDropHome(_search1, _search2, _search3);
            RepeaterSearch.Visible = true;
            RepeaterSearch.DataSource = cartItems;
            RepeaterSearch.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton1.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton2.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton3.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton4.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton5.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton6.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton7.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton8.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

     

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton10.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton12.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            string _search = ImageButton11.AlternateText;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterSearchLogo.Visible = true;
            RepeaterSearchLogo.DataSource = cartItems;
            RepeaterSearchLogo.DataBind();
        }

        protected void btnGui_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FormFend/DangNhap.aspx?ViewProduct=0");
        }
    }
}