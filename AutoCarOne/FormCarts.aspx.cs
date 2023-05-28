using AutoCarOne.Control;
using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace AutoCarOne
{
    public partial class FormCarts : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null)
            {
                Response.Redirect("/FormFend/DangNhap.aspx?ViewProduct=0");
            }

             if (!IsPostBack)
            {
            id = (int)Session["user_id"];
            List<EntyGioHang> sp = DaoGioHang.getIDgiohang(id);
            Datalist.DataSource = sp;
            Datalist.DataBind();

            tbName.Text = Convert.ToString(Session["userName"]);


                EntyGioHang tt = DaoGioHang.TongTien((int)Session["user_id"]);
                if (tt != null)
                {
                    BindTongTien();
                }

                //đếm giỏ hàng
                id = (int)Session["user_id"];
                EntyGioHang gh =  DaoGioHang.getCountIDCart(id);
                lbDem.Text = Convert.ToInt32(gh.DemCart).ToString();
            }
        }

        protected void BindTongTien()
        {
            EntyGioHang tt = DaoGioHang.TongTien((int)Session["user_id"]);
            int money = Convert.ToInt32(tt.TongTien);
            lbThanhtien.Text = money.ToString("#,#");
        }

        protected void Datalist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            id = Convert.ToInt32(Datalist.DataKeys[e.Item.ItemIndex]);
            if (e.CommandName == "btnXoa")
            {
                string conn = ConfigurationManager.ConnectionStrings["Chuoikn"].ConnectionString;
                string strSql = "Delete from [GioHang] where IDCart= " + id;
                using (SqlConnection sqlConnection = new SqlConnection(conn))
                {
                    SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                    cmd.CommandType = System.Data.CommandType.Text;
                    sqlConnection.Open();
                    cmd.ExecuteNonQuery();
                    sqlConnection.Close();
                    sqlConnection.Dispose();
                }
                Response.Redirect("FormCarts.aspx");
            }

        }

        protected void btn_payy_Click(object sender, EventArgs e)
        {
            //Get Config Info
            string vnp_Returnurl = ConfigurationManager.AppSettings["vnp_Returnurl"]; //URL nhan ket qua tra ve 
            string vnp_Url = ConfigurationManager.AppSettings["vnp_Url"]; //URL thanh toan cua VNPAY 
            string vnp_TmnCode = ConfigurationManager.AppSettings["vnp_TmnCode"]; //Ma định danh merchant kết nối (Terminal Id)
            string vnp_HashSecret = ConfigurationManager.AppSettings["vnp_HashSecret"]; //Secret Key

            id = (int)Session["user_id"];
            List<EntyGioHang> sp = DaoGioHang.getIDgiohang(id);
            //Get payment input
            //OrderInfo order = new OrderInfo();
            EntyGioHang tt = DaoGioHang.TongTienVnpay((int)Session["user_id"]);
            int amount = Convert.ToInt32(tt.TongTien);
            var createDate = DateTime.Now;
            //Save order to db

            //Build URL for VNPAY
            VnPayLibrary vnpay = new VnPayLibrary();

            vnpay.AddRequestData("vnp_Version", VnPayLibrary.VERSION);
            vnpay.AddRequestData("vnp_Command", "pay");
            vnpay.AddRequestData("vnp_TmnCode", vnp_TmnCode);
            vnpay.AddRequestData("vnp_Amount", (amount * 100).ToString()); //Số tiền thanh toán. Số tiền không mang các ký tự phân tách thập phân, phần nghìn, ký tự tiền tệ. Để gửi số tiền thanh toán là 100,000 VND (một trăm nghìn VNĐ) thì merchant cần nhân thêm 100 lần (khử phần thập phân), sau đó gửi sang VNPAY là: 10000000
            
            vnpay.AddRequestData("vnp_BankCode", "");
            

            vnpay.AddRequestData("vnp_CreateDate", createDate.ToString("yyyyMMddHHmmss"));
            vnpay.AddRequestData("vnp_CurrCode", "VND");
            vnpay.AddRequestData("vnp_IpAddr", Utils.GetIpAddress());

            
            vnpay.AddRequestData("vnp_Locale", "vn");
            
            vnpay.AddRequestData("vnp_OrderInfo", "Thanh toan don hang:");
            vnpay.AddRequestData("vnp_OrderType", "other"); //default value: other

            vnpay.AddRequestData("vnp_ReturnUrl", vnp_Returnurl);
            vnpay.AddRequestData("vnp_TxnRef",Convert.ToString(createDate)); // Mã tham chiếu của giao dịch tại hệ thống của merchant. Mã này là duy nhất dùng để phân biệt các đơn hàng gửi sang VNPAY. Không được trùng lặp trong ngày

            //Add Params of 2.1.0 Version
            //Billing

            string paymentUrl = vnpay.CreateRequestUrl(vnp_Url, vnp_HashSecret);
            Response.Redirect(paymentUrl);
        }
    }
}