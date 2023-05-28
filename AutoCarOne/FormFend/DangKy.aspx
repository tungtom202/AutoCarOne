<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="AutoCarOne.FormFend.DangKy" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link href="../Acsset/css/login.css" rel="stylesheet" />
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wraper wraper-register">
        <div class="box-login">
             <h3 class="title">Đăng ký</h3>
             <div class="box-input">
                    
                 <asp:TextBox ID="tbSDT" CssClass="input-name" runat="server" placeholder="Số điện thoại *"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập số điện thoại" ControlToValidate="tbSDT" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />

                <asp:TextBox ID="tbMatKhau" CssClass="input-name" runat="server" placeholder="Mật khẩu"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập mật khẩu" ControlToValidate="tbMatKhau" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />

                <asp:TextBox ID="tbEmail" CssClass="input-name" runat="server" placeholder="Email *" type="email"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập email" ControlToValidate="tbEmail" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />

                <asp:TextBox ID="tbHoTen" CssClass="input-name" runat="server" placeholder="Họ và tên"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập đủ họ và tên" ControlToValidate="tbHoTen" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />

                <asp:TextBox ID="tbTinhTP" CssClass="input-name" runat="server" placeholder="Tỉnh thành phố"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập quê quán" ControlToValidate="tbTinhTP" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />

                <asp:TextBox ID="tbCMT" CssClass="input-name" runat="server" placeholder="Số CMT"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập số chứng minh thư" ControlToValidate="tbCMT" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />

                    <div class="btn-login">
                        <asp:Button ID="btnLogin"  runat="server" Text="Đăng ký" CssClass="submit-login" OnClick="btnLogin_Click"/>

                    </div>
                    <div class="link">
                        <a href="#" style="color: red; font-size: 14px; text-decoration:none">Bạn cần đăng ký / </a>
                        <a href="#" style="color: red; font-size: 14px; text-decoration:none ">Đăng nhập để đăng tin </a>
                    </div>
                    
             </div>
             <img src="../Acsset/image/Banner_home/imglogin.png" alt="" style="margin-top: 20px;">
        </div>
    </div>
        </form>
</body>
</html>
