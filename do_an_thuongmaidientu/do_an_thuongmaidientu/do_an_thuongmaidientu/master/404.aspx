<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="do_an_thuongmaidientu.master._404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website thương mại điện tử</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="max-width:100%;margin: 0 auto;text-align:center;">
            <h1>
                  404 KHÔNG TÌM THẤY TRANG !
            </h1>
            <div>
                <asp:ImageButton ImageUrl="../public/image/error.png" PostBackUrl="loginPage.aspx" ID="ImageButton1" runat="server" />
            </div>
        </div>
        </div>
    </form>
</body>
</html>
