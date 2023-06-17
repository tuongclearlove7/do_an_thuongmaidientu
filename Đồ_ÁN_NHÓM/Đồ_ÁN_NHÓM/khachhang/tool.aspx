<%@ Page Title="" Language="C#" MasterPageFile="~/layout/khachhang.Master" AutoEventWireup="true" CodeBehind="tool.aspx.cs" Inherits="Đồ_ÁN_NHÓM.khachhang.tool" %>
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
    </style>
      <div style="padding-top:0px;">
        <div>
             <h1>Sửa xóa nhiều mặt hàng trong giỏ hàng</h1>
        </div>
          
            <br/>
        <asp:GridView ID="ds_donhang" runat="server" AutoGenerateColumns="false" RowCommand="ds_donhang_RowCommand" OnRowDataBound="ds_donhang_RowDataBound" >
            <Columns>
                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        </asp:CheckBoxList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="mahang" HeaderText="Mã hàng" />
                <asp:BoundField DataField="tenhang" HeaderText="Tên hàng" />
                <asp:BoundField DataField="mota" HeaderText="Mô tả" />
                <asp:BoundField DataField="dongia" HeaderText="Đơn giá" />
                 <asp:TemplateField  HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="textbox_soluong" Text=' <%# Eval("soluong") %>'  runat="server"></asp:TextBox>
                        <asp:TextBox ID="textbox_mahang" Visible="false" Text='<%# Eval("mahang") %>' runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" />
            </Columns>
        </asp:GridView>
          <br/>
        <div>
            <asp:Label ID="tongthanhtien" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="label_xoa" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <br/>
    <div>
        <asp:Button  ID="btnXoa" CssClass="btn btn-primary" runat="server" Text="Xóa" OnClick="xoa" CommandArgument='<%# Eval("mahang") %>' />
        <br/>
        <asp:Button ID="btnsua"  CssClass="btn btn-primary" runat="server" Text="Sửa" OnClick="sua" />
    </div>

</asp:Content>
