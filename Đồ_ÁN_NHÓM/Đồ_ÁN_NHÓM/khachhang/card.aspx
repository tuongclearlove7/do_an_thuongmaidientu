<%@ Page Title="" Language="C#" MasterPageFile="~/layout/khachhang.Master" AutoEventWireup="true" CodeBehind="card.aspx.cs" Inherits="Đồ_ÁN_NHÓM.khachhang.card" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        th{
            padding:5px;
        }
        td{
            padding:10px;
        }
         th {
      background-color:  orangered;
    }
         table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }

        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }

        tr:nth-child(even) {
          background-color: #dddddd;
        }
          .payment{
            color: red;
        }
    </style>
     <div style="padding-top:0px;">
        <div>
             <h1>Giỏ hàng</h1>
        </div>
        <div>
            <br/>
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Xóa sửa" Onclick="chuyentrangXoasua" /> 
        </div>
        <br/>
         <asp:GridView ID="ds_donhang" runat="server" AutoGenerateColumns="false" >
            <Columns>
                <asp:BoundField DataField="mahang" HeaderText="Mã hàng" />
                <asp:BoundField DataField="tenhang" HeaderText="Tên hàng" />
                <asp:BoundField DataField="mota" HeaderText="Mô tả" />
                <asp:BoundField DataField="dongia" HeaderText="Đơn giá" />
                <asp:BoundField DataField="soluong" HeaderText="Số lượng" />
                <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" />
                <asp:BoundField DataField="thanhtoantien" ItemStyle-CssClass="payment" HeaderText="Thanh toán" />
                 <asp:TemplateField  HeaderText="Thanh toán">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-primary" PostBackUrl='<%#"payment.aspx?MatHang=" + Eval("mahang") %>' ID="Button2" runat="server" Text="Thanh toán" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         <br/>
        <div>
            <asp:Label ID="tongthanhtien" runat="server" Text=""></asp:Label>
        </div>
          <div>
            <asp:Label ID="dem_sodon" runat="server" Text=""></asp:Label>
        </div>
    </div>

</asp:Content>
