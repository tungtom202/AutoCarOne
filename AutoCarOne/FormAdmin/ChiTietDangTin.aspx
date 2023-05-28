<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietDangTin.aspx.cs" Inherits="AutoCarOne.FormAdmin.ChiTietDangTin" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết ô tô</title>
    <link href="../Acsset/css/chitietsp.css" rel="stylesheet" />
    <link href="../Acsset/css/main.css" rel="stylesheet" />
    <link href="../Acsset/css/muabanxe.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

</head>

<body>
    <style>
        .btnduyet {
            margin: 20px 0;
            width: 200px;
            font-size: 16px;
            color: #fff;
            border: none;
            padding: 6px 0;
            border-radius: 4px
        }

        .duyetmau {
            background-color: #135EAC;
        }

        .nomau {
            background-color: #f52f2f;
        }

        .dropluachon {
            width: 100%;
            height: 30px;
            border-radius: 4px;
            font-size: 14px
        }
        .csstbkd{
            width: 100%;
            font-size: 14px;
            height: 68px
        }
    </style>
    <form id="form1" runat="server">
        <div class="box-wrap" style="width: 100%">
            <div class="container">
                <asp:Repeater ID="Repeater" runat="server">
                    <ItemTemplate>
                        </div>
        <div class="container container-two">
            <div class="b-column" style="margin: 0 auto">
                <h4>Tin của: <%# Eval("HoTen") %></h4>
                <div class="head-break">
                    <a href="#">Mua xe </a>>
                <a href="#">Mua <%# Eval("Hang") %> </a>>
                <a href="#">Mua <%# Eval("TenOto") %> </a>>
                <a href="#">Mã tin: <%# Eval("ID") %></a>

                </div>
                <div class="box-detail">
                    <h1 class="title-detail">
                        <%# Eval("TenOto") %>
                    </h1>
                    <div class="box-price">
                        <span class="not-rolled"><%# Eval("Gia") %> vnđ</span> <i style="font-size: 12px;"
                            class="fa-solid fa-grip-lines-vertical"></i>
                        <span class="rolling-rack">Giá lăn bánh: 20 tỉ 624 triệu <i
                            style="background-color: #135EAC; font-size: 9px; color: #fff; border-radius: 50%; padding: 2px 4px;"
                            class="fa-solid fa-info"></i>
                        </span>

                    </div>
                    <div class="silder-detail">
                        <div class="main-image">
                            <asp:Image ID="Image1" runat="server" class="img-feature img-chung" ImageUrl='<%# Eval("img1") %>' />
                            <%--<img src="./image/Anhxe/san1.jpg" alt="" class="img-feature img-chung">--%>
                            <div class="control prev">
                                <i class="fa-solid fa-chevron-left"></i>
                            </div>
                            <div class="control next">
                                <i class="fa-solid fa-chevron-right"></i>
                            </div>

                        </div>
                        <div class="list-image">
                            <div>
                                <asp:Image ID="Image2" runat="server" class="img-chung" ImageUrl='<%# Eval("img1") %>' />
                            </div>
                            <div class="active">
                                <asp:Image ID="Image3" runat="server" class=" img-chung" ImageUrl='<%# Eval("img2") %>' />

                            </div>
                            <div>
                                <asp:Image ID="Image4" runat="server" class="img-chung" ImageUrl='<%# Eval("img3") %>' />

                            </div>
                            <div>
                                <asp:Image ID="Image5" runat="server" class="img-chung" ImageUrl='<%# Eval("img4") %>' />

                            </div>
                            <div>
                                <asp:Image ID="Image6" runat="server" class="img-chung" ImageUrl='<%# Eval("img5") %>' />

                            </div>
                            <div>
                                <asp:Image ID="Image7" runat="server" class="img-chung" ImageUrl='<%# Eval("img6") %>' />

                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-info-detail">
                    <ul class="list-info">
                        <div class="list-info-left">
                            <li>
                                <span class="info-title"><i class="fa-solid fa-calendar-days"></i>Năm SX</span>
                                <span class="info-tiep">
                                    <%# Eval("NamSx") %>
                                </span>
                            </li>
                            <li>
                                <span class="info-title"><i class="fa-solid fa-flag-checkered"></i>Xuất Xứ</span>
                                <span class="info-tiep">
                                    <%# Eval("XuatXu") %>
                                </span>
                            </li>
                            <li>
                                <span class="info-title">
                                    <img src="../Acsset/image/icon/icontranmission.png" alt=""
                                        style="margin-right: 9px;">
                                    Hộp số</span>
                                <span class="info-tiep" style="margin-left: 18px;">
                                    <%# Eval("HopSo") %>
                                </span>
                            </li>

                        </div>
                        <div class="list-info-content">
                            <li>
                                <span class="info-title"><i class="fa-solid fa-car"></i>Kiểu dáng</span>
                                <span class="info-tiep"><%# Eval("KieuDang") %></span>
                            </li>
                            <li>
                                <span class="info-title"><i class="fa-solid fa-location-dot"></i>Tỉnh thành</span>
                                <span class="info-tiep">
                                    <%# Eval("TinhTP") %>
                                </span>
                            </li>
                            <li>
                                <span class="info-title"><i class="fa-solid fa-gas-pump"></i>Nhiên liệu</span>
                                <span class="info-tiep">
                                    <%# Eval("NhienLieu") %>
                                </span>
                            </li>
                        </div>
                        <div class="list-info-right">
                            <li>
                                <span class="info-title">
                                    <img src="../Acsset/image/icon/iconVolang.PNG" alt="">
                                    Tình
                                    trạng</span>
                                <span class="info-tiep">
                                    <%# Eval("TinhTrang") %>
                                </span>
                            </li>
                            <li>
                                <span class="info-title"><i class="fa-solid fa-map"></i>Quận huyện</span>
                                <span class="info-tiep" style="margin-left: -4px;">
                                    <%# Eval("DiaChi") %>
                                </span>
                            </li>

                        </div>

                    </ul>
                </div>
                <div style="font-weight: 700; padding: 12px 0; border-bottom: 3px solid #135EAC; width: 45px;">
                    Mô tả
                </div>
                <div style="border-bottom: 2px solid #999999; margin-top: 4px;"></div>
                <div class="info-mota">
                    <p>
                        <%# Eval("TenOto") %>:
                        <br>
                        + <%# Eval("MoTa") %>
                        <br>
                        <%# Eval("Hang") %> hỗ trợ giao nhận xe nhanh chóng, thủ tục gọn gàng:<br>
                        Ưu đãi ngập tràn - Rinh xe đón Tết.<br>
                        Quý khách làm việc trực tiếp với  <%# Eval("Hang") %>: 088.997.9399 sẽ được nhận
                        những đặc quyền sau:<br>
                        ✓ Giảm hơn 100 triệu.<br>
                        ✓ Ưu đãi lãi suất.<br>
                        ✓ Hỗ trợ đăng kí đăng kiểm, thủ tục nhanh chóng.<br>
                        ✓ Hỗ trợ trả góp từ 80 - 90% giá trị xe.<br>
                        ✓ Hỗ trợ chứng minh thu nhập, xử lí hồ sơ xấu nhanh gọn.<br>
                        ✓ Tư vấn tận tâm - chuyên nghiệp.<br>
                        ✓ Hỗ trợ giao xe tận nhà.<br>
                        ✓ Dịch vụ hậu mãi chu đáo.<br>
                        ✓ Khuyến mãi tốt nhất miền Nam.<br>
                        Liên hệ hotline kinh doanh tại  <%# Eval("Hang") %> - 088.997.9399 (Call/Zalo) để được
                        hỗ trợ thông tin sớm nhất, nhận xe giá tốt nhất miền Nam.<br>
                        <%# Eval("Hang") %> hân hạnh phục vụ quý khách hàng!<br>
                    </p>
                    <p>
                        <i>Để biết thêm giá xe các phiên bản khác của dòng xe  <%# Eval("Hang") %> cùng những đánh giá chi
                            tiết về ưu nhược điểm, vui lòng xem thêm tại <a href="#">Bảng giá xe  <%# Eval("Hang") %></a></i>
                    </p>

                </div>
                    </ItemTemplate>
                </asp:Repeater>

                <div style="display: flex; justify-content: space-evenly; margin: 40px 0; border-top: 1px solid #999999; padding-top: 30px">
                    <div style=" display: flex; justify-content: center; align-items: center">
                        <div>

                        <asp:TextBox ID="tbKhongduyet" CssClass="csstbkd" runat="server" placeholder="Nhập nội dung..."></asp:TextBox> <br />
                        <asp:Button ID="btnNo" runat="server" Text="Không duyệt" CssClass="btnduyet nomau" OnClick="btnNo_Click" />
                        </div>
                    </div>
                    <div style="background-color: #f5f3f3; border-left: 1px dashed #ccc; padding: 0 40px; display: flex; justify-content: center; align-items: center">

                        <div>
                            <h5 style="font-size: 16px; color: red; text-align: center; padding-top: 10px">Lựa chọn nơi đăng tin !</h5>
                            <asp:DropDownList ID="dropDuyet" runat="server" CssClass="dropluachon"></asp:DropDownList>
                            <br />
                            <asp:Button ID="btnDuyet" runat="server" Text="Duyệt tin" CssClass="btnduyet duyetmau" OnClick="btnDuyet_Click" />

                        </div>
                    </div>

                </div>

            </div>

        </div>

        <div>
        </div>
    </form>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 3,
            spaceBetween: 30,
            freeMode: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });
    </script>
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
<script src="../Acsset/js/js.js"></script>
</html>
