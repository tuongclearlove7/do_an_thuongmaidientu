<%@ Page Title="" Language="C#" MasterPageFile="~/layout/trangchu.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Đồ_ÁN_NHÓM.trangchu.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
   


     <style>
   

/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    
}

.wrapper {
    max-width: 488px;
    min-height: 500px;
    margin: 0 auto;
    padding: 0px 92px 30px 90px;
    background-color: white;
    border-radius: 15px;
    
}

.logo {
    width: 80px;
    margin: 20px 115px 30px auto;
}

.logo img {
    width: 100%;
    height: 80px;
    object-fit: cover;
    border-radius: 50%;
    box-shadow: 0px 0px 3px #5f5f5f,
        0px 0px 0px 5px #ecf0f3,
        8px 8px 15px #a7aaa7,
        -8px -8px 15px #fff;
}

.wrapper .name {
    font-weight: 600;
    font-size: 1.4rem;
    letter-spacing: 1.3px;
    padding: 0px 20px 25px;
    color: #555;
}

.wrapper .form-field input {
    width: 100%;
    display: block;
    border: none;
    outline: none;
    background: none;
    font-size: 1.2rem;
    color: #666;
    padding: 10px 15px 10px 10px;
    /* border: 1px solid red; */
}

.wrapper .form-field {
    padding-left: 10px;
    margin-bottom: 20px;
    border-radius: 20px;
    box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
}

.wrapper .form-field .fas {
    color: #555;
}

.wrapper .btn {
    
    width: 100%;
    height: 40px;
    border-radius: 25px;
    letter-spacing: 1.3px;
}


.wrapper a {
    text-decoration: none;
    font-size: 0.8rem;
    color: black;
}

.wrapper a:hover {
    color: #039BE5;
}

@media(max-width: 380px) {
    .wrapper {
        margin: 30px 20px;
        padding: 40px 15px 15px 15px;
    }
}
</style>
<div class="wrapper">
        <div class="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XDl1nDUtHg_4DO0XghwH69TWspVgvJ1tgzslVmTiVDpYjlvOOL0ME1BJphPx7arOeNk&usqp=CAU" alt="">
        </div>
       
        <form class="p-3 mt-3">
            <div class="form-field d-flex align-items-center">
               
               <asp:TextBox Text="" ID="tendangnhap" placeholder="Nhập tên đăng nhập" runat="server"></asp:TextBox>
            </div>
            <div class="form-field d-flex align-items-center">
               
                <asp:TextBox class="form-control" ID="matkhau" placeholder="Nhập mật khẩu" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div><asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Đăng nhập" OnClick="kiemtra_dangnhap" /></div>
        </form>

        <div class="text-center fs-6">
            <a href="#">Forget password?</a> or <a href="#">Sign up</a>
        </div>
    <br />
     <div style="text-align:center;"><asp:Label ID="thongbao" runat="server" Text=""></asp:Label></div>
    <div style="text-align:center;">
        <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tendangnhap"
        ForeColor="Red"  Text="Vui lòng nhập vào tên đăng nhập !" />
        </div>
        
        <div>
            <asp:RequiredFieldValidator style="text-align:center;" ID="RequiredFieldValidator1" runat="server" ControlToValidate="matkhau"
        ForeColor="Red" Dynamic="false" Text="Vui lòng nhập vào mật khẩu !" />
        </div>
    
        <div>
            <asp:RegularExpressionValidator ID="revInput" runat="server" ControlToValidate="matkhau"
              ForeColor="Red"   ValidationExpression="^.{0,12}$" ErrorMessage="Vui lòng nhập mật khẩu không quá 12 ký tự !">
             </asp:RegularExpressionValidator>
        </div>
       </div>
     
       
 </div>
   


</asp:Content>
