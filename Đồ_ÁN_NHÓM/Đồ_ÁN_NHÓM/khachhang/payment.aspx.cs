using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.khachhang
{
    public partial class payment : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    if (Request.QueryString["MatHang"] != null)
                    {
                        string mahang = Request.QueryString["MatHang"];
                        string user = Session["tendangnhap"].ToString().Trim();
                        txtmahang.Text = mahang;
                        txttendangnhap.Text = user;
                        string sql2 = "select * from mathang, donhang where mathang.mahang = donhang.mahang AND donhang.tendangnhap = '" + user + "' AND donhang.mahang = " + mahang;
                        DataTable dt = new DataTable();
                        dt = ketnoi.readDB(sql2);
                        ds_thanhtoan.DataSource = dt;
                        ds_thanhtoan.DataBind();

                        string sql3 = "SELECT dongia * soluong FROM mathang, donhang WHERE mathang.mahang = donhang.mahang  AND mathang.mahang = " + mahang + " AND donhang.tendangnhap = '" + user + "'";
                        DataTable dt2 = new DataTable();
                        dt2 = ketnoi.readDB(sql3);
                        double dongia = Convert.ToDouble(dt2.Rows[0][0]);

                        txtdongia.Text = dongia.ToString();

                        if (dt.Rows.Count == 0)
                        {
                            dt = null;
                            thongbao.Text = "Không đơn hàng nào!";
                        }
                    }

                    else
                    {
                        Response.Redirect("home.aspx");
                    }
                }
                else
                {
                    Response.Redirect("../trangchu/login.aspx");
                }
            }
        }

        protected void thanhtoantien(object sender, EventArgs e)
        {
            Random random = new Random();
            string mahang = Request.QueryString["MatHang"];
            int ma_ngaunhien = random.Next(1, 100000);
            string sql3 = "SELECT dongia * soluong FROM mathang, donhang WHERE mathang.mahang = donhang.mahang  AND mathang.mahang = " + mahang + " AND donhang.tendangnhap = '" + Session["tendangnhap"].ToString().Trim() + "'";
            DataTable dt = new DataTable();
            dt = ketnoi.readDB(sql3);
            double dongia = Convert.ToDouble(dt.Rows[0][0]);
            //txtgia.Text = dongia.ToString();

            double sotien_tt = Convert.ToDouble(txtsotien.Text);
            if (sotien_tt > dongia)
            {
                thongbao.Text = "Số tiền bạn thanh toán phải bằng : " + dongia;
            }
            else if (sotien_tt < dongia)
            {
                thongbao.Text = "Số tiền của bạn k đủ để thanh toán!";
            }
            else
            {

                DateTime txtthoigian = DateTime.Now;
                string tendangnhap = Session["tendangnhap"].ToString().Trim();
                string sql2 = string.Format("INSERT INTO thanhtoan(mathanhtoan, tendangnhap, sotien, thoigian, mahang) VALUES('{0}', '{1}', '{2}', '{3}', '{4}')",
                ma_ngaunhien, txttendangnhap.Text, txtsotien.Text, txtthoigian, txtmahang.Text);
                ketnoi.updateDB(sql2);

                string sql4 = "DELETE FROM donhang WHERE donhang.tendangnhap = '" + tendangnhap + "' AND donhang.mahang = " + mahang;
                ketnoi.updateDB(sql4);
                //string sql4 = "UPDATE donhang SET soluong = 0 WHERE donhang.tendangnhap = '" + tendangnhap + "' AND donhang.mahang = " + mahang;
                //ketnoi.updateDB(sql4);

                thongbao.Text = "Thanh toán thành công!";
            }


        }



    }
}