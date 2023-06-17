using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.maychu
{
    public partial class order : System.Web.UI.Page
    {



        Models.connectDB ketnoi = new Models.connectDB();

        protected void ds_donhang_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int soluong = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "soluong"));
                double dongia = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "dongia"));
                double thanhTien = soluong * dongia;
                Label thanhTienLabel = (Label)e.Row.FindControl("thanhtien");
                thanhTienLabel.Text = thanhTien.ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    if (Session["tendangnhap"].ToString() == "admin")
                    {
                        string sql2 = "select soluong * dongia as thanhtien ,* , CASE WHEN donhang.soluong > 0 THEN 'Chưa thanh toán' ELSE 'Đã thanh toán' END as thanhtoantien from mathang, donhang where mathang.mahang = donhang.mahang order by mathang.dongia asc";
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
                            string sql3 = "select sum(dongia * soluong) from mathang, donhang where mathang.mahang = donhang.mahang ";
                            DataTable dt = new DataTable();
                            dt = ketnoi.readDB(sql3);
                            var tong = dt.Rows[0][0];
                            tongthanhtien.Text = "Tổng thành tiền : " + tong;
                            string sql_count = "select count(*) from mathang, donhang where mathang.mahang = donhang.mahang ";
                            DataTable dt_count = new DataTable();
                            dt_count = ketnoi.readDB(sql_count);
                            var count = dt_count.Rows[0][0];
                            dem_sodon.Text = "Số đơn hàng " + count;
                        }
                    }
                    else
                    {
                        Response.Redirect("../khachhang/loi.aspx");
                    }
                }
                else
                {
                    Response.Redirect("../trangchu/login.aspx");
                }
            }
        }


        protected void xoa(object sender, EventArgs e)
        {
            foreach (GridViewRow row in ds_donhang.Rows)
            {
                TextBox txt_tendangnhap = row.FindControl("textbox_tendangnhap") as TextBox;
                string tendangnhap = txt_tendangnhap.Text;
                Button btnXoa = (Button)sender;
                string mahang = btnXoa.CommandArgument;
                string sql1 = "DELETE FROM donhang WHERE donhang.mahang = " + mahang + " AND donhang.tendangnhap = '" + tendangnhap + "'";
                ketnoi.updateDB(sql1);
                Response.Redirect("donhang.aspx");
            }
        }




    }
}