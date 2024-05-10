<%@ Page Title="" Language="C#" MasterPageFile="~/layout/maychu.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="Đồ_ÁN_NHÓM.maychu.history" %>
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

     th {
      background-color:  orangered;
    }

    tr:nth-child(even) {
      background-color:  whitesmoke;
    }
    
        .payment{
            color: #61c301;
        }
        .history-container{
            margin-left:70px;
        }
    </style>
    <div class="history-container">
         <div>
        <h1>LỊCH SỬ THANH TOÁN</h1>
    </div>
     <br/>
     <asp:GridView  ID="ds_thanhtoan" runat="server" AutoGenerateColumns="false" >
            <Columns>
                
                <asp:TemplateField HeaderText="Xóa">
                      <ItemTemplate>
                           <asp:TextBox ID="txtmathanhtoan" Visible="false" Text='<%# Eval("mathanhtoan") %>' runat="server"></asp:TextBox>
                            <asp:TextBox ID="txttendangnhap" Visible="false" Text='<%# Eval("tendangnhap") %>' runat="server"></asp:TextBox>
                         <asp:Button  ID="btnXoa" CssClass="btn btn-primary" runat="server" Text="Xóa" OnClick="xoa"  CommandArgument='<%# Eval("mathanhtoan") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                    <asp:BoundField DataField="mathanhtoan" HeaderText="Mã thanh toán" />
                    <asp:BoundField DataField="tendangnhap" HeaderText="Tên đăng nhập" />
                    <asp:BoundField DataField="mahang" HeaderText="Mã hàng" />
                    <asp:BoundField DataField="tenhang" HeaderText="Tên hàng" />
                    <asp:BoundField DataField="dongia" HeaderText="Đơn giá mặt hàng" />
                    <asp:BoundField DataField="soluong" HeaderText="Số lưọng" />
                    <asp:BoundField DataField="sotien" HeaderText="Số tiền" />
                    <asp:BoundField DataField="thanhtoantien" ItemStyle-CssClass="payment" HeaderText="Thanh toán" />
                    <asp:BoundField DataField="thoigian" HeaderText="Thời gian thanh toán" />
            </Columns>
        </asp:GridView>

     <asp:GridView ID="ds_sl" runat="server" AutoGenerateColumns="false" >
            <Columns>
                <asp:TemplateField HeaderText="Xóa">
                      <ItemTemplate>
                           <asp:TextBox ID="txtmathanhtoan" Visible="false" Text='<%# Eval("mathanhtoan") %>' runat="server"></asp:TextBox>
                            <asp:TextBox ID="txttendangnhap" Visible="false" Text='<%# Eval("tendangnhap") %>' runat="server"></asp:TextBox>
                         <asp:Button  ID="btnXoa" CssClass="btn btn-danger" runat="server" Text="Xóa" OnClick="xoa"  CommandArgument='<%# Eval("mathanhtoan") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:BoundField DataField="soluong" HeaderText="Số lưọng" />
            </Columns>
        </asp:GridView>

    <div>
        <asp:Label ID="thongbao" runat="server" Text=""></asp:Label>
    </div>
    </div>
   
</asp:Content>
