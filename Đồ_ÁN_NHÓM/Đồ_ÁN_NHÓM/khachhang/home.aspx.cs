using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.khachhang
{
    public partial class home : System.Web.UI.Page
    {
        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tendangnhap"] != null)
                {
                    string sql = "SELECT * FROM mathang";
                    ds_mathang.DataSource = ketnoi.readDB(sql);
                    ds_mathang.DataBind();



                }
                else
                {
                    Response.Redirect("../trangchu/home.aspx");
                }
            }
        }



        protected void buynow(object sender, EventArgs e)
        {

        
            string sql = "select * from donhang";
            ketnoi.readDB(sql);
            DataTable dt = ketnoi.readDB(sql);
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            TextBox txtmahang = (TextBox)item.FindControl("txt_mahang");
            TextBox txtsoluong = (TextBox)item.FindControl("txt_soluong");
            string mahang = txtmahang.Text;
            string soluong = txtsoluong.Text;

            if (dt != null && dt.Rows.Count > 0)
                {
                    // Truy cập vào DataTable 
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i]["mahang"].ToString() == mahang)
                        {
                            string sql3 = "UPDATE donhang SET soluong = " + soluong + " where donhang.tendangnhap = '" + Session["tendangnhap"] + "'";
                            ketnoi.updateDB(sql3);
                        }
                        else
                        {
                            string sql2 = "INSERT INTO donhang(tendangnhap, mahang, soluong) " +
                                            "VALUES ('" + Session["tendangnhap"] + "', " + mahang + ", " + soluong + ")";
                            ketnoi.updateDB(sql2);

                        }
                    }
                }
                else
                {
                    // DataTable không có dữ liệu
                    string sql2 = "INSERT INTO donhang(tendangnhap, mahang, soluong) " +
                                    "VALUES ('" + Session["tendangnhap"] + "', " + mahang + ", " + soluong + ")";
                    ketnoi.updateDB(sql2);

                }

            
               
            Response.Redirect("card.aspx");


        }





    }
}