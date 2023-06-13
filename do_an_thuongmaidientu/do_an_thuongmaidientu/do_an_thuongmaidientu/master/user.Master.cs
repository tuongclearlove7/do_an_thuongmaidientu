using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.master
{
    public partial class user : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendangnhap"] != null)
            {
                if (Session["tendangnhap"].ToString() == "admin")
                    account.Text = Session["tendangnhap"].ToString();
                else account.Text = Session["tendangnhap"].ToString();
            }
        }
        protected void timkiem(object sender, EventArgs e)
        {

            string nhap = nhaptimkiem.Text;
            Response.Redirect("../user/chi_tiet_mathang.aspx?MatHang=" + nhap);

        }

        protected void dangxuat(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            HttpCookie cookie_tendangnhap = Request.Cookies["tendangnhap"];
            cookie_tendangnhap.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie_tendangnhap);
            Response.Redirect("../loginPage.aspx");
        }
        protected void chuyen_trang(object sender, EventArgs e)
        {
            Response.Redirect("../user/giohang.aspx");
        }


        protected void res_homepage(object sender, EventArgs e)
        {
            if (Session["tendangnhap"].ToString() == "admin")
            {
                Response.Redirect("../admin/homeAdmin.aspx");
            }
            else
            {
                Response.Redirect("../user/homeUser.aspx");
            }
        }


    }
}