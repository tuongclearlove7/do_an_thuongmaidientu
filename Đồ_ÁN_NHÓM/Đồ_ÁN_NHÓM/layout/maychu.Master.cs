using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.layout
{
    public partial class maychu : System.Web.UI.MasterPage
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendangnhap"] != null)
            {
                if (Session["tendangnhap"].ToString() == "admin")
                {
                    account.Text = Session["tendangnhap"].ToString();
                }
                else{
                    account.Text = "User " + Session["tendangnhap"].ToString();
                }
            }
        }

        protected void timkiem(object sender, EventArgs e)
        {

            string nhap = nhaptimkiem.Text;
            Response.Redirect("../maychu/search.aspx?donhang=" + nhap);

        }
        protected void dangxuat(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            HttpCookie cookie_tendangnhap = Request.Cookies["tendangnhap"];
            cookie_tendangnhap.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie_tendangnhap);
            Response.Redirect("../trangchu/login.aspx");
        }
        protected void chuyen_trang(object sender, EventArgs e)
        {
            Response.Redirect("../maychu/order.aspx");
        }

        protected void res_homepage(object sender, EventArgs e)
        {
            if (Session["tendangnhap"].ToString() == "admin")
            {
                Response.Redirect("../maychu/home.aspx");
            }
            else
            {
                Response.Redirect("../khachhang/home.aspx");
            }
        }




    }
}