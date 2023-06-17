﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Đồ_ÁN_NHÓM.trangchu
{
    public partial class login : System.Web.UI.Page
    {

        Models.connectDB ketnoi = new Models.connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected bool kiemtra(string tendangnhap, string matkhau)
        {
            string sql = "select * from khachhang";
            ketnoi.readDB(sql);
            DataTable dt = ketnoi.readDB(sql);

            if (dt != null && dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["tendangnhap"].ToString() == tendangnhap &&
                        dt.Rows[i]["matkhau"].ToString() == matkhau)
                        return true;
                }
            }
            if (dt.Rows.Count == 0)
            {
                dt = null;
                Thread.Sleep(1000);
            }

            return false;
        }

        protected void kiemtra_dangnhap(object sender, EventArgs e)
        {
            if (kiemtra(tendangnhap.Text, matkhau.Text))
            {

                Session["tendangnhap"] = tendangnhap.Text;
                Session["matkhau"] = matkhau.Text;
                //Response.Redirect("bai2_mathang.aspx");
                //Server.Transfer("./view/home/home.aspx");

                if (Session["tendangnhap"].ToString() == "admin")
                {
                    HttpCookie cookie_tendangnhap = new HttpCookie("tendangnhap");
                    cookie_tendangnhap.Value = tendangnhap.Text;
                    cookie_tendangnhap.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie_tendangnhap);
                    string valueCookie = cookie_tendangnhap.Value;
                    Response.Redirect("../maychu/home.aspx");
                }
                else
                {
                    HttpCookie cookie_tendangnhap = new HttpCookie("tendangnhap");
                    cookie_tendangnhap.Value = tendangnhap.Text;
                    cookie_tendangnhap.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie_tendangnhap);
                    string valueCookie = cookie_tendangnhap.Value;
                    Response.Redirect("../khachhang/home.aspx");
                }
            }
            else
            {
                thongbao.Text = "<p style='color:red;'>Mật khẩu không chính xác!</p>";
                Session.Clear();
                HttpCookie cookie_tendangnhap = Request.Cookies["tendangnhap"];
                if (cookie_tendangnhap != null)
                {
                    cookie_tendangnhap.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie_tendangnhap);
                }
            }

        }



    }
}