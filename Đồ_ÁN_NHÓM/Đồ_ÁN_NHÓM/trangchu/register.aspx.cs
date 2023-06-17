using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.trangchu
{
    public partial class register : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_(object sender, EventArgs e)
        {
            string sql = string.Format("INSERT INTO khachhang(tendangnhap, matkhau) VALUES('{0}', '{1}')",
                txt_tendangnhap.Text, txt_matkhau.Text);
            ketnoi.updateDB(sql);
            DataTable dt = ketnoi.readDB(sql);
            thongbao.Text = "<p style='color:green;'>ĐĂNG KÝ THÀNH CÔNG<p>";


        }



    }
}