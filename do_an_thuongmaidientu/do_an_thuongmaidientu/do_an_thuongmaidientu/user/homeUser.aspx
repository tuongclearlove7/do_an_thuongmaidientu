<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.Master" AutoEventWireup="true" CodeBehind="homeUser.aspx.cs" Inherits="do_an_thuongmaidientu.user.homeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

     <style>

           #ContentPlaceHolder1_ds_mathang tr {
           float:left;
           margin:0px;
       }

       td input{
           height:250px;
           width:300px;
       }
       .card{
           width:285px;
           padding:15px;
           border: 3px solid white;
           border-radius: 10px 0px;
           background-image: linear-gradient(to right top, #051937, #004d7a, #008793, #00bf72, #a8eb12);
       }
       .card-img-top{
           width:250px;
       }
        .card  a{
           height: 30px;
           width: 100px;
           color:white;
           text-decoration:underline; 
            text-underline-position: under;
            text-underline-offset: 1px;
           
       }
         .card  a:hover{
           text-decoration:underline; 
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
            height:50px;
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
        .container-user{
            margin-left:120px;
        }

    </style>
   <div class="container-user" >
        <div><h2>Home page</h2></div>
       <div><h1>Danh sách mặt hàng</h1></div>
         <asp:DataList ID="ds_mathang"  runat="server">
            <ItemTemplate>
                    <div class="card">
                        <asp:Label CssClass="ma-loaihang" ID="Label1" runat="server" Text='<%# Eval("mahang") %>'></asp:Label>
                     <div class="view overlay">
                            <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" runat="server" ImageUrl='<%# Eval("hinhmathang") %>' PostBackUrl='<%# "chi_tiet_mathang.aspx?MatHang=" + Eval("mahang") %>'  />
                        <a href="#!">
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>
                      <div class="card-body">
                        <h4 class="card-title">
                            <asp:Label CssClass="ten-loai" runat="server" Text='<%# Eval("tenhang") %>' />
                            <asp:TextBox ID="maloai" CssClass="form-control" Visible="false" runat="server" Text='<%# Eval("mahang") %>'></asp:TextBox>
                        </h4>
                        <p class="card-text"><%# Eval("mota") %></p>
                        <div class="lop-nut">
                            <asp:LinkButton CssClass="btn-link"  runat="server" PostBackUrl='<%# "chi_tiet_mathang.aspx?MatHang=" + Eval("mahang") %>' Text='VIEW DETAIL'>
                            </asp:LinkButton>
                        </div>
                      </div>
                    </div>
              </ItemTemplate>
        </asp:DataList>
    </div>

     
       
  
   

</asp:Content>
