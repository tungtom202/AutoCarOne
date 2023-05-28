<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CreateEditAdmin.aspx.cs" Inherits="AutoCarOne.FormAdmin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin 
        , html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Profile</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../Acsset/Bootschap2/plugins/images/favicon.png">
    <!-- Custom CSS -->
   <link href="../Acsset/Bootschap2/css/style.min.css" rel="stylesheet">
   
</head>

<body>
    <form id="form1" runat="server">
     

   
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <asp:Label ID="lbcreate" runat="server" CssClass="page-title" ></asp:Label>
                    </div>
                    
                </div>
            </div>
           
            <div class="container-fluid">
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-12">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100%" alt="user" src="../Acsset/Bootschap2/plugins/images/large/img1.jpg">
                                <div class="overlay-box">
                                    <div class="user-content">
                                        <a href="javascript:void(0)"><img src="../Acsset/Bootschap2/plugins/images/users/genu.jpg"
                                                class="thumb-lg img-circle" alt="img"></a>
                                        <h4 class="text-white mt-2">
                                            <asp:Label ID="lablHoTen" runat="server" ></asp:Label></h4>
                                        <h5 class="text-white mt-2">
                                            <asp:Label ID="lablEmail" runat="server" ></asp:Label></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="user-btm-box mt-5 d-md-flex">
                                <div class="col-md-4 col-sm-4 text-center">
                                    ID = 
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                     <asp:TextBox ID="tbID" runat="server" Enabled="false" 
                                               CssClass="form-control p-0 border-0"></asp:TextBox>
                                     
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-horizontal form-material">
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Full Name</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:TextBox ID="tbHoTen" runat="server" type="text" placeholder="Tên Doe"
                                               CssClass="form-control p-0 border-0"></asp:TextBox>
                                           </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="example-email" class="col-md-12 p-0">Email</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:TextBox ID="tbEmail" runat="server" type="email" placeholder="johnathan@admin.com"
                                                CssClass="form-control p-0 border-0" name="example-email" ></asp:TextBox>
                                           
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Password</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:TextBox ID="tbPass" runat="server" type="Password" CssClass="form-control p-0 border-0"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Phone number</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:TextBox ID="tbSDT" runat="server" type="text" placeholder="123 456 7890"
                                                CssClass="form-control p-0 border-0"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Ngày sinh</label>
                                        <div class="col-md-12 border-bottom p-0">
                                             <asp:TextBox ID="tbNgaySinh" runat="server" TextMode="DateTimeLocal" 
                                                CssClass="form-control p-0 border-0"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-sm-12">Select chức vụ</label>

                                        <div class="col-sm-12 border-bottom">
                                            <asp:DropDownList ID="dropChucvu" runat="server" CssClass="form-select shadow-none p-0 border-0 form-control-line"></asp:DropDownList>
                                           
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <div class="col-sm-12">
                                            <asp:Button ID="btnSave" CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnSave_Click"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
               
            </div>
           
        </div>
       
        </form>

    <script src="../Acsset/Bootschap2/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../Acsset/Bootschap2/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../Acsset/Bootschap2/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="../Acsset/Bootschap2/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../Acsset/Bootschap2/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../Acsset/Bootschap2/js/custom.js"></script>
</body>

</html>
</asp:Content>
