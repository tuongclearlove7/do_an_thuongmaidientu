<%@ Page Title="" Language="C#" MasterPageFile="~/layout/maychu.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Đồ_ÁN_NHÓM.maychu.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .form-control{
            width:500px;
        }
       .them-container {

            max-width:100%;
            margin:0px 80px auto;
        }
       .themthanhcong{
           color:greenyellow;
           padding-top:30px;
       }
       .form-control{
           border:1px solid black;
           margin: 10px;
       }
    </style>
    
    <div class="them-container">
         <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Mã loại" ></asp:Label>
            <asp:TextBox ID="maloai_loaihang" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Tên loại" ></asp:Label>
            <asp:TextBox ID="tenloai" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
           <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Hình ảnh" ></asp:Label>
            <asp:TextBox ID="hinh_loaihang" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
           <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Mô tả" ></asp:Label>
            <asp:TextBox ID="mota_loaihang" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <br/>
        <div>
            <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="themmoi_loaihang" runat="server" Text="Thêm" />
        </div>
         <div class="themthanhcong" >
             <asp:Label ID="themmoi_thanhcong" CssClass="" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <br/>
    <br/>
     <div class="them-container">
         <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Mã hàng" ></asp:Label>
        <asp:TextBox ID="mahang" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <asp:Label ID="Label5" runat="server" Text="Tên hàng" ></asp:Label>
            <asp:TextBox ID="tenhang" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <asp:Label ID="Label7" runat="server" Text="Mô tả" ></asp:Label>
            <asp:TextBox ID="mota" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
          <asp:Label ID="Label8" runat="server" Text="Đơn giá" ></asp:Label>
            <asp:TextBox ID="dongia" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
          <asp:Label ID="Label9" runat="server" Text="maloai" ></asp:Label>
            <asp:TextBox ID="maloai_mathang" CssClass="form-control"  runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
          <asp:Label ID="Label6" runat="server" Text="Hình ảnh" ></asp:Label>
            <asp:TextBox ID="hinh_mathang" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:FileUpload ID="FileUpload2" runat="server" />
        </div>
         <br/>
        <div>
            <asp:Button ID="Button2" CssClass="btn btn-primary" OnClick="themmoi_mathang" runat="server" Text="Thêm" />
        </div>
       
    </div>
</asp:Content>
