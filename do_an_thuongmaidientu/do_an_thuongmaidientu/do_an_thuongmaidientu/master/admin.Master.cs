﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace do_an_thuongmaidientu.master
{
    public partial class admin : System.Web.UI.MasterPage
    {
        Models.ketnoi_database ketnoi = new Models.ketnoi_database();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendangnhap"] != null)
            {
                if (Session["tendangnhap"].ToString() == "admin")
                    account.Text = Session["tendangnhap"].ToString();
                else account.Text = "User " + Session["tendangnhap"].ToString();
            }
        }

        protected void timkiem(object sender, EventArgs e)
        {
         
            string nhap = nhaptimkiem.Text;
            Response.Redirect("../admin/timkiem.aspx?donhang=" + nhap);      

        }
            protected void dangxuat(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            HttpCookie cookie_tendangnhap = Request.Cookies["tendangnhap"];
            cookie_tendangnhap.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie_tendangnhap);
            Response.Redirect("../loginPage.aspx");
        }
        protected void chuyen_trang(object sender, EventArgs e)
        {
            Response.Redirect("../admin/donhang.aspx");
        }

        protected void res_homepage(object sender, EventArgs e)
        {
            if (Session["tendangnhap"].ToString() == "admin")
            {
                Response.Redirect("../admin/homeAdmin.aspx");
            }
            else
            {
                Response.Redirect("../user/homeUser.aspx");
            }
        }


    }
}