using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.admin
{
    public partial class thongtinAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    if(Session["tendangnhap"].ToString().Trim() == "admin")
                        tentaikhoan.Text = "Tên đăng nhập : " + Session["tendangnhap"].ToString().Trim();
                    else Response.Redirect("../user/404.aspx");
                }
                else
                {
                    Response.Redirect("../loginPage.aspx");
                }
            }
        }
    }
}