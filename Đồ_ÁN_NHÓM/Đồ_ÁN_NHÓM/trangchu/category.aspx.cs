using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.trangchu
{
    public partial class category : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql2 = "select * from loaihang";
            ds_category.DataSource = ketnoi.readDB(sql2);
            ds_category.DataBind();
        }
    }
}