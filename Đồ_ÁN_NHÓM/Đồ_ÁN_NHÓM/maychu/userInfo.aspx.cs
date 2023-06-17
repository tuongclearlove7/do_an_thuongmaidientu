using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.maychu
{
    public partial class thongtinkhachhang : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    if (Session["tendangnhap"].ToString() == "admin")
                    {

                        if (Session["tendangnhap"].ToString() == "admin")
                        {
                            string sql = "select * from khachhang";
                            ds_user.DataSource = ketnoi.readDB(sql);
                            ds_user.DataBind();
                        }
                        else
                        {
                            Response.Redirect("../user/404.aspx");
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
    }
}