using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.layout
{
    public partial class trangchu : System.Web.UI.MasterPage
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sql2 = "select * from loaihang, mathang where loaihang.maloai = mathang.maloai";
            //ds_loaihang.DataSource = ketnoi.readDB(sql2);
            //ds_loaihang.DataBind();
        }
    }
}