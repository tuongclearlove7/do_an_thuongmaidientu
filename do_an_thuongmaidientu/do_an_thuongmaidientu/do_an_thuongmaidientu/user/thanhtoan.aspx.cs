using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.user
{
    public partial class thanhtoan : System.Web.UI.Page
    {
        Models.ketnoi_database ketnoi = new Models.ketnoi_database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    string user = Session["tendangnhap"].ToString().Trim();
                    Random random = new Random();
                    int ma_ngaunhien = random.Next(1, 100000);
                    txtmathanhtoan.Text = ma_ngaunhien.ToString().Trim();
                    txttendangnhap.Text = user;

                    string sql2 = "select * from mathang, donhang where mathang.mahang = donhang.mahang";
                    DataTable dt = new DataTable();
                    dt = ketnoi.docdulieu(sql2);
                    if (dt.Rows.Count == 0)
                    {
                        dt = null;
                        thongbao.Text = "Không đơn hàng nào!";
                    }
                    return;
                }
                else
                {
                    Response.Redirect("../loginPage.aspx");
                }
            }
        }

        protected void thanhtoantien(object sender, EventArgs e)
        {
           
            string sql1 = "select sum(dongia * soluong) from mathang, donhang where mathang.mahang = donhang.mahang and donhang.tendangnhap like '" + Session["tendangnhap"] + "'";
            DataTable dt2 = new DataTable();
            dt2 = ketnoi.docdulieu(sql1);
            double tong = (double)dt2.Rows[0][0];
            double sotien_tt = Convert.ToDouble(txtsotien.Text);
            if (sotien_tt > tong)
            {
                thongbao.Text = "Số tiền bạn thanh toán phải bằng : " + tong;
            }
            else if (sotien_tt < tong)
            {
                thongbao.Text = "Số tiền của bạn k đủ để thanh toán!";
            }
            else
            {

                DateTime txtthoigian = DateTime.Now;
                string tendangnhap = Session["tendangnhap"].ToString().Trim();
                string sql2 = string.Format("INSERT INTO thanhtoan(mathanhtoan, tendangnhap, sotien, thoigian) VALUES('{0}', '{1}', '{2}', '{3}')",
                txtmathanhtoan.Text, txttendangnhap.Text, txtsotien.Text, txtthoigian);
                ketnoi.capnhat(sql2);
                //string sql3 = "UPDATE donhang SET soluong = 0 WHERE donhang.tendangnhap = '" + tendangnhap + "'";
                string sql3 = "DELETE FROM donhang WHERE tendangnhap = '" + tendangnhap + "'";
                ketnoi.capnhat(sql3);
                thongbao.Text = "Thanh toán thành công!";
            }
        }

    }
}