using AutoCarOne.SQL.DAO;
using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoCarOne.FormAdmin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Page.Request.QueryString["user_id"]);
            if (!Page.IsPostBack)
            {
                if (id > 0)
                {
                    lbcreate.Text = "Update Banner AutoCar ID";
                    EntyBanner bn = DaoBanner.getIDBanner(id);
                    tbID.Text = id.ToString();
                    Image1.ImageUrl = bn.img1;
                    Image2.ImageUrl = bn.img2;
                    Image3.ImageUrl = bn.img3;
                    tbTieuDe.Text = bn.tieude;

                }
                else
                {
                    lbcreate.Text = "Insert Banner AutoCar ID";
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Page.Request.QueryString["user_id"]);

            EntyBanner pr = new EntyBanner();
            pr.id = id;
            pr.img1 = Image1.ImageUrl;
            pr.img2 = Image2.ImageUrl;
            pr.img3 = Image3.ImageUrl;
            pr.tieude = tbTieuDe.Text;

            if (DaoBanner.CreateOrUpdate(pr))
            {
                Response.Redirect("/FormAdmin/QuanLyBanner.aspx");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && FileUpload1.HasFile && CheckFileType(FileUpload1.FileName))
            {
                string fileName = "\\Acsset\\image\\Banner_home\\" + FileUpload1.FileName;
                string filePath = MapPath(fileName);
                FileUpload1.SaveAs(filePath);
                Image1.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload2.HasFile && CheckFileType(FileUpload2.FileName))
            {
                string fileName = "\\Acsset\\image\\Banner_home\\" + FileUpload2.FileName;
                string filePath = MapPath(fileName);
                FileUpload2.SaveAs(filePath);
                Image2.ImageUrl = fileName;
            }
            if (Page.IsValid && FileUpload3.HasFile && CheckFileType(FileUpload3.FileName))
            {
                string fileName = "\\Acsset\\image\\Banner_home\\" + FileUpload3.FileName;
                string filePath = MapPath(fileName);
                FileUpload3.SaveAs(filePath);
                Image3.ImageUrl = fileName;
            }
        }
    }
}