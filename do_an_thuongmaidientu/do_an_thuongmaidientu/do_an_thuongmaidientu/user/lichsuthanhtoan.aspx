<%@ Page Title="" Language="C#" MasterPageFile="~/master/user.Master" AutoEventWireup="true" CodeBehind="lichsuthanhtoan.aspx.cs" Inherits="do_an_thuongmaidientu.user.lichsuthanhtoan" %>
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

    td, th {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }

    tr:nth-child(even) {
      background-color: #dddddd;
    }
         .payment{
            color: #61c301;
        }
    </style>
    <div>
        <h1>LỊCH SỬ THANH TOÁN</h1>
    </div>
     <br/>
     <asp:GridView ID="ds_thanhtoan" runat="server" AutoGenerateColumns="false"  >
            <Columns>
                    <asp:BoundField DataField="mathanhtoan" HeaderText="Mã thanh toán" />
                    <asp:BoundField DataField="mahang" HeaderText="Mã hàng" />
                    <asp:BoundField DataField="tenhang" HeaderText="Tên hàng" />
                    <asp:BoundField DataField="dongia" HeaderText="Đơn giá mặt hàng" />
                    <asp:BoundField DataField="soluong" HeaderText="Số lưọng" />
                    <asp:BoundField DataField="sotien" HeaderText="Số tiền" />
                    <asp:BoundField DataField="thanhtoantien" ItemStyle-CssClass="payment" HeaderText="Thanh toán" />
                    <asp:BoundField DataField="thoigian" HeaderText="Thời gian thanh toán" />
            </Columns>
        </asp:GridView>
    <div>
        <asp:Label ID="thongbao" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
