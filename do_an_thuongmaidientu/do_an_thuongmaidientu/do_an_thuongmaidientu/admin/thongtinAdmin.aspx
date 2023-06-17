<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.Master" AutoEventWireup="true" CodeBehind="thongtinAdmin.aspx.cs" Inherits="do_an_thuongmaidientu.admin.thongtinAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>

       .card{
              width: 285px;
                padding: 15px;
                color: white;
                border: 3px solid aqua;
                border-radius: 10px 0px;
                background-color: #292929;
       }
       .card-img-top{
           width:250px;
       }
        .card  a{
           height: 30px;
           width: 70px;
           color: white;
           text-decoration:none;    
       }
     
        .ten-taikhoan{
            font-size:20px;
            text-align:center;
            color: white;
        }
        .card-text{
            color: white;
        }
        .card-title{
            text-align:center;
        }
        .admin-container{
            max-width:100%;
            margin:0 auto;
        }
    
    </style>
    <div class="admin-container">
         <div class="card">
            <div class="view overlay">
                <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" runat="server" ImageUrl='../public/image/hacking-nobg.png'/>
            <a href="#!">
                <div class="mask rgba-white-slight"></div>
            </a>
            </div>
            <div class="card-body">
            <h4 class="card-title">
                <asp:Label ID="tentaikhoan" CssClass="ten-taikhoan" runat="server" Text='' />
            </h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card'scontent.</p>
            </div>
        </div>
    </div>
    


</asp:Content>
