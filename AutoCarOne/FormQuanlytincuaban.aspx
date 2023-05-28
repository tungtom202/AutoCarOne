<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormQuanlytincuaban.aspx.cs" Inherits="AutoCarOne.FormQuanlytincuaban" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý tin giao</title>
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
    <link href="Acsset/css/quanlytingiao.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/dangtin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>
    <style>
        .btn {
            color: #0000EE;
            font-size: 14px;
            padding: 0
        }
        
.tb1{
    color: #000;

}
    </style>
    <form id="form1" runat="server">
        <uc1:Header runat="server" ID="Header" />
        <div class="container">
            <div class="content-myacc">
                <div class="head-acc">
                    <div class="box-acc">
                        <img src="Acsset/Bootschap/img/undraw_profile_2.svg" alt="" width="84px" height="84px" class="img-acc">
                        <div class="title-acc">
                            <h3>
                                <asp:Label ID="lblName" runat="server"></asp:Label>
                            </h3>
                            <p>
                                <asp:Label ID="lbEmail" runat="server"></asp:Label>
                            </p>

                            <%-- sửa thông tin của bạn --%>
                             <button type="button" class="btn " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Sửa thông tin cá nhân <i class="fa-solid fa-pen-to-square"></i></button>

                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Thông tin của bạn</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">ID:</label>
                                                    <asp:TextBox ID="tbID" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Họ & Tên:</label>
                                                    <asp:TextBox ID="tbHoTen" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Số điện thoại:</label>
                                                    <asp:TextBox ID="tbSDT" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Email:</label>
                                                    <asp:TextBox ID="tbemail" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Mật khẩu:</label>
                                                    <asp:TextBox ID="tbMatkhau" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Quê quán:</label>
                                                    <asp:TextBox ID="tbQuequan" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Chứng minh nhân dân:</label>
                                                    <asp:TextBox ID="tbCMT" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <asp:Button ID="btnCapNhap" runat="server" Text="Cập nhập" CssClass="btn btn-primary" OnClick="btnCapNhap_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                             
                            <br>
                            <asp:LinkButton  ID="linklichsudoc" runat="server" OnClick="linklichsudoc_Click">Lịch sử</asp:LinkButton>
                        </div>

                    </div>
                    <!-- boxx right -->
                    <div class="box-right">
                        <p>Số dư tài khoản: <a href="#">0 VNĐ</a></p>
                        <p>Số tin: <a href="#">
                            <asp:Label ID="Lbdemtin" runat="server" ></asp:Label>
                             tin</a></p>
                        <p>
                            <a href="#">Lịch sử giao dịch</a>
                        </p>
                    </div>
                </div>
            </div>
            <h4 style="font-size: 14px; color: #FF0000; font-weight: 500;">Vui lòng cập nhật thông tin địa chỉ người bán trong mục Sửa thông tin cá nhân</h4>
            <div class="no-content">


                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                  
                    <asp:Label ID="lbls" runat="server" Visible="false" ><i class="fa-solid fa-clock-rotate-left"></i> Lịch sử của bạn</asp:Label>
                <div class="content-card" style="margin-bottom: 20px">
                    <asp:DataList runat="server" ID="DatalistLS" DataKeyField="IDLS" OnItemCommand="DatalistLS_ItemCommand"  RepeatColumns="4">
                        <ItemTemplate>
                            <div class="card" style="width: 18rem;">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                    <img src=" <%# Eval("img1") %>" class="card-img-top" alt="...">
                                     <div class=" btn-bock" >
                                         <asp:Button ID="btnDelete" runat="server" Text="X" CssClass="box-money btnXoa btn-danger" CommandName="btnXoaLS" />
                                    </div>
                                </a>
                                <div class="card-body">
                                    <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="card-link">
                                        <p class="card-text"><%# Eval("TenOto") %></p>
                                    </a>
                                    <p><%# Eval("Gia", "{0:N0}") %> vnđ</p>
                                    <ul class="ul-top">
                                        <li>
                                            <i class="fa-solid fa-calendar-days"></i>
                                            <%# Eval("NamSx") %>
                                        </li>
                                        <li>
                                            <img src="../Acsset/image/icon/icontranmission.png" alt="">
                                            <%# Eval("HopSo") %>
                                        </li>
                                    </ul>
                                    <ul class="ul-down">
                                        <li>
                                            <i class="fa-solid fa-flag"></i> <%# Eval("XuatXu") %>
                                        </li>
                                        <li>
                                            <i class="fa-solid fa-gas-pump"></i> <%# Eval("NhienLieu") %>
                                        </li>
                                    </ul>
                                    <div class="ul-box">
                                        <a href="#" class="box-phone"><i class="fa-solid fa-phone"></i> <%# Eval("SDT") %></a>
                                        <a href="#" class="box-money"><i class="fa-solid fa-money-check-dollar"></i> Trả giá </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:datalist>

                </div>
                          </ContentTemplate>
                </asp:UpdatePanel>
                <h4 style="font-size: 18px">Các tin đã được duyệt <i style="font-size: 10px; padding: 2px; background-color: #0000EE; border-radius: 50%; color:#fff"
                    class="check fa-solid fa-check"></i></h4>
                <div class="content-card">
                    <asp:DataList runat="server" ID="Datalist1" DataKeyField="ID" OnItemCommand="Datalist1_ItemCommand"  RepeatColumns="4">
                        <ItemTemplate>
                            <div class="card" style="width: 18rem;">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                    <img src=" <%# Eval("img1") %>" class="card-img-top" alt="...">
                                     <div class=" btn-bock" >
                                         <asp:Button ID="btnEdit" runat="server" Text="Sửa" CssClass="box-phone btnSua btn-outline-warning" CommandArgument='<%#Eval("ID") %>'  OnClick="btnEdit_Click"/>
                                         <asp:Button ID="btnDelete" runat="server" Text="X" CssClass="box-money btnXoa btn-danger" CommandName="btnXoa"/>
                                    </div>
                                </a>
                                <div class="card-body">
                                    <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="card-link">
                                        <p class="card-text"><%# Eval("TenOto") %></p>
                                    </a>
                                    <p> <%# Eval("Gia", "{0:N0}") %> vnđ</p>
                                    <ul class="ul-top">
                                        <li>
                                            <i class="fa-solid fa-calendar-days"></i>
                                            <%# Eval("NamSx") %>
                                        </li>
                                        <li>
                                            <img src="../Acsset/image/icon/icontranmission.png" alt=""> <%# Eval("HopSo") %>
                                        </li>
                                    </ul>
                                    <ul class="ul-down">
                                        <li>
                                            <i class="fa-solid fa-flag"></i> <%# Eval("XuatXu") %>
                                        </li>
                                        <li>
                                            <i class="fa-solid fa-gas-pump"></i> <%# Eval("NhienLieu") %>
                                        </li>
                                    </ul>
                                    <div class="ul-box">
                                        <a href="#" class="box-phone"><i class="fa-solid fa-phone"></i> <%# Eval("SDT") %></a>
                                        <a href="#" class="box-money"><i class="fa-solid fa-money-check-dollar"></i> Trả giá </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:datalist>

                </div>
                <h4 style="border-top: 3px solid #0000EE; margin-top: 20px; font-size: 18px; padding: 10px 0"> <i style="font-size: 14px" class="fa-solid fa-spinner"></i> Các tin đang chờ duyệt 
                   
                </h4>
                <div class="content-card">
                    <asp:Repeater runat="server" ID="Repeater1">
                        <ItemTemplate>

                            <div class="card" style="width: 18rem;">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>">
                                    <img src=" <%# Eval("img1") %>" class="card-img-top" alt="...">
                                </a>
                                <div class="card-body">
                                    <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>" class="card-link">
                                        <p class="card-text"><%# Eval("TenOto") %></p>
                                    </a>
                                    <p><%# Eval("Gia", "{0:N0}") %> vnđ</p>
                                    <ul class="ul-top">
                                        <li>
                                            <i class="fa-solid fa-calendar-days"></i>
                                            <%# Eval("NamSx") %>
                                        </li>
                                        <li>
                                            <img src="../Acsset/image/icon/icontranmission.png" alt="">
                                            <%# Eval("HopSo") %>
                                        </li>
                                    </ul>
                                    <ul class="ul-down">
                                        <li>
                                            <i class="fa-solid fa-flag"></i> <%# Eval("XuatXu") %>
                                        </li>
                                        <li>
                                            <i class="fa-solid fa-gas-pump"></i> <%# Eval("NhienLieu") %>
                                        </li>
                                    </ul>
                                    <div class="ul-box">
                                        <a href="#" class="box-phone"><i class="fa-solid fa-phone"></i> <%# Eval("SDT") %></a>
                                        <a href="#" class="box-money"><i class="fa-solid fa-money-check-dollar"></i> Trả giá </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>


        <uc1:Footer runat="server" ID="Footer" />
    </form>
    <script>  
        $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) 
            var id = button.data('id') 
            var hoten = button.data('hoten') 
            var sdt = button.data('sdt') 
            var email = button.data('email') 
            var mk = button.data('mk') 
            var quequan = button.data('quequan') 
            var cmt = button.data('cmt') 
            var modal = $(this)
            
            modal.find(' .tb1 input').val(id)
            modal.find(' .tb2 input').val(hoten)
            modal.find(' .tb3 input').val(sdt)
            modal.find(' .tb4 input').val(email)
            modal.find(' .tb5 input').val(mk)
            modal.find(' .tb6 input').val(quequan)
            modal.find(' .tb7 input').val(cmt)

        })
        //
       
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>
</html>
