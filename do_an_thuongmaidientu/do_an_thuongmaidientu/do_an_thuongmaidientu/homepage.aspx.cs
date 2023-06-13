using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu
{
    public partial class homepage : System.Web.UI.Page
    {
        Models.ketnoi_database ketnoi = new Models.ketnoi_database();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql2 = "select * from loaihang";
            ds_loaihang.DataSource = ketnoi.docdulieu(sql2);
            ds_loaihang.DataBind();
        }
    }
}