<%@ Page Title="" Language="C#" MasterPageFile="~/layout/trangchu.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Đồ_ÁN_NHÓM.trangchu.home" %>
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
           text-align:center;
           width:220px;
           padding:15px;
           margin:3px;
           border: 1px solid black;
           border-radius: 10px;
           background: white;
       }
       .card-img-top{
               width: 150px;
                height: 150px;
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
            max-width:100%;
            margin:15px 31px auto;

        }
        .ten-loai{
            color :black;
            font-size:15px;
            text-align:center;
        }
        .card-text{
            color :black;
            height:30px;
            margin-bottom:0px;
            font-size:10px;
            text-align:center;
        }
        .overlay{
            height:160px;
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
            color:black;
            font-size:17px;
        }

        .img-sp{
            height:270px;
            width:250px;
        }
        .container-user{
            margin-left:120px;
        }
        .form-control{
            height:25px;
            width:175px;
            border:1px solid black;
            border-radius:5px;
        }
        .mota{
            color:black;
            text-align:center;
            font-size:13px;
        }
        .lb-sl{
            text-align:center;
            color:black;
        }
        .txt_sl{
            text-align:center;
            margin-top:10px;
        }
        .button-1{
            width:80px;
            height:30px;
            font-size:12px;
            border:1px solid black;
            border-radius:4px;
        }
        .card-title{
            margin-right:0px;
        }
        .ten-hang{
            font-weight: bold;
        }
    </style>
   <div class="container-user" >
       <div><h1>DANH SÁCH MẶT HÀNG</h1></div>
         <asp:DataList ID="ds_mathang"  runat="server">
            <ItemTemplate>
                    <div class="card">
                        <asp:Label CssClass="ma-loaihang" Hidden="true" ID="lb_mahang" runat="server" Text='<%# Eval("mahang") %>'></asp:Label>
                        <div class="view overlay">
                         <div style="text-align:center;">
                            <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" runat="server" ImageUrl='<%# Eval("hinhmathang") %>' PostBackUrl=''  />
                         </div>
                        <a href="#!">
                          <div class="mask rgba-white-slight"></div>
                        </a>
                      </div>
                      <div class="card-body">
                        <p class="ten-hang">
                            <asp:Label CssClass="ten-loai" runat="server" Text='<%# Eval("tenhang") %>' />
                        </p>
                          <div style="height:50px;">
                               <asp:Label CssClass="mota" runat="server" Text='<%# Eval("mota") %>' />
                          </div>
                           <div>
                              <asp:Label ID="Label1" runat="server" Text='<%# "Giá : "+Eval("dongia") %>'></asp:Label>
                          </div>
                            <div class="lop-nut">
                                <asp:Button PostBackUrl="login.aspx" ID="Button1" CssClass="button-1"  runat="server" Text="Mua ngay" />
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
