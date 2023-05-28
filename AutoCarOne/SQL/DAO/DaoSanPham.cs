using AutoCarOne.SQL.Entity;
using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Configuration;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DaoSanPham
    {
        public static List<SanPham> GetallProductHome()
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select top 8 ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu, XuatXu, DiaChi, DuyetTin, SDT, KieuDang, SanPham.IDND from [SanPham], [tbNguoiDung] where  tbNguoiDung.IDND=SanPham.IDND and IDChuDe='1' and DuyetTin = 1 ORDER BY ID DESC";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.DiaChi = Convert.ToString(reader["DiaChi"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        //nhiều lượt xem nhất
        public static List<SanPham> GetallProductLove()
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select Top(10) ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu, XuatXu, DuyetTin, SDT, KieuDang,LuotXem, SanPham.IDND, ImgTop from [SanPham], [tbNguoiDung] where  tbNguoiDung.IDND=SanPham.IDND  and LuotXem > 30 ORDER BY LuotXem DESC  ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.LuotXem = Convert.ToInt32(reader["LuotXem"]);
                user.ImgTop = Convert.ToString(reader["ImgTop"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        //duyệt tin 
        public static List<SanPham> GetallProductDuyettin()
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu, XuatXu from [SanPham] where DuyetTin = '1' ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }


        //lấy id
        // lấy id product
        // lấy id product

        public static SanPham GetprobyID(int _id)
        {
            SanPham pr = new SanPham();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu, XuatXu,SoLuong, DuyetTin from [SanPham]  where ID=@id ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;


            conn.Open();

            sqlCommand.Parameters.AddWithValue("@id", _id);

            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                pr.ID = Convert.ToInt32(reader["ID"]);
                pr.TenOto = Convert.ToString(reader["TenOto"]);
                pr.Gia = Convert.ToDouble(reader["Gia"]);
                pr.NamSx = Convert.ToInt32(reader["NamSx"]);
                pr.img1 = Convert.ToString(reader["img1"]);
                pr.HopSo = Convert.ToString(reader["HopSo"]);
                pr.XuatXu = Convert.ToString(reader["XuatXu"]);
                pr.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                pr.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                pr.SoLuong = Convert.ToInt32(reader["SoLuong"]);


            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return pr;
        }
        // lấy id product
        public static SanPham GetprobyIDEdit(int _id)
        {
            SanPham pr = new SanPham();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, MoTa, Hang, NamSx, img1,img2, img3, img4, img5, img6, DiaChi, TinhTP, KieuDang, Sokm, HopSo, NhienLieu, XuatXu,SoLuong, DuyetTin from [SanPham]  where ID=@id";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;


            conn.Open();

            sqlCommand.Parameters.AddWithValue("@id", _id);

            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                pr.ID = Convert.ToInt32(reader["ID"]);
                pr.TenOto = Convert.ToString(reader["TenOto"]);
                pr.Gia = Convert.ToDouble(reader["Gia"]);
                pr.NamSx = Convert.ToInt32(reader["NamSx"]);
                pr.img1 = Convert.ToString(reader["img1"]);
                pr.img2 = Convert.ToString(reader["img2"]);
                pr.img3 = Convert.ToString(reader["img3"]);
                pr.img4 = Convert.ToString(reader["img4"]);
                pr.img5 = Convert.ToString(reader["img5"]);
                pr.img6 = Convert.ToString(reader["img6"]);
                pr.Hang = Convert.ToString(reader["Hang"]);
                pr.Sokm = Convert.ToString(reader["Sokm"]);
                pr.KieuDang = Convert.ToString(reader["KieuDang"]);
                pr.DiaChi = Convert.ToString(reader["DiaChi"]);
                pr.TinhTP = Convert.ToString(reader["TinhTP"]);
                pr.MoTa = Convert.ToString(reader["MoTa"]);
                pr.HopSo = Convert.ToString(reader["HopSo"]);
                pr.XuatXu = Convert.ToString(reader["XuatXu"]);
                pr.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                pr.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                pr.SoLuong = Convert.ToInt32(reader["SoLuong"]);


            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return pr;
        }
        //chi tiết sản phẩm
        public static List<SanPham> GetAllProductsById(int _id)
        {
            List<SanPham> prs = new List<SanPham>();
            string sql = sql = " Update [SanPham]  set LuotXem = LuotXem+1   where ID ='" + _id + "'";
            
            SqlConnection conn = ConnectionSql.GetSqlConnection();
           
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            sql = "select ID,TenOto, Gia,Sokm, NamSx, SDT, img1, HopSo,LuotXem, NhienLieu, XuatXu,TinhTrang, SanPham.SoLuong, DiaChi,Hang,TinhTP, img2, img3, img4, img5, img6,KieuDang, NgayDang, MoTa ,SanPham.IDND, tbNguoiDung.HoTen, tbNguoiDung.QueQuan from [SanPham], [tbNguoiDung] where SanPham.IDND = tbNguoiDung.IDND and ID ='" + _id + "' ";
            cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            cmd.CommandType = System.Data.CommandType.Text;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                SanPham pr = new SanPham
                {
                    ID = Convert.ToInt32(rd["ID"]),
                    LuotXem = Convert.ToInt32(rd["LuotXem"]),
                    TenOto = Convert.ToString(rd["TenOto"]),
                    img1 = Convert.ToString(rd["img1"]),
                    img2 = Convert.ToString(rd["img2"]),
                    img3 = Convert.ToString(rd["img3"]),
                    img4 = Convert.ToString(rd["img4"]),
                    img5 = Convert.ToString(rd["img5"]),
                    img6 = Convert.ToString(rd["img6"]),
                    HopSo = Convert.ToString(rd["HopSo"]),
                    NhienLieu = Convert.ToString(rd["NhienLieu"]),
                    XuatXu = Convert.ToString(rd["XuatXu"]),
                    DiaChi = Convert.ToString(rd["DiaChi"]),
                    KieuDang = Convert.ToString(rd["KieuDang"]),
                    SDT = Convert.ToString(rd["SDT"]),
                    MoTa = Convert.ToString(rd["MoTa"]),
                    TinhTP = Convert.ToString(rd["TinhTP"]),
                    Gia = Convert.ToDouble(rd["Gia"]),
                    TinhTrang = Convert.ToString(rd["TinhTrang"]),
                    Hang = Convert.ToString(rd["Hang"]),
                    IDND = Convert.ToInt32(rd["IDND"]),
                    HoTen = Convert.ToString(rd["HoTen"]),
                    QueQuan = Convert.ToString(rd["QueQuan"]),
                    NgayDang = Convert.ToDateTime(rd["NgayDang"]),
                    NamSx = Convert.ToInt32(rd["NamSx"]),
                    SoLuong = Convert.ToInt32(rd["SoLuong"]),
                    Sokm = Convert.ToString(rd["Sokm"]),
                };
                prs.Add(pr);
            }
            rd.Close();
            conn.Dispose();
            return prs;
            
           
        }
        //chi tiết sản phẩm
        public static List<SanPham> GetAllSPById(int _id)
        {
            List<SanPham> prs = new List<SanPham>();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu, XuatXu,TinhTrang,DiaChi,Hang,TinhTP, img2, img3, img4, img5, img6,KieuDang, NgayDang, MoTa ,SanPham.IDND, tbNguoiDung.HoTen, tbNguoiDung.QueQuan from [SanPham],tbNguoiDung where SanPham.IDND = tbNguoiDung.IDND and ID = " + _id + "";
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                SanPham pr = new SanPham
                {
                    ID = Convert.ToInt32(rd["ID"]),
                    TenOto = Convert.ToString(rd["TenOto"]),
                    img1 = Convert.ToString(rd["img1"]),
                    img2 = Convert.ToString(rd["img2"]),
                    img3 = Convert.ToString(rd["img3"]),
                    img4 = Convert.ToString(rd["img4"]),
                    img5 = Convert.ToString(rd["img5"]),
                    img6 = Convert.ToString(rd["img6"]),
                    HopSo = Convert.ToString(rd["HopSo"]),
                    NhienLieu = Convert.ToString(rd["NhienLieu"]),
                    XuatXu = Convert.ToString(rd["XuatXu"]),
                    DiaChi = Convert.ToString(rd["DiaChi"]),
                    KieuDang = Convert.ToString(rd["KieuDang"]),
                    MoTa = Convert.ToString(rd["MoTa"]),
                    TinhTP = Convert.ToString(rd["TinhTP"]),
                    Gia = Convert.ToDouble(rd["Gia"]),
                    TinhTrang = Convert.ToString(rd["TinhTrang"]),
                    Hang = Convert.ToString(rd["Hang"]),
                    IDND = Convert.ToInt32(rd["IDND"]),
                    HoTen = Convert.ToString(rd["HoTen"]),
                    QueQuan = Convert.ToString(rd["QueQuan"]),
                    NgayDang = Convert.ToDateTime(rd["NgayDang"]),
                    NamSx = Convert.ToInt32(rd["NamSx"]),
                    //  Totallprice = Convert.ToInt32(rd["Totallprice"])
                };
                prs.Add(pr);
            }
            rd.Close();
            conn.Dispose();
            return prs;
        }
        public static List<SanPham> GetAllGiaLanBanh(int _id)
        {
            List<SanPham> prs = new List<SanPham>();
            string sql = "select ID,TenOto, NamSx, img1, HopSo, NhienLieu, XuatXu,TinhTrang,DiaChi,Hang,TinhTP, img2, img3, img4, img5, img6,KieuDang, NgayDang, MoTa ,SanPham.IDND, tbNguoiDung.HoTen, tbNguoiDung.QueQuan ,Gia, Gia+Gia*0.12 AS 'LanBanh'  from [SanPham],tbNguoiDung where SanPham.IDND = tbNguoiDung.IDND and ID = " + _id + " and TinhTrang = 'new'";
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                SanPham pr = new SanPham
                {
                    ID = Convert.ToInt32(rd["ID"]),
                    TenOto = Convert.ToString(rd["TenOto"]),
                    LanBanh = Convert.ToString(rd["LanBanh"]),
                    img1 = Convert.ToString(rd["img1"]),
                    img2 = Convert.ToString(rd["img2"]),
                    img3 = Convert.ToString(rd["img3"]),
                    img4 = Convert.ToString(rd["img4"]),
                    img5 = Convert.ToString(rd["img5"]),
                    img6 = Convert.ToString(rd["img6"]),
                    HopSo = Convert.ToString(rd["HopSo"]),
                    NhienLieu = Convert.ToString(rd["NhienLieu"]),
                    XuatXu = Convert.ToString(rd["XuatXu"]),
                    DiaChi = Convert.ToString(rd["DiaChi"]),
                    KieuDang = Convert.ToString(rd["KieuDang"]),
                    MoTa = Convert.ToString(rd["MoTa"]),
                    TinhTP = Convert.ToString(rd["TinhTP"]),
                    Gia = Convert.ToDouble(rd["Gia"]),
                    TinhTrang = Convert.ToString(rd["TinhTrang"]),
                    Hang = Convert.ToString(rd["Hang"]),
                    IDND = Convert.ToInt32(rd["IDND"]),
                    HoTen = Convert.ToString(rd["HoTen"]),
                    QueQuan = Convert.ToString(rd["QueQuan"]),
                    NgayDang = Convert.ToDateTime(rd["NgayDang"]),
                    NamSx = Convert.ToInt32(rd["NamSx"]),
                    //  Totallprice = Convert.ToInt32(rd["Totallprice"])
                };
                prs.Add(pr);
            }
            rd.Close();
            conn.Dispose();
            return prs;
        }
        //chi tiết tin giao đc duyêhjt
        public static List<SanPham> GetAllProTinGiaoById(int _id)
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo,tbNguoiDung.SDT, NhienLieu,KieuDang, XuatXu, DuyetTin, SanPham.IDND from [SanPham], [tbNguoiDung] where SanPham.IDND = tbNguoiDung.IDND and SanPham.IDND = @id and DuyetTin = 1";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", _id);
            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.SDT = Convert.ToString(reader["SDT"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        //chi tiết tin giao chưa duyệt
        public static List<SanPham> GetAllProTinGiaoNoById(int _id)
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu, XuatXu, DuyetTin, SanPham.IDND, tbNguoiDung.SDT from [SanPham], [tbNguoiDung] where SanPham.IDND = tbNguoiDung.IDND and SanPham.IDND = @id and DuyetTin = 0";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", _id);
            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                user.SDT = Convert.ToString(reader["SDT"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }

        //lấy id mẫu xe theo kiểu dáng
        public static List<SanPham> getbyIDXelienquan(string _dangxe, int _idsp)
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, img1,TinhTrang, HopSo, TinhTP,KieuDang, tbNguoiDung.IDND,tbNguoiDung.SDT, tbNguoiDung.HoTen from [SanPham], [tbNguoiDung] where tbNguoiDung.IDND = SanPham.IDND and  KieuDang='" + _dangxe+"' and not ID = '"+ _idsp+"' ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            
            conn.Open();
            
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.SDT = Convert.ToString(reader["SDT"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        //lấy id mẫu xe theo người bán
        public static List<SanPham> getbyIDXeNguoiBan(int _id, int _idsp)
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, img1,TinhTrang, HopSo, TinhTP,KieuDang, SanPham.IDND,tbNguoiDung.SDT, tbNguoiDung.HoTen, DuyetTin from [SanPham], [tbNguoiDung] where SanPham.IDND= tbNguoiDung.IDND and SanPham.IDND='" + _id + "' and not ID = '"+ _idsp+ "' and DuyetTin = 1";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }

        ///getall ô tô cũ

        public static List<SanPham> GetallProductOtoCu()
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, SDT,Sokm, HopSo, NhienLieu, TinhTP,KieuDang, TinhTrang,SanPham.IDND, tbNguoiDung.HoTen from [SanPham],tbNguoiDung where  TinhTrang = 'old' and SanPham.IDND = tbNguoiDung.IDND ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.Sokm = Convert.ToString(reader["Sokm"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        ///getall ô tô cũ

        public static List<SanPham> GetallTatca()
        {
            List<SanPham> allUser = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia,SDT, NamSx, img1, HopSo, NhienLieu, TinhTP,KieuDang, DuyetTin, TinhTrang,SanPham.IDND, tbNguoiDung.HoTen from [SanPham],tbNguoiDung where SanPham.IDND = tbNguoiDung.IDND and  DuyetTin = 1 ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                user.SDT = Convert.ToString(reader["SDT"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
        ///Đếm ô ID ô tô
        public static SanPham getCountID()
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();

            string sql = "Select Count(ID) as DemSP from [SanPham] ";

            SanPham objtag = null;
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            //Mở kết nối tới CSDL
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                objtag = new SanPham();
                objtag.DemSP = Convert.ToInt32(reader["DemSP"]);

            }
            reader.Close();
            conn.Close();
            conn.Dispose();
            return objtag;

        
    }
        ///Đếm ô sl kho ô tô
        public static SanPham getCountSLKHOID(int id)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();

            string sql = "select SanPham.SoLuong, TenOto,Hang, Gia, tbNguoiDung.Email from [SanPham], [tbNguoiDung] where SanPham.IDND = tbNguoiDung.IDND and ID=@id ";

            SanPham objtag = null;
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", id);
            //Mở kết nối tới CSDL
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                objtag = new SanPham();
                objtag.SoLuong = Convert.ToInt32(reader["SoLuong"]);
                objtag.TenOto = Convert.ToString(reader["TenOto"]);
                objtag.Hang = Convert.ToString(reader["Hang"]);
                objtag.Gia = Convert.ToDouble(reader["Gia"]);
                objtag.Email = Convert.ToString(reader["Email"]);

            }
            reader.Close();
            conn.Close();
            conn.Dispose();
            return objtag;


        }
        public static List<SanPham> SearchAllHome(string _search)
        {
            List<SanPham> allpro = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo,KieuDang, NhienLieu,Hang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and  TenOto LIKE '%" + _search + "%' ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
           

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.Hang = Convert.ToString(reader["Hang"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }

        ///tìm kiếm ô tô toyota , Hãng xe
        public static List<SanPham> SearchToyota(string _search)
        {
            List<SanPham> allpro = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo,KieuDang, NhienLieu,Hang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],tbNguoiDung where   SanPham.IDND = tbNguoiDung.IDND and Hang = @search  ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@search", _search);

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.Hang = Convert.ToString(reader["Hang"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }
        ///tìm kiếm năm sx
        public static List<SanPham> SearchNamsx(int _search)
        {
            List<SanPham> allpro = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, KieuDang, NhienLieu,Hang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],tbNguoiDung where   SanPham.IDND = tbNguoiDung.IDND and NamSx = @namsx  ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@namsx", _search);

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.Hang = Convert.ToString(reader["Hang"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }
        ///tìm kiếm mới cũ
        public static List<SanPham> SearchMoiCu(string _search)
        {
            List<SanPham> allpro = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo,KieuDang, NhienLieu,Hang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and TinhTrang = @search  ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@search", _search);

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.Hang = Convert.ToString(reader["Hang"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }
        public static List<SanPham> SearchByPrice(string _search)
        {
            List<SanPham> allpro = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql=String.Empty;
            switch (_search)
            {
                case "<300":
                     sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang,KieuDang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia < 300  ";
                    break;
                case "300 - 500tr":
                    sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia >= 300 and Gia <=500 ";
                    break;
                case "500 - 700tr":
                    sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia > 500 and Gia <=700 ";
                    break;
                case "700tr - 1 tỷ":
                    sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia > 700 and Gia <=1000 ";
                    break;
                case "1 tỷ - 2 tỷ":
                    sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia > 1000 and Gia <= 2000 ";
                    break;
                case ">2000":
                    sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia > 2000 ";
                    break;
                //tìm kiếm xe nổi bật
                case "Bán xe Honda City":
                    sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and Gia > 2000 ";
                    break;
                default:
                    break;
            }

             //sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and TinhTrang = @search  ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
          
            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.Hang = Convert.ToString(reader["Hang"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }
        ///tìm kiếm ô tô nổi bật
        public static List<SanPham> SearchOtoNoiBat(string _search)
        {
            List<SanPham> allpro = new List<SanPham>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,Hang, TinhTP,KieuDang, TinhTrang, SanPham.IDND, tbNguoiDung.HoTen from [SanPham],[tbNguoiDung] where   SanPham.IDND = tbNguoiDung.IDND and TenOto=@search ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@search", _search);

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                user.HoTen = Convert.ToString(reader["HoTen"]);
                user.TinhTP = Convert.ToString(reader["TinhTP"]);
                user.Hang = Convert.ToString(reader["Hang"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }
        //search trang home drop
        public static List<SanPham> SearchDropHome(string _searchHang, string _searchtinhtrang, string _searchkDang)
        {
            List<SanPham> allpro = new List<SanPham>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,XuatXu, tbNguoiDung.SDT from [SanPham], tbNguoiDung where SanPham.IDND = tbNguoiDung.IDND  and  Hang = @hang and TinhTrang=@tinhtrang and KieuDang = @kieudang " +
                "EXCEPT" +
                " select ID,TenOto, Gia, NamSx, img1, HopSo, NhienLieu,XuatXu , tbNguoiDung.SDT from [SanPham], tbNguoiDung where SanPham.IDND = tbNguoiDung.IDND  and  Hang = 'Hãng xe' and TinhTrang='Tình trạng' and KieuDang = 'Dòng xe'  ";
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@hang", _searchHang);
            sqlCommand.Parameters.AddWithValue("@tinhtrang", _searchtinhtrang);
            sqlCommand.Parameters.AddWithValue("@kieudang", _searchkDang);
           // sqlCommand.Parameters.AddWithValue("@gia", _searchdropHome);

            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                SanPham user = new SanPham();
                user.ID = Convert.ToInt32(reader["ID"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.SDT = Convert.ToString(reader["SDT"]);


                allpro.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allpro;
        }

        //Người dùng đăng tin
        public static bool CreateDangTin(SanPham allpro)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "";
            if (allpro.ID != 0)
            {
                sql = "update [SanPham] set [TenOto] = @TenOto, [Gia]=@Gia, [NamSx]=@NamSx, [img1]=@img1,img2=@img2,img3=@img3,img4=@img4,img5=@img5,img6=@img6, HopSo=@HopSo, NhienLieu=@NhienLieu, XuatXu=@XuatXu," +
                    "TinhTrang=@TinhTrang,Sokm=@Sokm,DiaChi=@DiaChi,TinhTP=@TinhTP,Hang=@Hang, MoTa=@MoTa,SoLuong=@SoLuong where ID=@idsp";
            }
            else
            {
                sql = "insert into [SanPham] ( TenOto, Gia, NamSx, img1, HopSo,Sokm, NhienLieu, XuatXu,TinhTrang,DiaChi,Hang,TinhTP, img2, img3, img4, img5, img6,KieuDang, MoTa, IDND, SoLuong, NgayDang, DuyetTin, LuotXem)" +
                                                " values ( @TenOto, @Gia, @NamSx, @img1, @HopSo, @Sokm, @NhienLieu, @XuatXu, @TinhTrang, @DiaChi, @Hang, @TinhTP, @img2, @img3, @img4, @img5, @img6, @KieuDang, @MoTa, @IDND, @SoLuong, @ngaydang, 0, 0) ";
            }
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@idsp", allpro.ID);
            sqlCommand.Parameters.AddWithValue("@TenOto", allpro.TenOto);
            sqlCommand.Parameters.AddWithValue("@Gia", allpro.Gia);
            sqlCommand.Parameters.AddWithValue("@NamSx", allpro.NamSx);
            sqlCommand.Parameters.AddWithValue("@img1", allpro.img1);
            sqlCommand.Parameters.AddWithValue("@img2", allpro.img2);
            sqlCommand.Parameters.AddWithValue("@img3", allpro.img3);
            sqlCommand.Parameters.AddWithValue("@img4", allpro.img4);
            sqlCommand.Parameters.AddWithValue("@img5", allpro.img5);
            sqlCommand.Parameters.AddWithValue("@img6", allpro.img6);
            sqlCommand.Parameters.AddWithValue("@HopSo", allpro.HopSo);
            sqlCommand.Parameters.AddWithValue("@NhienLieu", allpro.NhienLieu);
            sqlCommand.Parameters.AddWithValue("@XuatXu", allpro.XuatXu);
            sqlCommand.Parameters.AddWithValue("@TinhTrang", allpro.TinhTrang);
            sqlCommand.Parameters.AddWithValue("@DiaChi", allpro.DiaChi);
            sqlCommand.Parameters.AddWithValue("@Hang", allpro.Hang);
            sqlCommand.Parameters.AddWithValue("@TinhTP", allpro.TinhTP);
            sqlCommand.Parameters.AddWithValue("@KieuDang", allpro.KieuDang);
            sqlCommand.Parameters.AddWithValue("@MoTa", allpro.MoTa);
            sqlCommand.Parameters.AddWithValue("@ngaydang", allpro.NgayDang);
            sqlCommand.Parameters.AddWithValue("@SoLuong", allpro.SoLuong);
            sqlCommand.Parameters.AddWithValue("@IDND", allpro.IDND);
            sqlCommand.Parameters.AddWithValue("@Sokm", allpro.Sokm);


            int rs = sqlCommand.ExecuteNonQuery();
            if (rs > 0)
            {
                conn.Close();
                conn.Dispose();
                return true;
            }
            return false;
        }

        //get all Sản phẩm, chi tiết SP
        public static List<SanPham> getAllSanPham()
        {
            List<SanPham> listsp = new List<SanPham>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, [DuyetTin], Sokm, IDND, IDChuDe, NgayDang from [SanPham] ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                SanPham sp = new SanPham();
                sp.ID = Convert.ToInt32(reader["ID"]);
                sp.TenOto = Convert.ToString(reader["TenOto"]);
                sp.NamSx = Convert.ToInt32(reader["NamSx"]);
                sp.XuatXu = Convert.ToString(reader["XuatXu"]);
                sp.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                sp.HopSo = Convert.ToString(reader["HopSo"]);
                sp.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                sp.SoLuong = Convert.ToInt32(reader["SoLuong"]);
                sp.DiaChi = Convert.ToString(reader["DiaChi"]);
                sp.TinhTP = Convert.ToString(reader["TinhTP"]);
                sp.Gia = Convert.ToDouble(reader["Gia"]);
                sp.img1 = Convert.ToString(reader["img1"]);
                sp.img2 = Convert.ToString(reader["img2"]);
                sp.img3 = Convert.ToString(reader["img3"]);
                sp.img4 = Convert.ToString(reader["img4"]);
                sp.img5 = Convert.ToString(reader["img5"]);
                sp.img6 = Convert.ToString(reader["img6"]);
                sp.KieuDang = Convert.ToString(reader["KieuDang"]);
                sp.Hang = Convert.ToString(reader["Hang"]);
                sp.MoTa = Convert.ToString(reader["MoTa"]);
                sp.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                sp.Sokm = Convert.ToString(reader["Sokm"]);
                sp.IDND = Convert.ToInt32(reader["IDND"]);
                sp.IDChuDe = Convert.ToInt32(reader["IDChuDe"]);
                sp.NgayDang = Convert.ToDateTime(reader["NgayDang"]);
                listsp.Add(sp);
            }
            conn.Close();
            conn.Dispose();
            return listsp;

        }

        ///getall trang thai tin đã duyệt
        public static List<SanPham> getAllSanPhamDuyet()
        {
            List<SanPham> listsp = new List<SanPham>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, DuyetTin, Sokm, IDND, IDChuDe, NgayDang from [SanPham] where DuyetTin=1 ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                SanPham sp = new SanPham();
                sp.ID = Convert.ToInt32(reader["ID"]);
                sp.TenOto = Convert.ToString(reader["TenOto"]);
                sp.NamSx = Convert.ToInt32(reader["NamSx"]);
                sp.XuatXu = Convert.ToString(reader["XuatXu"]);
                sp.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                sp.HopSo = Convert.ToString(reader["HopSo"]);
                sp.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                sp.SoLuong = Convert.ToInt32(reader["SoLuong"]);
                sp.DiaChi = Convert.ToString(reader["DiaChi"]);
                sp.TinhTP = Convert.ToString(reader["TinhTP"]);
                sp.Gia = Convert.ToDouble(reader["Gia"]);
                sp.img1 = Convert.ToString(reader["img1"]);
                sp.img2 = Convert.ToString(reader["img2"]);
                sp.img3 = Convert.ToString(reader["img3"]);
                sp.img4 = Convert.ToString(reader["img4"]);
                sp.img5 = Convert.ToString(reader["img5"]);
                sp.img6 = Convert.ToString(reader["img6"]);
                sp.KieuDang = Convert.ToString(reader["KieuDang"]);
                sp.Hang = Convert.ToString(reader["Hang"]);
                sp.MoTa = Convert.ToString(reader["MoTa"]);
                sp.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                sp.Sokm = Convert.ToString(reader["Sokm"]);
                sp.IDND = Convert.ToInt32(reader["IDND"]);
                sp.IDChuDe = Convert.ToInt32(reader["IDChuDe"]);
                sp.NgayDang = Convert.ToDateTime(reader["NgayDang"]);
                listsp.Add(sp);
            }
            conn.Close();
            conn.Dispose();
            return listsp;

        }

        ///getall trang thai tin đã chưa duyệt
        public static List<SanPham> getAllSanPhamChuaDuyet()
        {
            List<SanPham> listsp = new List<SanPham>();
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "Select ID, TenOto, NamSx, XuatXu, TinhTrang, HopSo, NhienLieu, DiaChi, SoLuong, TinhTP, Gia, img1, KieuDang, MoTa, img2, img3, img4, img5, img6, Hang, DuyetTin, Sokm, IDND, IDChuDe, NgayDang from [SanPham] where DuyetTin=0 ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                SanPham sp = new SanPham();
                sp.ID = Convert.ToInt32(reader["ID"]);
                sp.TenOto = Convert.ToString(reader["TenOto"]);
                sp.NamSx = Convert.ToInt32(reader["NamSx"]);
                sp.XuatXu = Convert.ToString(reader["XuatXu"]);
                sp.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                sp.HopSo = Convert.ToString(reader["HopSo"]);
                sp.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                sp.SoLuong = Convert.ToInt32(reader["SoLuong"]);
                sp.DiaChi = Convert.ToString(reader["DiaChi"]);
                sp.TinhTP = Convert.ToString(reader["TinhTP"]);
                sp.Gia = Convert.ToDouble(reader["Gia"]);
                sp.img1 = Convert.ToString(reader["img1"]);
                sp.img2 = Convert.ToString(reader["img2"]);
                sp.img3 = Convert.ToString(reader["img3"]);
                sp.img4 = Convert.ToString(reader["img4"]);
                sp.img5 = Convert.ToString(reader["img5"]);
                sp.img6 = Convert.ToString(reader["img6"]);
                sp.KieuDang = Convert.ToString(reader["KieuDang"]);
                sp.Hang = Convert.ToString(reader["Hang"]);
                sp.MoTa = Convert.ToString(reader["MoTa"]);
                sp.DuyetTin = Convert.ToInt32(reader["DuyetTin"]);
                sp.Sokm = Convert.ToString(reader["Sokm"]);
                sp.IDND = Convert.ToInt32(reader["IDND"]);
                sp.IDChuDe = Convert.ToInt32(reader["IDChuDe"]);
                sp.NgayDang = Convert.ToDateTime(reader["NgayDang"]);
                listsp.Add(sp);
            }
            conn.Close();
            conn.Dispose();
            return listsp;

        }

        //dếm số tin của 1 IDND
        public static SanPham getDemIDSP(int _id)
        {
            SqlConnection conn = ConnectionSql.GetSqlConnection();

            string sql = "select count( ID) as  DemIDSP from [tbNguoiDung], [SanPham] where SanPham.IDND = tbNguoiDung.IDND and tbNguoiDung.IDND ='" + _id + "' ";

            SanPham objtag = null;
            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", _id);
            //Mở kết nối tới CSDL
            conn.Open();

            SqlDataReader reader = sqlCommand.ExecuteReader();
            while (reader.Read())
            {
                objtag = new SanPham();
                objtag.DemIDSP = Convert.ToInt32(reader["DemIDSP"]);

            }
            reader.Close();
            conn.Close();
            conn.Dispose();
            return objtag;


        }
        // lấy ID phần trả giá
        public static SanPham getIDTraGia(int _id)
        {
            SanPham sp = null;
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "select ID, Gia, SDT,Email, TinhTrang, TenOto,tbNguoiDung.IDND, XuatXu from tbNguoiDung right Join SanPham on tbNguoiDung.IDND = SanPham.IDND where ID=@id";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@id", _id);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                sp = new SanPham();
                sp.ID = Convert.ToInt32(reader["ID"]);
                sp.IDND = Convert.ToInt32(reader["IDND"]);
                sp.Gia = Convert.ToDouble(reader["Gia"]);
                sp.SDT = Convert.ToString(reader["SDT"]);
                sp.Email = Convert.ToString(reader["Email"]);
                sp.TenOto = Convert.ToString(reader["TenOto"]);
                sp.TinhTrang = Convert.ToString(reader["TinhTrang"]);
                sp.XuatXu = Convert.ToString(reader["XuatXu"]);


            }
            conn.Close();
            conn.Dispose();
            return sp;
        }


        //hiiii giỏ hàng

        public static List<SanPham> GetAllProductById(int _id)
        {
            List<SanPham> prs = new List<SanPham>();
            string sql = "select ID,img1, TenOto,TinhTrang ,Gia, SoLuong, SanPham.IDND from [SanPham], [tbNguoiDung] where SanPham.IDND = tbNguoiDung.IDND and ID ='" + _id + "' ";
            SqlConnection conn = ConnectionSql.GetSqlConnection();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = System.Data.CommandType.Text;
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                SanPham pr = new SanPham
                {
                    ID = Convert.ToInt32(rd["ID"]),
                    IDND = Convert.ToInt32(rd["IDND"]),

                    img1 = Convert.ToString(rd["img1"]),
                    TenOto = Convert.ToString(rd["TenOto"]),
                    TinhTrang = Convert.ToString(rd["TinhTrang"]),
                    Gia = Convert.ToDouble(rd["Gia"]),
                    SoLuong = Convert.ToInt32(rd["SoLuong"]),
                    //  Totallprice = Convert.ToInt32(rd["Totallprice"])
                };
                prs.Add(pr);
            }
            rd.Close();
            conn.Dispose();
            return prs;
        }
        public static DataTable ToDataTable<T>(List<T> items)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);
            //Get all the properties
            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in Props)
            {
                //Setting column names as Property names
                dataTable.Columns.Add(prop.Name);
            }
            foreach (T item in items)
            {
                var values = new object[Props.Length];
                for (int i = 0; i < Props.Length; i++)
                {
                    //inserting property values to datatable rows
                    values[i] = Props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }
            //put a breakpoint here and check datatable
            return dataTable;
        }
    }
}