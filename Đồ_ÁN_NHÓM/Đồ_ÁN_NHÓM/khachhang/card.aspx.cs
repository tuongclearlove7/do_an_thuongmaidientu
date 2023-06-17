using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.khachhang
{
    public partial class card : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();

        protected void chuyentrangXoasua(object sender, EventArgs e)
        {
            Response.Redirect("tool.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    string sql2 = "select dongia * soluong as thanhtien, CASE WHEN donhang.soluong > 0 THEN 'Chưa thanh toán' ELSE 'Đã thanh toán' END as thanhtoantien, * from mathang, donhang where mathang.mahang = donhang.mahang and donhang.tendangnhap like '" + Session["tendangnhap"] + "'" + " order by mathang.dongia asc";
                    ds_donhang.DataSource = ketnoi.readDB(sql2);
                    ds_donhang.DataBind();
                    if (ds_donhang.Rows.Count == 0)
                    {
                        ds_donhang = null;
                        tongthanhtien.Text = "Không có đơn hàng nào!";
                    }
                    else
                    {
                        ds_donhang.DataBind();
                        string sql3 = "select sum(dongia * soluong) from mathang, donhang where mathang.mahang = donhang.mahang and donhang.tendangnhap like '" + Session["tendangnhap"] + "'";
                        DataTable dt = new DataTable();
                        dt = ketnoi.readDB(sql3);
                        var tong = dt.Rows[0][0];
                        tongthanhtien.Text = "Tổng thành tiền : " + tong;
                        string sql_count = "select count(*) from mathang, donhang where mathang.mahang = donhang.mahang and donhang.tendangnhap like '" + Session["tendangnhap"] + "'";
                        DataTable dt_count = new DataTable();
                        dt_count = ketnoi.readDB(sql_count);
                        var count = dt_count.Rows[0][0];
                        dem_sodon.Text = "Số đơn hàng " + count;
                    }
                }
                else
                {
                    Response.Redirect("../trangchu/login.aspx");
                }
            }
        }



    }
}