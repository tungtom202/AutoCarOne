using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne
{
    public partial class testthanhtoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Lấy các thông tin về giao dịch từ form thanh toán
            string item_name = Request.Form["item_name"].ToString();
            string amount = Request.Form["amount"].ToString();
            string currency_code = Request.Form["currency_code"].ToString();
            string txn_id = Request.Form["txn_id"].ToString();


            // Gửi yêu cầu thanh toán đến PayPal
            string url = "https://www.paypal.com/cgi-bin/webscr";

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
            req.Method = "POST";
            req.ContentType = "application/x-www-form-urlencoded";
            string postData = "cmd=_notify-synch&tx=" + txn_id + "&at=your-paypal-identity-token";
            req.ContentLength = postData.Length;
            StreamWriter writer = new StreamWriter(req.GetRequestStream(), Encoding.ASCII);
            writer.Write(postData);
            writer.Close();

            // Nhận phản hồi từ PayPal
            StreamReader reader = new StreamReader(req.GetResponse().GetResponseStream());
            string response = reader.ReadToEnd();
            reader.Close();


            // Kiểm tra xem thanh toán có thành công hay không
            if (response.StartsWith("SUCCESS"))
            {
                // Lấy các thông tin từ phản hồi của PayPal
                string[] lines = response.Split('\n');
                Dictionary<string, string> dictionary = new Dictionary<string, string>();
                foreach (string line in lines)
                {
                    string[] keyval = line.Split('=');
                    if (keyval.Length == 2)
                    {
                        dictionary[keyval[0]] = HttpUtility.UrlDecode(keyval[1]);
                    }
                }
                string transaction_id = dictionary["txn_id"];
                string payment_status = dictionary["payment_status"];
                // Lưu thông tin giao dịch vào cơ sở dữ liệu của bạn
                // ...
            }
            else if (response.StartsWith("FAIL"))
            {
                // Hiển thị thông báo lỗi
                // ...
            }
            else
            {
                // Không nhận được phản hồi hợp lệ từ PayPal
                // ...
            }
        }
    }
}