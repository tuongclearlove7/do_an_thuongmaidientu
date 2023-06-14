using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.admin
{
    public partial class lichsuthanhtoan : System.Web.UI.Page
    {
        Models.ketnoi_database ketnoi = new Models.ketnoi_database();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    if (Session["tendangnhap"].ToString() == "admin")
                    {
                        string sql2 = "SELECT *, sotien/dongia as soluong, CASE WHEN thanhtoan.mathanhtoan = thanhtoan.mathanhtoan THEN 'Đã thanh toán'  END as thanhtoantien FROM mathang, thanhtoan WHERE mathang.mahang = thanhtoan.mahang";
                        ds_thanhtoan.DataSource = ketnoi.docdulieu(sql2);
                        ds_thanhtoan.DataBind();

                        if (ds_thanhtoan.Rows.Count == 0)
                        {
                            ds_thanhtoan = null;
                            thongbao.Text = "Lịch sử thanh toán trống !";
                        }
                    }
                    else
                    {
                        Response.Redirect("../user/404.aspx");
                    }
                }
                else
                {
                    Response.Redirect("../loginPage.aspx");
                }
            }
        }

        protected void loadDB()
        {
            string sql2 = "SELECT *, sotien/dongia as soluong, CASE WHEN thanhtoan.mathanhtoan = thanhtoan.mathanhtoan THEN 'Đã thanh toán'  END as thanhtoantien FROM mathang, thanhtoan WHERE mathang.mahang = thanhtoan.mahang";
            ds_thanhtoan.DataSource = ketnoi.docdulieu(sql2);
            ds_thanhtoan.DataBind();
        }

        protected void xoa(object sender, EventArgs e)
        {
            foreach (GridViewRow row in ds_thanhtoan.Rows)
            {
                TextBox txt_tendangnhap = row.FindControl("txttendangnhap") as TextBox;
                string tendangnhap = txt_tendangnhap.Text;
                Button btnXoa = (Button)sender;
                string mathanhtoan = btnXoa.CommandArgument;
                string sql1 = "DELETE FROM thanhtoan WHERE thanhtoan.mathanhtoan = " + mathanhtoan + " AND thanhtoan.tendangnhap = '" + tendangnhap + "'";
                ketnoi.capnhat(sql1);
                loadDB();
            }
        }


    }
}