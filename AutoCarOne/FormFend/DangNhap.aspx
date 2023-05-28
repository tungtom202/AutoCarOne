<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="AutoCarOne.FormFend.DangNhap" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link href="../Acsset/css/login.css" rel="stylesheet" />
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wraper">
        <div class="box-login">
             <h3 class="title">Đăng nhập</h3>
             <div class="box-input">
                 <asp:TextBox ID="tbemail" CssClass="input-name" Text="tungtom11" runat="server" placeholder="Email hoặc Số điện thoại đăng nhập *"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập Email or số điện thoại" ControlToValidate="tbemail" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />
                    
                    <%--<input class="input-name" type="text" name="hoten" placeholder="Email hoặc Số điện thoại đăng nhập *">--%> <br>
                 <asp:TextBox ID="tbpass" CssClass="input-name" Text="1112" runat="server" placeholder="Mật khẩu" type="password"></asp:TextBox>
                    <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Vui lòng nhập mật khẩu" ControlToValidate="tbpass" runat="server" CssClass="RequiValidate re1" ForeColor="Red" />
                    
                 <%--<input class="input-name" type="text" name="quequan" placeholder="Mật khẩu">--%> <br>
                    <div class="btn-login">
                        <asp:Button ID="btnLogin"  runat="server" Text="Đăng nhập" CssClass="submit-login" OnClick="btnLogin_Click"/>
                        <%--<input type="submit" value="Đăng nhập" class="submit-login">--%> 
                    </div>
                    <h5 class="title-botom">Hoặc đăng nhập bằng</h5>
                    <div class="btn-login btn-link">
                        <input type="submit" value="FaceBook" class="submit-login btn-facebook"> 
                        <input type="submit" value="Google" class="submit-login btn-gg"> 
                    </div>
                    <div class="btn-login btn-link">
                        <a class="link-forget" href="#">Quên mật khẩu ?</a>
                        <a class="link-forget" href="#">Cần trợ giúp ?</a>
                        <a class="link-forget" href="DangKy.aspx">Đăng ký ngay ></a>
                    </div>
             </div>
             <img src="../Acsset/image/Banner_home/imglogin.png" alt="" style="margin-top: 20px;">
        </div>
    </div>
        </form>
</body>
</html>