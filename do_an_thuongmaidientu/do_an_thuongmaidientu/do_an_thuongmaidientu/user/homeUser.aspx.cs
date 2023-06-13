using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.user
{
    public partial class homeUser : System.Web.UI.Page
    {
        Models.ketnoi_database ketnoi = new Models.ketnoi_database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    string sql = "select * from mathang";
                    ds_mathang.DataSource = ketnoi.docdulieu(sql);
                    ds_mathang.DataBind();
                }
                else
                {
                    Response.Redirect("../loginPage.aspx");
                }
            }
        }


    }
}