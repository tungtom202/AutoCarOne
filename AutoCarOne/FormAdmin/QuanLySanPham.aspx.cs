using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class QuanLySanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadata();

                DropDownSearch.Items.Insert(0, new ListItem("Tất cả bài viết", "0"));
                DropDownSearch.Items.Insert(1, new ListItem("Tin đã duyệt", "1"));
                DropDownSearch.Items.Insert(2, new ListItem("Tin chưa duyệt duyệt", "2"));
            }
        }

        protected void gvSanPham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvSanPham.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            gvSanPham.PageIndex = e.NewPageIndex;
            loadata();
        }
        public static List<int> droplist()
        {
            List<int> lisst = new List<int>();
            for (int i = 5; i < 20; i += 5)
            {
                lisst.Add(i);
            }
            return lisst;
        }

        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            gvSanPham.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
            gvSanPham.PageIndex = 0;
            loadata();
        }
        //loaddata
        public void loadata()
        {
            string constr = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            string strSQL = "Select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, [DuyetTin], Sokm, IDND, IDChuDe, NgayDang from [SanPham] ORDER BY ID DESC";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(strSQL))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            gvSanPham.DataSource = dt;
                            gvSanPham.DataBind();
                        }
                    }
                }
            }
        }
        protected void gvSanPham_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int ID = Convert.ToInt32(gvSanPham.DataKeys[e.RowIndex].Value);
            string conn = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            string strsql = "Delete from [SanPham] where ID= " + ID.ToString();
            using (SqlConnection sqlConnection = new SqlConnection(conn))
            {
                SqlCommand cmd = new SqlCommand(strsql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
            Response.Redirect("/FormAdmin/QuanLySanPham.aspx");
        }

        protected void DropDownSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            int duyet = Convert.ToInt32(DropDownSearch.SelectedValue);
            if(duyet == 0)
            {
                loadata();
            }
            else if (duyet == 1)
            {
                DropDownSearch.SelectedItem.ToString();
                string constr = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string strSQL = "Select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, [DuyetTin], Sokm, IDND, IDChuDe, NgayDang from [SanPham] where DuyetTin=1 ORDER BY ID DESC";
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(strSQL))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                gvSanPham.DataSource = dt;
                                gvSanPham.DataBind();
                            }
                        }
                    }
                }


            }
            else
            {
                DropDownSearch.SelectedItem.ToString();
                string constr = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string strSQL = "Select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, [DuyetTin], Sokm, IDND, IDChuDe, NgayDang from [SanPham] where DuyetTin=0 ORDER BY ID DESC";
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand(strSQL))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                gvSanPham.DataSource = dt;
                                gvSanPham.DataBind();
                            }
                        }
                    }
                }
            }
        }

        protected void gvSanPham_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int _id = Convert.ToInt32(gvSanPham.DataKeys[e.NewEditIndex].Value);
            SanPham pr = DaoSanPham.GetprobyIDEdit(_id);
            string strId = pr.ID.ToString();
            Response.Redirect("/FormAdmin/CreateEditSP.aspx?IDSP=" + strId);


        }

        protected void btnNewSP_Click(object sender, EventArgs e)
        {
            Response.Redirect("/FormAdmin/FormDangTinAdmin.aspx");
        }
    }
}