<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.Master" AutoEventWireup="true" CodeBehind="thanhtoan.aspx.cs" Inherits="do_an_thuongmaidientu.user.thanhtoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .thanhtoan-container{
            margin-left:70px;
        }
        .form-control{
            border:1px solid black;
        }
    </style>
     <div class="thanhtoan-container">
     
         <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Mã hàng" ></asp:Label>
            <asp:TextBox ID="txtmahang"  ReadOnly="true" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
         <asp:DataList ID="ds_thanhtoan"  runat="server">
            <ItemTemplate>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Tên hàng"></asp:Label>
                    <asp:TextBox ID="txttenhang" CssClass="form-control" ReadOnly="true" runat="server" Text='<%# Eval("tenhang") %>'></asp:TextBox>
                </div>
               
            </ItemTemplate>
        </asp:DataList>
          <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Đơn giá"></asp:Label>
                <asp:TextBox ID="txtdongia" CssClass="form-control" ReadOnly="true" runat="server" Text=''></asp:TextBox>
            </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Tên đăng nhập" ></asp:Label>
            <asp:TextBox ID="txttendangnhap"  ReadOnly="true" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Số tiền" ></asp:Label>
            <asp:TextBox ID="txtsotien" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
         <br/>
        <div>
            <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="thanhtoantien" runat="server" Text="Thanh toán" />
        </div>
         <br/>
         <div class="thanhtoan_thanhcong" >
             <asp:Label ID="thongbao" CssClass="" runat="server" Text=""></asp:Label>
        </div>
    </div>


</asp:Content>
