using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.user
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
                    string sql = "SELECT *, sotien/dongia as soluong, CASE WHEN thanhtoan.mathanhtoan = thanhtoan.mathanhtoan THEN 'Đã thanh toán'  END as thanhtoantien FROM mathang, thanhtoan WHERE mathang.mahang = thanhtoan.mahang  AND thanhtoan.tendangnhap like '" + Session["tendangnhap"] + "'";
                    ds_thanhtoan.DataSource = ketnoi.docdulieu(sql);
                    ds_thanhtoan.DataBind();
                    if (ds_thanhtoan.Rows.Count == 0)
                    {
                        ds_thanhtoan = null;
                        thongbao.Text = "Lịch sử thanh toán trống !";
                    }
                }
                else
                {
                    Response.Redirect("../loginPage.aspx");
                }
            }



        }
    }
}