using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.maychu
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
                    if (Session["tendangnhap"].ToString() == "admin")
                    {
                        string sql = "SELECT * FROM loaihang";
                        ds_category.DataSource = ketnoi.readDB(sql);
                        ds_category.DataBind();

                        string sql2 = "SELECT * FROM mathang";
                        ds_mathang.DataSource = ketnoi.readDB(sql2);
                        ds_mathang.DataBind();
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

        protected void loadLoaihang()
        {
            string sql = "SELECT * FROM loaihang";
            ds_category.DataSource = ketnoi.readDB(sql);
            ds_category.DataBind();
        }

        protected void loadMathang()
        {
            string sql = "SELECT * FROM mathang";
            ds_mathang.DataSource = ketnoi.readDB(sql);
            ds_mathang.DataBind();
        }

        protected void sualoaihang(object sender, EventArgs e)
        {
            foreach (DataListItem item in ds_category.Items)
            {
                TextBox txtmaloai = (TextBox)item.FindControl("txt_maloai");
                TextBox txttenloai = (TextBox)item.FindControl("txt_tenloai");
                TextBox txtmota = (TextBox)item.FindControl("txt_mota");
                TextBox txthinhloaihang = (TextBox)item.FindControl("txt_hinhloaihang");
                string maloai = txtmaloai.Text;
                string tenloai = txttenloai.Text;
                string mota = txtmota.Text;
                string hinhloaihang = txthinhloaihang.Text;
                string sql = "UPDATE loaihang SET tenloai = '" + tenloai + " ' , mota = '"+ mota + "', hinhloaihang = '" + hinhloaihang  + "' WHERE loaihang.maloai = " + maloai;

                ketnoi.updateDB(sql);
            }
            loadLoaihang();
        }

        protected void suamathang(object sender, EventArgs e)
        {
            foreach (DataListItem item in ds_mathang.Items)
            {
                TextBox txtmahang = (TextBox)item.FindControl("txt_mahang");
                TextBox txttenhang = (TextBox)item.FindControl("txt_tenhang");
                TextBox txtmota = (TextBox)item.FindControl("txt_mota");
                TextBox txthinhmathang = (TextBox)item.FindControl("txt_hinhmathang");
                TextBox txtdongia = (TextBox)item.FindControl("txt_dongia");
               
                string tenhang = txttenhang.Text;
                string mota = txtmota.Text;
                string hinhmathang = txthinhmathang.Text;
                string dongia = txtdongia.Text;
                
                    string mahang = txtmahang.Text;
                    string sql = string.Format("UPDATE mathang SET tenhang = '{0}', mota = '{1}', hinhmathang = '{2}', dongia = '{3}' WHERE mahang = '{4}'",
                                           tenhang, mota, hinhmathang, dongia, mahang);
                    ketnoi.updateDB(sql);
            }
            loadMathang();
        }


        protected void xoaloaihang(object sender, EventArgs e)
        {
            Button btnXoa = (Button)sender;
            string maloai = btnXoa.CommandArgument;
            string sql1 = "DELETE FROM loaihang WHERE loaihang.maloai = " + maloai;
            ketnoi.updateDB(sql1);
            loadLoaihang();

        }

        protected void xoamathang(object sender, EventArgs e)
        {
            Button btnXoa_mathang = (Button)sender;
            string mahang = btnXoa_mathang.CommandArgument;
            string sql1 = "DELETE FROM mathang WHERE mathang.mahang = " + mahang;
            ketnoi.updateDB(sql1);
            loadMathang();

        }

    }
}