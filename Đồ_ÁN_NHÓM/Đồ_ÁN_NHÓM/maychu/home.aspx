<%@ Page Title="" Language="C#" MasterPageFile="~/layout/maychu.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Đồ_ÁN_NHÓM.maychu.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>

                #ContentPlaceHolder1_ds_category tr, #ContentPlaceHolder1_ds_mathang tr {
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
                .label_sl{
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
                .sua input{
                    font-weight: bold;
                    height:30px;
                    width:150px;
                    border-radius:5px;
                    border:1px solid black;
                }
                .card a{
                    color:black;
                    text-decoration:none;
                }
            </style>
           <div class="container-user" >
               <div><h1>DANH MỤC MẶT HÀNG</h1></div>
               <br/>
              <asp:Button ID="Button2" CssClass="button-1" OnClick="sualoaihang" runat="server" Text="SAVE" />
               <br/> <br/> 
                 <asp:DataList ID="ds_category"  runat="server">
                    <ItemTemplate>
                            <div class="card">
                                <asp:Label CssClass="ma-loaihang" Hidden="true"  ID="lb_mahang" runat="server" Text='<%# Eval("maloai") %>'></asp:Label>
                             <div class="view overlay">
                                 <div style="text-align:center;">
                                    <asp:ImageButton ID="ImageButton1" CssClass="card-img-top" runat="server" ImageUrl='<%# Eval("hinhloaihang") %>' PostBackUrl='home.aspx'  />
                                 </div>
                                <a href="#!">
                                  <div class="mask rgba-white-slight"></div>
                                </a>
                              </div>
                              <div class="card-body">
                                <p class="sua">
                                    <asp:TextBox ID="txt_maloai" Visible="false" Text='<%# Eval("maloai") %>' runat="server"></asp:TextBox>
                                    <asp:TextBox ID="txt_tenloai" Text='<%# Eval("tenloai") %>' runat="server"></asp:TextBox>
                                </p>
                                <p class="sua">
                                   <asp:TextBox ID="txt_mota" Text='<%# Eval("mota") %>' runat="server"></asp:TextBox>
                                </p>
                                    <p class="sua">
                                   <asp:TextBox ID="txt_hinhloaihang" Text='<%# Eval("hinhloaihang") %>' runat="server"></asp:TextBox>
                                </p>
                                  <div>
                                       <asp:Button Width="100px" Height="30px"  ID="btnXoa" CssClass="button-1" runat="server" Text="DELETE" OnClick="xoaloaihang" CommandArgument='<%# Eval("maloai") %>' />
                                  </div>
                              </div>
                            </div>
                      </ItemTemplate>
                </asp:DataList>

               <br/>
               <br/>
               <div><h1>DANH SÁCH MẶT HÀNG</h1></div>
               <br/>
                <asp:Button ID="Button3" CssClass="button-1" OnClick="suamathang" runat="server" Text="SAVE" />
               <br/> <br/> 
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
                        <p class="sua">
                             <asp:TextBox ID="txt_mahang" Visible="false" Text='<%# Eval("mahang") %>' runat="server"></asp:TextBox>
                            <asp:TextBox ID="txt_tenhang" Text='<%# Eval("tenhang") %>' runat="server"></asp:TextBox>
                        </p>
                         <p class="sua">
                            <asp:TextBox ID="txt_mota" Text='<%# Eval("mota") %>' runat="server"></asp:TextBox>
                        </p>
                           <p class="sua">
                            <asp:TextBox ID="txt_hinhmathang" Text='<%# Eval("hinhmathang") %>' runat="server"></asp:TextBox>
                        </p>
                        <p class="sua">
                            <asp:TextBox ID="txt_dongia" Text='<%#Eval("dongia") %>' runat="server"></asp:TextBox>
                        </p>
                            <div class="lop-nut">
                                 <asp:Button Width="100px" Height="30px"  ID="btnXoa_mathang" CssClass="button-1" runat="server" Text="DELETE" OnClick="xoamathang" CommandArgument='<%# Eval("mahang") %>' />
                            </div>
                      </div>
                    </div>
              </ItemTemplate>
        </asp:DataList>
               </div>
</asp:Content>
