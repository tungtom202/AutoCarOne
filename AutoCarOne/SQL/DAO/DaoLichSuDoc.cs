using AutoCarOne.SQL.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AutoCarOne.SQL.DAO
{
    public class DaoLichSuDoc
    {
        public static List<EntyLichSuDoc> getallIDLichSudoc(int _id)
        {
            List<EntyLichSuDoc> allUser = new List<EntyLichSuDoc>();

            SqlConnection conn = ConnectionSql.GetSqlConnection();
            string sql = "WITH cte_1 AS(SELECT IDLS, IDSP, IDND, ROW_NUMBER() OVER (PARTITION BY IDSP, IDND ORDER BY IDLS  DESC ) row_num FROM  tbLichSuDoc )     DELETE FROM cte_1 WHERE row_num > 1  SELECT IDLS, IDSP, tbNguoiDung.IDND,SanPham.KieuDang, SanPham.TenOto,SanPham.ID, SanPham.img1, SanPham.Gia, SanPham.NamSx, SanPham.HopSo, SanPham.XuatXu,     SanPham.NhienLieu, tbNguoiDung.SDT   FROM  [tbLichSuDoc] left join [SanPham] on SanPham.ID = tbLichSuDoc.IDSP left join tbNguoiDung on tbLichSuDoc.IDND = tbNguoiDung.IDND where tbLichSuDoc.IDND = '"+ _id +"' ORDER BY IDLS DESC ";

            SqlCommand sqlCommand = new SqlCommand(sql, conn);
            sqlCommand.CommandType = System.Data.CommandType.Text;
            sqlCommand.Parameters.AddWithValue("@id", _id);
            conn.Open();
            SqlDataReader reader = sqlCommand.ExecuteReader();

            while (reader.Read())
            {
                EntyLichSuDoc user = new EntyLichSuDoc();
                user.IDLS = Convert.ToInt32(reader["IDLS"]);
                user.IDND = Convert.ToInt32(reader["IDND"]);
                user.ID = Convert.ToInt32(reader["ID"]);
                user.IDSP = Convert.ToInt32(reader["IDSP"]);
                user.TenOto = Convert.ToString(reader["TenOto"]);
                user.Gia = Convert.ToDouble(reader["Gia"]);
                user.NamSx = Convert.ToInt32(reader["NamSx"]);
                user.img1 = Convert.ToString(reader["img1"]);
                user.HopSo = Convert.ToString(reader["HopSo"]);
                user.XuatXu = Convert.ToString(reader["XuatXu"]);
                user.NhienLieu = Convert.ToString(reader["NhienLieu"]);
                user.SDT = Convert.ToString(reader["SDT"]);
                user.KieuDang = Convert.ToString(reader["KieuDang"]);

                allUser.Add(user);
            }
            reader.Close();
            ConnectionSql.close(conn);
            conn.Dispose();
            return allUser;
        }
    }
}