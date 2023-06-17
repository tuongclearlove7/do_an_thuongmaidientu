<%@ Page Title="" Language="C#" MasterPageFile="~/layout/khachhang.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Đồ_ÁN_NHÓM.khachhang.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <style>
        .img-sp{
            height:270px;
            width:250px;
        }
        .container-user{
            margin-left:120px;
        }
        .form-control{
            border:1px solid black;
        }
    </style>

    <div class="container-user" >
         <div>
        <h1>Chi tiết mặt hàng</h1>
    </div>
     <asp:DataList ID="ds_mathang" runat="server">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" PostBackUrl='<%# "detail.aspx?MatHang="+Eval("mahang") %>' CssClass="img-sp" runat="server" ImageUrl='<%# Eval("hinhmathang") %>' />
            <div>
                <asp:Label ID="Label1" runat="server" Text='<%# "Tên hàng : "+Eval("tenhang") %>'></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Text='<%# "Mô tả : "+Eval("mota") %>'></asp:Label>
            </div>
              <div>
                <asp:Label ID="Label3" runat="server" Text='<%# "Đơn giá : "+Eval("dongia") %>'></asp:Label>
            </div>
             <div>
                 <asp:Label ID="Label4" runat="server" >Số lượng</asp:Label>
                 <asp:TextBox CssClass="form-control" ID="soluong" runat="server" >
                 </asp:TextBox>
            </div>
            <br/>
            <div>
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Mua" OnClick="mua" CommandArgument='<%# Container.ItemIndex %>' />
            </div>
        </ItemTemplate>
    </asp:DataList>
        <asp:Label ID="hienthi" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
