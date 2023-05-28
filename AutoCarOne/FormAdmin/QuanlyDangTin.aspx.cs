using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace AutoCarOne.FormAdmin
{
    public partial class QuanlyDangTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadata();
                //List<SanPham> list = DaoSanPham.GetallProductHome();
                //gvSanPham.DataSource = list;
                //gvSanPham.DataBind();
                DropDownDuyet.Items.Insert(0, new ListItem("Tất cả tin", "0"));
                DropDownDuyet.Items.Insert(1, new ListItem("Đã duyệt tin", "1"));
                DropDownDuyet.Items.Insert(2, new ListItem("Chưa duyệt tin", "2"));

            }
        }

        protected void gvSanPham_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int _id = Convert.ToInt32(gvSanPham.DataKeys[e.NewEditIndex].Value);
            SanPham pr = DaoSanPham.GetprobyID(_id);
            string strId = pr.ID.ToString();
            Response.Redirect("/FormAdmin/ChiTietDangTin.aspx?user_id=" + strId);
        }
        //loaddata
        public void loadata()
        {
            string constr = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            string strSQL = "SELECT ID,TenOto, Gia, NamSx, img1, HopSo,TinhTrang,DiaChi,SoLuong,KieuDang, NhienLieu, XuatXu,NgayDang, DuyetTin from SanPham ORDER BY ID DESC";
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

        protected void gvSanPham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            string strSQL = "SELECT ID,TenOto, Gia, NamSx, img1, HopSo,TinhTrang,DiaChi,SoLuong,KieuDang, NhienLieu, XuatXu, DuyetTin, NgayDang from SanPham ORDER BY ID DESC";
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
                            gvSanPham.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
                            gvSanPham.PageIndex = e.NewPageIndex;
                            gvSanPham.DataSource = dt;
                            gvSanPham.DataBind();
                        }
                    }
                }
            }

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
            string constr = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
            string strSQL = "SELECT ID,TenOto, Gia, NamSx, img1, HopSo,TinhTrang,DiaChi,SoLuong,KieuDang, NhienLieu, XuatXu, DuyetTin, NgayDang from SanPham ORDER BY ID DESC";
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
                            gvSanPham.PageSize = Convert.ToInt32(DropDownList.SelectedItem.ToString());
                            gvSanPham.PageIndex = 0;
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
            //xoa lisu
            string strsql1 = "Delete from [tbLichSuDoc] where IDSP= " + ID.ToString();

            using (SqlConnection sqlConnection = new SqlConnection(conn))
            {
                SqlCommand cmd = new SqlCommand(strsql1, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
            Response.Redirect("/FormAdmin/QuanlyDangTin.aspx");
        }

        protected void DropDownDuyet_SelectedIndexChanged(object sender, EventArgs e)
        {
            int duyet = Convert.ToInt32(DropDownDuyet.SelectedValue);
            if (duyet == 0)
            {
                loadata();
            }
            else if (duyet == 1)
            {
                DropDownDuyet.SelectedItem.ToString();
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
                DropDownDuyet.SelectedItem.ToString();
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, [DuyetTin], Sokm, IDND, IDChuDe, NgayDang from [SanPham] where (ID LIKE '%" + tbsearch.Text + "%' or TenOto LIKE '%" + tbsearch.Text + "%' )";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            gvSanPham.DataSource = ds.Tables[0];
            gvSanPham.DataBind();
        }
    }
}