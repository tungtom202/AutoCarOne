<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CreateEditBNer.aspx.cs" Inherits="AutoCarOne.FormAdmin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Profile</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/ample-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../Acsset/Bootschap2/plugins/images/favicon.png">
    <!-- Custom CSS -->
   <link href="../Acsset/Bootschap2/css/style.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
   
</head>

<body>
    <style>
        .file-load{
            margin: 10px
        }
    </style>
    <form id="form1" runat="server">
     

   
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <asp:Label ID="lbcreate" runat="server" CssClass="page-title" ></asp:Label>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <div class="d-md-flex">
                            <ol class="breadcrumb ms-auto">
                                <li><a href="#" class="fw-normal">Dashboard</a></li>
                            </ol>
                            <a href="https://www.wrappixel.com/templates/ampleadmin/" target="_blank"
                                class="btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">Upgrade
                                to Pro</a>
                        </div>
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
                                      
                                    </div>
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
                                        <label class="col-md-12 p-0">ID</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:TextBox ID="tbID" runat="server" Enabled="false" placeholder="ID tự tăng" CssClass="form-control p-0 border-0"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="example-email" class="col-md-12 p-0">Ảnh</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:Image ID="Image1" runat="server" Width="600px"/>
                                            <div>
                                            1<asp:FileUpload CssClass="file-load" ID="FileUpload1" runat="server" />
                                            </div>
                                            <asp:Image ID="Image2" runat="server" Width="600px"/>
                                            <div>
                                            2<asp:FileUpload CssClass="file-load" ID="FileUpload2" runat="server" />
                                            </div>
                                            
                                            <asp:Image ID="Image3" runat="server" Width="600px"/>
                                            <div>
                                            3<asp:FileUpload CssClass="file-load" ID="FileUpload3" runat="server" />

                                            </div>
                                            <div style="display: flex; justify-content: center; margin: 20px 0; align-items: center">
                                                <i class="fa-solid fa-arrow-right" style="font-size: 20px; padding: 10px"></i>
                                                <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="Up ảnh" OnClick="Button1_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="col-md-12 p-0">Tiêu đề</label>
                                        <div class="col-md-12 border-bottom p-0">
                                            <asp:TextBox ID="tbTieuDe" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
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
