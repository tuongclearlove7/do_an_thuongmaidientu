<%@ Page Title="" Language="C#" MasterPageFile="~/master/page.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="do_an_thuongmaidientu.user._404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="max-width:500px;margin: 0px 20px auto;text-align:center;">
            <h1>
                404 KHÔNG TÌM THẤY TRANG !
            </h1>
            <div>
                <asp:ImageButton ImageUrl="../public/image/error.png" PostBackUrl="homeUser.aspx" ID="ImageButton1" runat="server" />
            </div>
        </div>
</asp:Content>
