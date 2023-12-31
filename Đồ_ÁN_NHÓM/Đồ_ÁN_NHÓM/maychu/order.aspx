﻿<%@ Page Title="" Language="C#" MasterPageFile="~/layout/maychu.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Đồ_ÁN_NHÓM.maychu.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        tr td, th{
            padding:10px;
        }
        .total-money{
            padding: 20px 0px 5px;
        }

        table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
         th {
      background-color:  orangered;
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
        color:red;
    }
        
    </style>
 
    <br/>
     <asp:GridView ID="ds_donhang" runat="server" AutoGenerateColumns="false"  >
            <Columns>
                 <asp:TemplateField HeaderText="Xóa">
                      <ItemTemplate>
                         <asp:Button  ID="btnXoa" CssClass="btn btn-primary" runat="server" Text="Xóa" OnClick="xoa" CommandArgument='<%# Eval("mahang") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="mahang" HeaderText="Mã hàng" />
                <asp:BoundField DataField="tendangnhap" HeaderText="Khách hàng" />
                <asp:BoundField DataField="tenhang" HeaderText="Tên hàng" />
                <asp:BoundField DataField="mota" HeaderText="Mô tả" />
                <asp:BoundField DataField="dongia" HeaderText="Đơn giá" />
                <asp:BoundField DataField="soluong" HeaderText="Số lượng" />
                 <asp:TemplateField  HeaderText="hình ảnh">
                    <ItemTemplate>
                            <asp:ImageButton  ID="ImageButton1" CssClass="img-sp" Height="80px" Width="100px" runat="server" PostBackUrl="" ImageUrl='<%# Eval("hinhmathang") %>' />
                             <asp:TextBox ID="textbox_mahang" Visible="false" Text='<%# Eval("mahang") %>' runat="server"></asp:TextBox>
                            <asp:TextBox ID="textbox_tendangnhap" Visible="false" Text='<%# Eval("tendangnhap") %>' runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" />
                <asp:BoundField DataField="thanhtoantien" ItemStyle-CssClass="payment" HeaderText="Thanh toán"/>
            </Columns>
        </asp:GridView>
        <div class="total-money">
            <asp:Label ID="tongthanhtien" runat="server" Text=""></asp:Label>
        </div>
          <div>
            <asp:Label ID="dem_sodon" runat="server" Text=""></asp:Label>
        </div>
        <br/>
</asp:Content>
