<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="AutoCarOne.TrangChu" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link href="Acsset/css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="/js/js.js">
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
    <!-- swiper-slider css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   

</head>

<body>
   
    <form id="form1" runat="server">
            <uc1:Header runat="server" ID="Header" />
        <div class="wraper" style="margin-top: 10px">
            
            <div class="banner">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                 
                    <div class="carousel-inner">
                        <asp:Repeater runat="server" ID="RepeaterBanner">
                            <ItemTemplate>
                        <div class="carousel-item active">
                            <img src='<%# Eval("img1") %>' class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item ">
                            <img src='<%# Eval("img2") %>' class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src='<%# Eval("img3") %>' class="d-block w-100" alt="...">
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
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

            <!-- content -->
            <div class="content">
                <div class="container">
                    <h2 class="heading">TÌM NHANH THEO HÃNG</h2>
                    <div class="slider-logo">
                        <!-- Swiper -->

                        <div class="swiper mySwiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a href="#" >
                                        <asp:ImageButton ID="ImageButton1" ImageUrl="../Acsset/image/logocar/logo1.PNG" runat="server" AlternateText="Toyota" OnClick="ImageButton1_Click"/>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                         <asp:ImageButton ID="ImageButton2" ImageUrl="../Acsset/image/logocar/logo2.PNG" AlternateText="Honda" runat="server" OnClick="ImageButton2_Click"/>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                      <asp:ImageButton ID="ImageButton3" ImageUrl="../Acsset/image/logocar/logo3.PNG" AlternateText="HyunDai" runat="server" OnClick="ImageButton3_Click" />
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                      <asp:ImageButton ID="ImageButton4" ImageUrl="../Acsset/image/logocar/logo4.PNG" AlternateText="Kia" runat="server" OnClick="ImageButton4_Click" />
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                      <asp:ImageButton ID="ImageButton5" ImageUrl="../Acsset/image/logocar/logo5.PNG" AlternateText="Ford" runat="server" OnClick="ImageButton5_Click"/>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                      <asp:ImageButton ID="ImageButton6" ImageUrl="../Acsset/image/logocar/logo6.PNG" AlternateText="Mazda" runat="server" OnClick="ImageButton6_Click"/>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                      <asp:ImageButton ID="ImageButton7" ImageUrl="../Acsset/image/logocar/logo7.PNG" AlternateText="Chevrolet" runat="server" OnClick="ImageButton7_Click" />
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                      <asp:ImageButton ID="ImageButton8" ImageUrl="../Acsset/image/logocar/logo8.PNG" AlternateText="Mitsubishi" runat="server" OnClick="ImageButton8_Click"/>
                                    </a>
                                </div>
                                
                                <div class="swiper-slide">
                                    <a href="#">
                                     <asp:ImageButton ID="ImageButton10" ImageUrl="../Acsset/image/logocar/logo10.PNG" AlternateText="Vinfast" runat="server" OnClick="ImageButton10_Click"/>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                     <asp:ImageButton ID="ImageButton11" ImageUrl="../Acsset/image/logocar/logo11.PNG" AlternateText="Suzuki" runat="server" OnClick="ImageButton11_Click"/>
                                    </a>
                                </div>
                                <div class="swiper-slide">
                                    <a href="#">
                                     <asp:ImageButton ID="ImageButton12" ImageUrl="../Acsset/image/logocar/logo12.PNG" AlternateText="Toyota" runat="server" OnClick="ImageButton12_Click"/>
                                    </a>
                                </div>

                            </div>
                            <div class="swiper-pagination"></div>
                        </div>

                    </div>
                   
                    <div class="content-tab">
                            
                         <div class="content-card">

                     
                            <asp:Repeater ID="RepeaterSearchLogo" runat="server">
                                <ItemTemplate>


                                    <div class="card" style="width: 18rem;">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <img src=" <%# Eval("img1") %>" class="card-img-top" alt="...">
                                        </a>
                                        <div class="card-body">
                                            <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="card-link">
                                                <p class="card-text"> <%# Eval("TenOto") %></p>
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
                                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="box-money"> Chi tiết >></a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                     
                        <h2 class="heading content-tab_heading">TIN GIAO MỚI NHẤT</h2>
                        <div class="content-card">
                           
                            <asp:Repeater ID="Repeater" runat="server" >
                                <ItemTemplate>


                                    <div class="card" style="width: 18rem;">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <img src=" <%# Eval("img1") %>" class="card-img-top" alt="...">
                                        </a>
                                        <div class="card-body">
                                            <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="card-link">
                                                <p class="card-text"> <%# Eval("TenOto") %></p>
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
                                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="box-money"> Chi tiết >></a>

                                                
                                               
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                             
                        </div>
                            <%-- 2 --%>


                         <h2 class="heading content-tab_heading">TOP MẪU XE ĐƯỢC NHIỀU LƯỢT XEM NHẤT</h2>
                        <div class="content-card">
                            <asp:Repeater ID="RepeaterLove" runat="server">
                                <ItemTemplate>


                                    <div class="card" style="width: 18rem;">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <img src=" <%# Eval("img1") %>" class="card-img-top" alt="...">
                                            <img src=" <%# Eval("ImgTop") %>" class="card-imgTop icon_heart" alt="..." >

                                        </a>
                                        <div class="card-body">
                                            <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="card-link">
                                                <p class="card-text"> <%# Eval("TenOto") %></p>
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
                                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="box-money"> Chi tiết >> </a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>


                </div>

                <div class="box-adevance">
                    <div class="container">
                        <div class="box-adevance_search">
                            <h2 class="box-adevance_search-text">BẠN CẦN TÌM THÊM?</h2>
                            <asp:DropDownList class="texbox-search" ID="droptinhtrang" runat="server"></asp:DropDownList>
                            <asp:DropDownList class="texbox-search" ID="dropHangxe"  runat="server"></asp:DropDownList>
                            <asp:DropDownList class="texbox-search" ID="dropDongxe"  runat="server"></asp:DropDownList>
                            <asp:DropDownList class="texbox-search" ID="dropGia"  runat="server"></asp:DropDownList>
                            
                            <asp:Button ID="btnTimkiemDrop" class="buton-up" runat="server" Text="Tìm kiếm" OnClick="btnTimkiemDrop_Click" />
                        </div>
                        <div class="content-card">
                            <asp:Repeater ID="RepeaterSearch" runat="server">
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
                                                    <i class="fa-solid fa-flag"></i><%# Eval("XuatXu") %>
                                                </li>
                                                <li>
                                                    <i class="fa-solid fa-gas-pump"></i><%# Eval("NhienLieu") %>
                                                </li>
                                            </ul>
                                            <div class="ul-box">
                                                <a href="#" class="box-phone"><i class="fa-solid fa-phone"></i><%# Eval("SDT") %></a>
                                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>" class="box-money"> Chi tiết >> </a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                    </div>

                </div>
                <div class="money-car-day">
                    <div class="container">
                        <img src="../Acsset/image/Banner_home/banner4.jpeg" style="padding: 10px 0;">
                        <h2 class="heading">TOP XE Ô TÔ NỔI BẬT </h2>
                        <div class="row">
                            <div class="col-sm colum-li ">
                                <li>
                                    <a href="#">Giá vinfast lux sa2.0</a>
                                </li>
                                <li>
                                    <a href="#">Giá vinfast Fadil</a>
                                </li>
                                <li>
                                    <a href="#">Giá KIA K3</a>
                                </li>
                            </div>
                            <!-- 2 -->
                            <div class="col-sm colum-li">
                                <li>
                                    <a href="#">Honda City</a>
                                </li>
                                <li>
                                    <a href="#">Mazda 3</a>
                                </li>
                                <li>
                                    <a href="#">Mazda 6</a>
                                </li>
                            </div>
                            <!-- 3 -->
                            <div class="col-sm colum-li">
                                <li>
                                    <a href="#">Giá vinfast LUX A2.0</a>
                                </li>
                                <li>
                                    <a href="#">Giá vinfast Fadil</a>
                                </li>
                                <li>
                                    <a href="#">Giá KIA K3</a>
                                </li>
                            </div>
                            <!-- 4 -->
                            <div class="col-sm colum-li">
                                <li>
                                    <a href="#">Giá vinfast lux sa2.0</a>
                                </li>
                                <li>
                                    <a href="#">Giá vinfast EF8</a>
                                </li>
                                <li>
                                    <a href="#">Giá KIA K5</a>
                                </li>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="riview-car">
                    <div class="container">
                        <h2 class="heading">ĐÁNH GIÁ XE 
                      <i class="fa-solid fa-chevron-right" style="font-size: 16px;"></i>
                        </h2>
                        <div class="row riview-car-bt">
                            <div class="col-sm">
                                <a href="#">
                                    <img src="../Acsset/image/video_img/videoimg1.jpg" width="100%" class="review-img">
                                    <p class="title-review">Đánh giá xe Honda CR-V 2022: Công nghệ không phải để làm màu mà để dẫn đầu</p>
                                </a>
                            </div>
                            <div class="col-sm">
                                <a href="#">
                                    <img src="../Acsset/image/video_img/videoimg2.jpg" width="100%">
                                    <p class="title-review">
                                        Đánh giá xe Honda City 2022: Đủ sức đe doạ mọi đối thủ trong tầm giá từ 529 triệu đồng
                                    </p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="salon-car">
                <div class="container">
                    <h2 class="heading">SALON Ô TÔ
                <i class="fa-solid fa-chevron-right" style="font-size: 16px;"></i>
                    </h2>
                    <div class="row">
                        <div class="col-sm dss">
                            <div class="row list-card">
                                <div class="col-sm">
                                    <img src="../Acsset/image/video_img/salon1.jpg">
                                </div>
                                <div class="col-sm title-text">
                                    <a href="#" class="link-salon">Minh Trí Auto (MT Automobile)</a>
                                    <p class="diachi"><i class="fa-solid fa-location-dot"></i>196 Đường Việt Hưng, Quận Long Biên, Thành phố Hà Nội</p>
                                    <p class="diachi"><i class="fa-solid fa-phone"></i>0372234568 - 0372234568-0904474664</p>
                                </div>
                            </div>
                        </div>

                        <!-- 2 -->
                        <div class="col-sm dss">
                            <div class="row list-card">
                                <div class="col-sm">
                                    <img src="../Acsset/image/video_img/salon2.jpg">
                                </div>
                                <div class="col-sm title-text">
                                    <a href="#" class="link-salon">Tùng Tom Auto</a>
                                    <p class="diachi"><i class="fa-solid fa-location-dot"></i>90 Nguyễn Văn Cừ, Long Biên, HN</p>
                                    <p class="diachi"><i class="fa-solid fa-phone"></i>0946222268 - 0946222268</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ***** -->
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-sm dss">
                            <div class="row list-card">
                                <div class="col-sm">
                                    <img src="../Acsset/image/video_img/salon3.jpg">
                                </div>
                                <div class="col-sm title-text">
                                    <a href="#" class="link-salon">Auto Minh Quang</a>
                                    <p class="diachi"><i class="fa-solid fa-location-dot"></i>222 Đinh Bộ Lĩnh, Phường 26, Quận Bình Thạnh, Tp HCM</p>
                                    <p class="diachi"><i class="fa-solid fa-phone"></i>0933334533 - 0933334533</p>
                                </div>
                            </div>
                        </div>

                        <!-- 2 -->
                        <div class="col-sm dss">
                            <div class="row list-card">
                                <div class="col-sm">
                                    <img src="../Acsset/image/video_img/salon4.jpg">
                                </div>
                                <div class="col-sm title-text">
                                    <a href="#" class="link-salon">Auto Minh Luân</a>
                                    <p class="diachi"><i class="fa-solid fa-location-dot"></i>812A Quang Trung, Phường 8, Quận Gò Vấp, TPHCM</p>
                                    <p class="diachi"><i class="fa-solid fa-phone"></i>0906646464 - 0906646464</p>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
            <div class="container">
                <img src="../Acsset/image/Banner_home/banner1.jpeg" width="100%" height="180px" style="margin: 20px 0;">
            </div>
            <uc1:Footer runat="server" ID="Footer" />
        </div>
        <div id="backtop">
            <i class="fa-sharp fa-solid fa-chevron-up"></i>
        </div>
    </form>
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 6,
            spaceBetween: 30,
            freeMode: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
    <!-- jquery-backtop -->
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
    <script>

        //backtop
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop()) {
                    $('#backtop').fadeIn();
                }
                else {
                    $('#backtop').fadeOut();
                }
            });
            $("#backtop").click(function () {
                $('html, body').animate({
                    scrollTop: 0
                }, 1000);
            });
        });
    </script>

</body>

</html>
