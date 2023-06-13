using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.admin
{
    public partial class them : System.Web.UI.Page
    {
        Models.ketnoi_database ketnoi = new Models.ketnoi_database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendangnhap"] != null)
            {
                if (Session["tendangnhap"].ToString() == "admin")
                    return;
                else Response.Redirect("../user/404.aspx");
            }
            else
            {
                Response.Redirect("../loginPage.aspx");
            }
        }

        protected void themmoi_loaihang(object sender, EventArgs e)
        {

            string sql1 = string.Format("INSERT INTO loaihang(maloai, tenloai, hinhloaihang, mota) VALUES('{0}', '{1}', '{2}', '{3}')",
                maloai_loaihang.Text, tenloai.Text, hinh_loaihang.Text, mota_loaihang.Text);
            ketnoi.capnhat(sql1);
            themmoi_thanhcong.Text = "<p style='color:green;'>Thêm mới thành công</p>";
            
        }


        protected void themmoi_mathang(object sender, EventArgs e)
        {

            string sql1 = "INSERT INTO mathang(mahang, tenhang, mota, dongia, hinhmathang, maloai)" +
              "VALUES(" + mahang.Text + ", '" + tenhang.Text + "', '" + mota.Text + "' ," + dongia.Text + ", '" + hinh_mathang.Text + "' ," + maloai_mathang.Text + ")";
            ketnoi.capnhat(sql1);
            Response.Redirect("homeAdmin.aspx");
        }

    }
}