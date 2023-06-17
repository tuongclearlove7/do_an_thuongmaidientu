using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.trangchu
{
    public partial class home : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql2 = "select * from loaihang, mathang where loaihang.maloai = mathang.maloai";
            ds_mathang.DataSource = ketnoi.readDB(sql2);
            ds_mathang.DataBind();
        }
    }
}