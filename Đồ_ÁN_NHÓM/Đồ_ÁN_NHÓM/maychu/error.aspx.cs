using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.maychu
{
    public partial class error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    if (Session["tendangnhap"].ToString() == "admin")
                    {

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
    }
}