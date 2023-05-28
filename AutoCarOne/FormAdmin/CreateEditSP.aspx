<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CreateEditSP.aspx.cs" Inherits="AutoCarOne.FormAdmin.WebForm3" %>

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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>

    <body>
        <form id="form1" runat="server">



            <!-- Page wrapper  -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <div class="page-breadcrumb bg-white">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4>Thông tin sản phẩm </h4>
                        </div>
                        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <div class="d-md-flex">
                                <ol class="breadcrumb ms-auto">
                                </ol>

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
                                        <div class="user-content">
                                            
                                            <h4 class="text-white mt-2">
                                                <asp:Label CssClass="text-white mt-2" ID="lblTen" runat="server"></asp:Label>
                                            </h4>
                                            <h5 class="text-white mt-2">
                                                <asp:Label ID="lblEmail" CssClass="text-white mt-2" runat="server"></asp:Label>
                                            </h5>
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
                                <div>
                                    <h6 style="margin-top: 20px">Ảnh xe</h6>
                                     <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                </ol>
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active">
                                                        <asp:Image ID="Image1" runat="server" class="d-block w-100" />
                                                    </div>
                                                    <div class="carousel-item ">
                                                        <asp:Image ID="Image2" runat="server" class="d-block w-100" />
                                                    </div>
                                                    <div class="carousel-item ">
                                                        <asp:Image ID="Image3" runat="server" class="d-block w-100" />
                                                    </div>
                                                    <div class="carousel-item ">
                                                        <asp:Image ID="Image4" runat="server" class="d-block w-100" />
                                                    </div>
                                                    <div class="carousel-item ">
                                                        <asp:Image ID="Image5" runat="server" class="d-block w-100" />
                                                    </div>
                                                    <div class="carousel-item ">
                                                        <asp:Image ID="Image6" runat="server" class="d-block w-100" />
                                                    </div>
                                                </div>
                                                <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </button>
                                                <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </button>
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
                                            <label class="col-md-12 p-0">Tên xe</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="tbTen" runat="server" 
                                                    CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Hãng xe</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="tbHang" runat="server" 
                                                    CssClass="form-control p-0 border-0" name="example-email"></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Năm sản xuất</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="tbNamSX" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-sm-12">Xuất xứ </label>
                                            <div class="col-sm-12 border-bottom">
                                                <asp:DropDownList ID="dropXuatXu" runat="server" CssClass="form-select shadow-none p-0 border-0 form-control-line"></asp:DropDownList>

                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-sm-12">Hộp số</label>
                                            <div class="col-sm-12 border-bottom">
                                                <asp:DropDownList ID="dropHopSo" runat="server" CssClass="form-select shadow-none p-0 border-0 form-control-line"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-sm-12">Nhiên liệu</label>
                                            <div class="col-sm-12 border-bottom">
                                                <asp:DropDownList ID="Dropnhienlieu" runat="server" CssClass="form-select shadow-none p-0 border-0 form-control-line"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-sm-12">Kiểu dáng</label>
                                            <div class="col-sm-12 border-bottom">
                                                <asp:DropDownList ID="Dropkieudang" runat="server" CssClass="form-select shadow-none p-0 border-0 form-control-line"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-sm-12">Tình trạng</label>
                                            <div class="col-sm-12 border-bottom">
                                                <asp:DropDownList ID="Droptinhtrang" runat="server" CssClass="form-select shadow-none p-0 border-0 form-control-line"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Số km</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="tbkm" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Địa chỉ</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="tbDiachi" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Tỉnh TP</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="TbTinhtp" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Giá bán</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="Tbgia" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Số lượng</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <asp:TextBox ID="tbSoLuong" runat="server" CssClass="form-control p-0 border-0"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group mb-4">
                                            <div class="col-sm-12">
                                                <asp:Button ID="btnSave" CssClass="btn btn-success" runat="server" Text="Save" />
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
        <%-- *** --%>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>

    </html>
</asp:Content>
