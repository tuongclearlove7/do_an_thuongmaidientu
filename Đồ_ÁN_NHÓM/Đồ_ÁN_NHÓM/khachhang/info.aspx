<%@ Page Title="" Language="C#" MasterPageFile="~/layout/khachhang.Master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Đồ_ÁN_NHÓM.khachhang.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>

   
       .card{
           width: 285px;
            padding: 15px;
            border: 3px solid black;
            border-radius: 10px 0px;
            background-color: #d8d8d8;
       }
       .card-img-top{
           width:250px;
       }
        .card  a{
           height: 30px;
           width: 70px;
           color: black;
           text-decoration:none;    
       }
     
        .ten-taikhoan{
            font-size:20px;
            text-align:center;
            color: black;
        }
        .card-text{
            color: black;
        }
        .card-title{
            text-align:center;
        }
        .container-user{
            max-width:100%;
            margin:0 auto;
        }
    
    </style>
    <div class="container-user" >

          <div class="card">
            <div class="view overlay">
                <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" runat="server" ImageUrl='https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg'/>
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
