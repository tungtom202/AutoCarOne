using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne
{
    public partial class Otocu : System.Web.UI.Page
    {
        string _search = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            _search = Convert.ToString(Request.QueryString["search"]);

            List<SanPham> list = DaoSanPham.GetallProductOtoCu();
            Repeater.DataSource = list;
            Repeater.DataBind();
            
            //dem id
            SanPham listID = DaoSanPham.getCountID();
            lbDemID.Text = listID.DemSP.ToString();


            if (!Page.IsPostBack)
            {
                List<SanPham> listall = DaoSanPham.GetallTatca();
                Repeaterall.DataSource = listall;
                Repeaterall.DataBind();

                List<NguoiDung> listsalon = DAONguoiDung.getallNDDanhba();
                RepeaterSalon.DataSource = listsalon;
                RepeaterSalon.DataBind();


                if (_search != null)
            {
                List<SanPham> lists = DaoSanPham.SearchAllHome(_search);
                RepeaterSearchHeader.DataSource = lists;
                RepeaterSearchHeader.DataBind();
            }
                
            }
        }
        
        
        protected void btnsearchName_Click(object sender, EventArgs e)
        {
            string _search = btnsearchName.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnlexus_Click(object sender, EventArgs e)
        {
            string _search = btnlexus.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnhonda_Click(object sender, EventArgs e)
        {
            string _search = btnhonda.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnkia_Click(object sender, EventArgs e)
        {
            string _search = btnkia.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnmazda_Click(object sender, EventArgs e)
        {
            string _search = btnmazda.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnBmw_Click(object sender, EventArgs e)
        {
            string _search = btnBmw.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnHyundai_Click(object sender, EventArgs e)
        {
            string _search = btnHyundai.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnMisu_Click(object sender, EventArgs e)
        {
            string _search = btnMisu.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnChevrolet_Click(object sender, EventArgs e)
        {
            string _search = btnChevrolet.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnVolvo_Click(object sender, EventArgs e)
        {
            string _search = btnVolvo.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnIsuzu_Click(object sender, EventArgs e)
        {
            string _search = btnIsuzu.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

      

        protected void btnVin_Click(object sender, EventArgs e)
        {
            string _search = btnVin.Text;
            List<SanPham> cartItems = DaoSanPham.SearchToyota(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2023_Click(object sender, EventArgs e)
        {
            int _search = Convert.ToInt32( btn2023.Text);
            List<SanPham> cartItems = DaoSanPham.SearchNamsx(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2022_Click(object sender, EventArgs e)
        {
            int _search = Convert.ToInt32(btn2022.Text);
            List<SanPham> cartItems = DaoSanPham.SearchNamsx(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2021_Click(object sender, EventArgs e)
        {
            int _search = Convert.ToInt32(btn2021.Text);
            List<SanPham> cartItems = DaoSanPham.SearchNamsx(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2020_Click(object sender, EventArgs e)
        {
            int _search = Convert.ToInt32(btn2020.Text);
            List<SanPham> cartItems = DaoSanPham.SearchNamsx(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2019_Click(object sender, EventArgs e)
        {
            int _search = Convert.ToInt32(btn2019.Text);
            List<SanPham> cartItems = DaoSanPham.SearchNamsx(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2018_Click(object sender, EventArgs e)
        {
            int _search = Convert.ToInt32(btn2018.Text);
            List<SanPham> cartItems = DaoSanPham.SearchNamsx(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnMoi_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString("New");
            List<SanPham> cartItems = DaoSanPham.SearchMoiCu(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btnCu_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString("Old");
            List<SanPham> cartItems = DaoSanPham.SearchMoiCu(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn2ty_Click(object sender, EventArgs e)
        {
          
            List<SanPham> cartItems = DaoSanPham.SearchByPrice(">2000");
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn1_2ty_Click(object sender, EventArgs e)
        {
            List<SanPham> cartItems = DaoSanPham.SearchByPrice("1 tỷ - 2 tỷ");
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn700_1ty_Click(object sender, EventArgs e)
        {
            List<SanPham> cartItems = DaoSanPham.SearchByPrice("700tr - 1 tỷ");
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn500_700_Click(object sender, EventArgs e)
        {
            List<SanPham> cartItems = DaoSanPham.SearchByPrice("500 - 700tr");
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn300_500_Click(object sender, EventArgs e)
        {
            List<SanPham> cartItems = DaoSanPham.SearchByPrice("300 - 500tr");
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void btn300_Click(object sender, EventArgs e)
        {
            List<SanPham> cartItems = DaoSanPham.SearchByPrice("<300");
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString("New");
            List<SanPham> cartItems = DaoSanPham.SearchMoiCu(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat1_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat1.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat2_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat2.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat3_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat3.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat4_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat4.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat5_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat5.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat6_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat6.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat7_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat7.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat8_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat8.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
          
        }

        protected void linkbtnnoibat9_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat9.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }

        protected void linkbtnnoibat10_Click(object sender, EventArgs e)
        {
            string _search = Convert.ToString(linkbtnnoibat10.Text);
            List<SanPham> cartItems = DaoSanPham.SearchOtoNoiBat(_search);
            RepeaterToyota.Visible = true;
            RepeaterToyota.DataSource = cartItems;
            RepeaterToyota.DataBind();
        }
    }
}