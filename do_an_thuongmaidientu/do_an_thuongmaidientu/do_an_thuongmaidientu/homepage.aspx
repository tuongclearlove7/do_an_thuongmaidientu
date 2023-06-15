<%@ Page Title="" Language="C#" MasterPageFile="~/master/page.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="homepage.aspx.cs" Inherits="do_an_thuongmaidientu.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
         
        #ContentPlaceHolder1_ds_loaihang tr {
            float:left;
            position:relative;
            animation: titleright 2s;
       
       }
        table , .category{
            margin-left:100px;
        }
        .category{
           margin-left:100px;
         }

       td input{
           height:250px;
           width:300px;
       }
       .card{
           position:relative;
           animation: fadeIn 1s ease-in;
           width:285px;
           padding:15px;
           margin:10px;
           border: 3px solid white;
           border-radius: 10px 0px;
           background-color: #ee4d2d;
           box-shadow: 0 10px 10px rgb(0 0 0 / 0.2);
           background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
          


       }
       .card-img-top{
           width:250px;
       }

    

        .card  a{
           height: 30px;
           width: 70px;
           color:white;
           text-decoration:none;    
       }
        .lop-nut{
            text-align:center;
        }
        .ten-loai{
            color :white;
            font-size:20px;
        }
        .card-text{
            color :white;
        }

        #MainContent_DataList1{
            margin: 0px 45px;
        }
        .btn-link{
            font-size:15px;
            margin:20px;
          
        }
        .btn-link:hover{
            text-decoration:none;
            color:white;
        }
        .ma-loaihang{
            color:white;
            font-size:17px;
        }

        .img-sp{
            height:270px;
            width:250px;
        }
        .thuongmaidientu{
            text-align:center;
            margin-bottom:30px;
        }

    </style>
   
    <div>
        <div class="category">
            <h1>DANH MỤC SẢN PHẨM</h1>
        </div>
         <asp:DataList ID="ds_loaihang"  runat="server">
        <ItemTemplate>
                <div class="card">
                    <asp:Label CssClass="ma-loaihang" ID="Label1" runat="server" Text='<%# Eval("maloai") %>'></asp:Label>
                 <div class="view overlay">
                        <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" PostBackUrl='loginPage.aspx' runat="server" ImageUrl='<%# Eval("hinhloaihang") %>'  />
                    <a href="#!">
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>
                  <div class="card-body">
                    <h4 class="card-title">
                        <asp:Label CssClass="ten-loai" runat="server" Text='<%# Eval("tenloai") %>' />
                    </h4>
                    <p class="card-text"><%# Eval("mota") %></p>
                    <div class="lop-nut">
                        <asp:Button Width="100px" Height="30px"  ID="Button1" CssClass="btn btn-default" runat="server" Text="Mua" PostBackUrl='loginPage.aspx' />
                    </div>
                  </div>
                </div>
          
          </ItemTemplate>
    </asp:DataList>

      
    </div>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
</asp:Content>
