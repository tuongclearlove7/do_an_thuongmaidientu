<%@ Page Title="" Language="C#" MasterPageFile="~/layout/maychu.Master" AutoEventWireup="true" CodeBehind="userInfo.aspx.cs" Inherits="Đồ_ÁN_NHÓM.maychu.thongtinkhachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>

        #ContentPlaceHolder1_ds_user tr {
           float:left;
           margin:0px;
       }
       .card{
           width: 285px;
            padding: 15px;
            border: 3px solid black;
            border-radius: 10px 0px;
            background-color: #d8d8d8;
            margin:5px;
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
        .container-admin{
            margin-left:120px;
        }
    
    </style>
    <div class="container-admin">
         <div><h2>Thông tin Khách hàng</h2></div>
        <asp:DataList ID="ds_user" runat="server">
             <ItemTemplate>
                 <div class="card">
                    <div class="view overlay">
                        <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" runat="server" PostBackUrl='<%# "timkiem.aspx?donhang="+ Eval("tendangnhap")%>' ImageUrl='https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg'/>
                    <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                    </div>
                    <div class="card-body">
                    <h4 class="card-title">
                        <asp:Label ID="tentaikhoan" CssClass="ten-taikhoan" runat="server" Text='<%# "Khách hàng "+Eval("tendangnhap") %>' />
                    </h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card'scontent.</p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
