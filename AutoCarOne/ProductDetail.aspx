<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="AutoCarOne.ProductDetail" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết ô tô</title>
    <link href="Acsset/css/chitietsp.css" rel="stylesheet" />
    <link href="Acsset/css/main.css" rel="stylesheet" />
    <link href="Acsset/css/muabanxe.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <style>
        .btnLuutin {
            border: none;
            background-color: #fff
        }
        .share-notify {
            width: 100px;
            height: 50px;
            display: none;
            position: absolute;
            z-index: 4;
            top: 23px;
            box-shadow: 0px 0px 3px 3px #b2b0b0;
            padding: 5px;
            background-color: #fff
        }
        .hove-share {
            position: relative;
        }
            .hove-share:hover .share-notify {
                display: block;
            }
        .heart-icon {
            color: #ddd;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .lbDemxe {
    color: #fff;
    background: #135EAC;
    padding: 3px 6px;
    font-size: 12px;
    border-radius: 11px;
}
    </style>


    <form id="form1" runat="server">
        <uc1:Header runat="server" ID="Header" />

        <div class="box-wrap">
            <div class="container">
                <div class="head-break">
                    <asp:Repeater ID="RepeaterID" runat="server">
                        <ItemTemplate>
                            <a href="#">Mua xe </a>>
                            <a href="#">Mua <%# Eval("Hang") %> </a>>
                            <a href="#">Mua <%# Eval("TenOto") %> </a>>
                            <a href="#">Mã tin: <%# Eval("ID") %></a>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="container container-two">
                <div class="b-column">

                    <div class="box-detail">
                        <asp:Repeater ID="RepeaterLanBanh" runat="server">
                            <ItemTemplate>


                                <h1 class="title-detail">
                                    <%# Eval("TenOto") %>
                                </h1>
                                <div class="box-price">
                                    <span class="not-rolled"><%# Eval("Gia", "{0:N0}") %> vnđ</span> <i style="font-size: 12px;"
                                        class="fa-solid fa-grip-lines-vertical"></i>
                                    <span class="rolling-rack">Giá dự kiến lăn bánh:  <%#Eval("LanBanh", "{0:N0}") %> VNĐ
                            
                            <i
                                style="background-color: #135EAC; font-size: 9px; color: #fff; border-radius: 50%; padding: 2px 4px;"
                                class="fa-solid fa-info"></i>
                                    </span>

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="Repeater" runat="server">
                            <ItemTemplate>
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
                                <span class="info-title">
                                    <i class="fa-solid fa-gauge-high"></i>
                                    Số Km</span>
                                <span class="info-tiep">
                                    <%# Eval("Sokm", "{0:N0}") %> Km
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
                               
                               <%-- <div style="font-weight: 700; padding: 12px 0; border-bottom: 3px solid #135EAC; width: 45px;">
                                    Mô tả
                                </div>--%>
                                <%--<div style="border-bottom: 2px solid #999999; margin-top: 4px;"></div>--%>
                                

                            <div class="tabs-to-dropdown">
        <div class="nav-wrapper d-flex align-items-center justify-content-between">
          <ul class="nav nav-pills d-none d-md-flex" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <a class="nav-link active" id="pills-company-tab" data-toggle="pill" href="#pills-company" role="tab" aria-controls="pills-company" aria-selected="true">Mô tả</a>
            </li>
              
            <li class="nav-item" role="presentation">
                <%--<asp:LinkButton CssClass="nav-link" ID="LinkButton1" runat="server" data-toggle="pill" href="#pills-product" role="tab" aria-controls="pills-product" aria-selected="false">Trả giá</asp:LinkButton>--%>
              <a class="nav-link" id="pills-product-tab" data-toggle="pill" href="#pills-product" role="tab" aria-controls="pills-product" aria-selected="false">Trả giá</a>
            </li>
           
          </ul>
      
        
        </div>
      
        <div class="tab-content" id="pills-tabContent">
          <div class="tab-pane fade show active" id="pills-company" role="tabpanel" aria-labelledby="pills-company-tab">
            <div class="container-fluid" id ="hi" style="background-color:#fff">
              <div class="info-mota">
                                    <p>
                                        <%# Eval("TenOto") %>:
                        <br />
                                        <%# Eval("MoTa") %>
                                        <br>
                                        - <%# Eval("TenOto") %> AT xăng thường.
                        <br>
                                        - <%# Eval("TenOto") %> AT xăng cao cấp.
                        <br>
                                        - <%# Eval("TenOto") %> AT dầu thường.
                        <br>
                                        - <%# Eval("TenOto") %> AT dầu cao cấp.
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
                                    <p>
                                        <i><b>* Lưu ý: </b>Mọi thông tin liên quan tới tin rao này là do người đăng tin đăng tải và
                            chịu trách nhiệm hoàn toàn. Nếu quý vị phát hiện có sai sót hay vấn đề gì xin hãy thông báo
                            cho Oto.com.vn.</i>
                                    </p>

                                    <div style="display: flex; justify-content: right">
                                        <div style="margin-right: 20px">
                                            <%# Convert.ToDateTime(Eval("NgayDang")).ToShortDateString() %>
                                        </div>
                                        <div class="share">
                                            <div class="hove-share">
                                                <i class="fa-solid fa-share-nodes"></i>Chia sẻ
                            <div class="share-notify">
                                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                                <a href="#"><i class="fa-solid fa-copy"></i></a>

                            </div>
                                            </div>
                                        </div>
                                        <div class="heart-icon" style="margin-left: 20px">
                                            <i class="heart-icon fa-solid fa-heart" ></i> 
                                            <asp:LinkButton ID="BtnSaveTin" CssClass="btnLuutin" runat="server">
                                                 Lưu tin
                                            </asp:LinkButton>
                                        </div>
                                        
                                    </div>
                                </div>

            </div>
               </ItemTemplate>
                        </asp:Repeater>
          </div>
                                                
                       
          <div class="tab-pane fade" id="pills-product" role="tabpanel" aria-labelledby="pills-product-tab">
                    <%  if(Session["username"] == null){  %>
              <div class="NoTraGia">

                     <h5 >Bạn cần đăng nhập để trả giá</h5>
                  <asp:Button CssClass="btn btn-primary" ID="btnTraGia" runat="server" Text="Đăng nhập" OnClick="btnTraGia_Click"/>
              </div>      
                                    <% } else {%>                            
            <div class="container-fluid" style="background-color:#fff">
                <h2 style="text-align: center; font-size: 14px;">Cảm ơn bạn đã theo dõi chúng tôi, hãy trả giá xe để mua được giá ưu đãi nhất</h2>
              <h2 class="mb-3 " style="text-align: center; font-size: 14px;">Trả giá xe 
                  <asp:Label ID="lbTenxehoi" runat="server" ></asp:Label></h2>
              <div>
                <div class="form-group">
                    <asp:TextBox ID="tbGia" CssClass="form-control tb1" Enabled="false" runat="server" placeholder="Giá xe"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="tbTragia" CssClass="form-control tb1" type="number" runat="server" placeholder="Giá đề xuất"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput" style="font-weight: 600">Email or số điện thoại của bạn: </label>
                    <asp:TextBox ID="tbEmail" CssClass="form-control tb1" runat="server" placeholder="Email or số điện thoại"></asp:TextBox>
                </div>
                
              </div>
              <div style="display: flex; justify-content: center;">
                  <asp:LinkButton ID="LinkButtonGui" CssClass="btn btn-success"  runat="server" Font-Size="14px" OnClick="LinkButtonGui_Click"><i class="fa-solid fa-paper-plane"></i> Gửi ngay</asp:LinkButton>
              </div>
            </div>
          <% } %>
          </div>
          
        </div>
      </div>

                        <div style="border-bottom: 2px dashed #E1E1E1;"></div>

                        <div class="heading-group">
                            <h2>CÁC MẪU XE CÙNG PHÂN KHÚC</h2>
                            <a href="#">Xem thêm >></a>
                        </div>
                        <div class="wrap-slide">
                            <!-- Swiper -->
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <asp:Repeater runat="server" ID="Repeater2">
                                        <ItemTemplate>


                                            <div class="swiper-slide list-slide" style="display: block">
                                                <div class="swiper-slide-info">
                                                    <asp:Image ID="Image7" runat="server" class="swiper-slide-img" ImageUrl='<%# Eval("img1") %>' Width="203px" Height="160px " />
                                                    <a class="info-name" href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                                        <i class="fa-solid fa-user"></i><%# Eval("HoTen") %>
                                                    </a>
                                                    <a href="#" class="info-phone">
                                                        <i class="fa-solid fa-phone"></i><%# Eval("SDT") %>
                                    
                                                    </a>
                                                </div>

                                                <div class="info">
                                                    <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                                        <%# Eval("TenOto") %></a>
                                                    <div class="box-info-name">

                                                        <ul class="info-list-car">
                                                            <li><%# Eval("TinhTrang") %> |</li>
                                                            <li><%# Eval("HopSo") %></li>
                                                        </ul>
                                                        <p style="font-size: 15px; color: #D0011B; text-align: left; font-weight: 600; margin: 0; font-size: 14px"><%# Eval("Gia", "{0:N0}") %> vnđ</p>
                                                        <p style="text-align: right; color: #888888; font-size: 13px; margin: 0; width: 100%; margin-left: 40px">
                                                            <br>
                                                            <i class="fa-solid fa-location-dot"></i><%# Eval("TinhTP") %>
                                                        </p>
                                                    </div>
                                                </div>

                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>

                        </div>
                        <%-- của người bán --%>
                        <div class="heading-group">
                            <h2>CÁC MẪU XE KHÁC CỦA NGƯỜI BÁN </h2>
                            <a href="#">Xem thêm >></a>
                        </div>
                        <asp:Label ID="LbIDND" runat="server" Text='<%#Eval("IDND") %>'></asp:Label>
                        <div class="wrap-slide">
                            <!-- Swiper -->
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <asp:Repeater runat="server" ID="Repeater3">
                                        <ItemTemplate>

                                            <div class="swiper-slide list-slide" style="display: block">
                                                <div class="swiper-slide-info">
                                                    <asp:Image ID="Image7" runat="server" class="swiper-slide-img" ImageUrl='<%# Eval("img1") %>' Width="203px" Height="160px " />
                                                    <a class="info-name" href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                                        <i class="fa-solid fa-user"></i><%# Eval("HoTen") %>
                                                    </a>
                                                    <a href="#" class="info-phone">
                                                        <i class="fa-solid fa-phone"></i><%# Eval("SDT") %>
                                    
                                                    </a>
                                                </div>

                                                <div class="info">
                                                    <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                                        <%# Eval("TenOto") %></a>
                                                    <div class="box-info-name">

                                                        <ul class="info-list-car">
                                                            <li><%# Eval("TinhTrang") %> |</li>
                                                            <li><%# Eval("HopSo") %></li>
                                                        </ul>
                                                        <p style="font-size: 15px; color: #D0011B; text-align: left; font-weight: 600; margin: 0; font-size: 14px"><%# Eval("Gia", "{0:N0}") %> vnđ</p>
                                                        <p style="text-align: right; color: #888888; font-size: 12px; margin: 0; width: 100%; margin-left: 20px">
                                                            <br>
                                                            <i class="fa-solid fa-location-dot"></i> <%# Eval("TinhTP") %>
                                                        </p>
                                                    </div>
                                                </div>

                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>

                        </div>
                    </div>


                    <div class="c-column">
                        <div class="box-info-salon">
                            <asp:Repeater runat="server" ID="Repeater1">
                                <ItemTemplate>

                                    <div class="box-info-salon-left">
                                        <img src="Acsset/Bootschap/img/undraw_profile_2.svg" alt="" width="52px" height="52px">
                                        <span style="margin-left: 10px; font-size: 14px; font-weight: 600;">
                                            <%# Eval("HoTen") %>  <i
                                                class="checkblue fa-solid fa-check "></i>
                                        </span>
                                    </div>

                                    <p style="font-size: 13px; color: #222222; text-align: center; padding: 5px 0; margin: 0;"><i class="fa-solid fa-location-dot"> </i><%# Eval("QueQuan") %></p>
                                    <p style="font-size: 13px; color: #696969; margin: 0; padding-left: 10px;">Xe đã bán: 0</p>
                                    

                                    <div class="box-contact">
                                        <span class="btn-car-phone"><i class="fa-solid fa-phone"> </i><%#Eval("SDT") %></span>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:Button ID="Button1" runat="server" Text="Đặt ngay" CssClass="btndatxe" OnClick="BtnBuy_Click" />
                        </div>
                        <div style="display: flex; align-items: center; margin: 20px 0; justify-content: space-evenly">
                        <p style="font-size: 13px; color: #000; margin: 0;">
                                         Xe trong kho: 
                                          <asp:Label ID="lbDemXeKho" CssClass="lbDemxe" runat="server"></asp:Label>
                                    </p>
                        <div style="font-size: 13px;">
                            Số xe bạn muốn mua:
                        <asp:TextBox ID="tbSoLuong" runat="server" Width="34px" Text="1" min="1" type="number"></asp:TextBox>
                        </div>
                        </div>
                    </div>
                    <img src="../Acsset/image/lozi.jpg" alt="" width="100%" style="margin: 20px 0;">
                    
                    <h2 class="heading-c" style="text-align: center">Tìm mua <asp:Label ID="lbHang" runat="server" ></asp:Label> theo năm
                    </h2>
                    <div class="box-info-salon box-info-salon-bottom ">
                        <ul class="box-info-left">
                            <li><a href="#">2010</a></li>
                            <li><a href="#">2011</a></li>
                            <li><a href="#">2012</a></li>
                            <li><a href="#">2013</a></li>
                            <li><a href="#">2014</a></li>
                            <li><a href="#">2015</a></li>
                            <li><a href="#">2016</a></li>
                        </ul>
                        <ul class="box-info-left">
                            <li><a href="#">2017</a></li>
                            <li><a href="#">2018</a></li>
                            <li><a href="#">2019</a></li>
                            <li><a href="#">2020</a></li>
                            <li><a href="#">2021</a></li>
                            <li><a href="#">2022</a></li>
                            <li><a href="#">2023</a></li>
                        </ul>
                    </div>
                    <img src="../Acsset/image/lozi2.jpg" alt="" width="100%" style="margin: 20px 0;">
                    <h2 class="heading-c" style="margin-top: 20px;">Có thể bạn quan tâm
                    </h2>
                    <div class="box-content-c" style="padding: 10px 20px;">
                        <div class="box-content-c-item item-thumb">
                            <img src="../Acsset/image/Tintuccar/thumb.jpg" alt="">

                            <p class="text-thumb">Gói bảo hiểm 2 năm của Mercedes-Benz khác với bảo hiểm ô tô thông thường ở điểm gì?</p>
                        </div>
                        <div class="box-content-c-item">
                            <img src="../Acsset/image/Tintuccar/tt1.jpg" alt="" width="115px" height="65px">
                            <div class="item-right">
                                <a class="item-right-link" href="#">Thủ tục hưởng bảo hiểm ô tô bị ngập nước do mưa lũ</a>
                            </div>
                        </div>
                        <div class="box-content-c-item">
                            <img src="../Acsset/image/Tintuccar/tt2.jpg" alt="" width="115px" height="65px">
                            <div class="item-right">
                                <a class="item-right-link" href="#">Ưu nhược điểm xe Toyota Vios 2021: Có gì hơn, thua City, Accent?</a>
                            </div>
                        </div>
                        <div class="box-content-c-item">
                            <img src="../Acsset/image/Tintuccar/tt3.jpg" alt="" width="115px" height="65px">
                            <div class="item-right">
                                <a class="item-right-link" href="#">Đánh giá xe Ford Ranger Wildtrak 2020: Nâng cấp nhẹ hiện đại hơn, giá bán không đổi</a>
                            </div>
                        </div>
                        <div class="box-content-c-item">
                            <img src="../Acsset/image/Tintuccar/tt4.jpg" alt="" width="115px" height="65px">
                            <div class="item-right">
                                <a class="item-right-link" href="#">Đánh giá xe Mazda CX-8 2019: Đủ 7 chỗ và đầy ắp công nghệ an toàn</a>
                            </div>
                        </div>
                    </div>
                    <img src="../Acsset/image/lozi3.jpg" alt="" width="100%" style="margin-top: 20px;">
                </div>
            </div>
            <div style="width: 100%; height: 100%;">
                <div style="width: 1140px; margin: 0 auto">


                    <h4 class="title-comment">Bạn đang băn khoăn cần tư vấn mẫu xe gì? Vui lòng bình luận, chúng tôi sẽ giải đáp cho bạn sớm nhất</h4>
                    <div class="detail-coment">
                        <div class="content-comment">
                            <div class="rc-editor">
                                <asp:TextBox ID="tbBinhLuan" runat="server" type="text" class="editor-input" placeholder="Nhập câu hỏi/ Bình luận/ Nhận xét tại đây..."></asp:TextBox>

                                <span style="color: #0071c4; font-size: 14px;"><i class="fa-solid fa-camera"></i>
                                    <asp:FileUpload ID="fileAnh" runat="server" /></span>
                            </div>
                            <div class="box-wrapbtn">
                                <asp:Button ID="btnDangBL" runat="server" Text="Gửi đánh giá" class="btn btn-primary" OnClick="Button1_Click" />
                            </div>
                        </div>
                        <div class="bl-text">
                            Bình luận
                        </div>
                        <div class="coment-askbox">
                            <asp:Repeater runat="server" ID="RepeaterBLKH">
                                <ItemTemplate>
                                    <div>
                                        <div class="coment-use">
                                            <img src="Acsset/Bootschap/img/undraw_profile_3.svg" alt="" width="30px" height="30px">
                                            <span><%# Eval("HoTen") %></span>

                                        </div>


                                        <div class="coment-usebody">

                                            <span style="padding-left: 22px"><%# Eval("Comment") %></span>
                                            <div style="margin-left: 40px">
                                                <asp:Image ID="ImageBLA" runat="server" ImageUrl='<%#Eval("image") %>' CssClass="img-BLA" Height="100px" />

                                            </div>
                                            <%-- sửa thông tin của bạn --%>
                                        </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <button type="button" class="btn " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" style="font-size: 13px; color: #135EAC; margin-left: 22px">Trả lời</button>
                            <asp:Button CssClass="nutxoadetail" ID="tbDelete" runat="server" Text="Xóa" />
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Trả lời bình luận</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div>
                                                <div class="form-group">
                                                    <label for="recipient-name" class="col-form-label">Bình luận</label>
                                                    <asp:TextBox ID="tbBinhLuanND" runat="server" type="text" class="form-control"></asp:TextBox>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <asp:Button ID="btnCapNhap" runat="server" Text="Đăng bình luận" CssClass="btn btn-primary" OnClick="btnCapNhap_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

                <asp:Repeater runat="server" ID="RepeaterRepCMT">
                    <ItemTemplate>
                        <div class="coment-rep">

                            <span style="color: #135EAC">
                                <img src="Acsset/Bootschap/img/undraw_profile_2.svg" alt="" width="30px" height="30px">
                                <%# Eval("HoTen") %></span>
                            <p style="margin-left: 35px"><%# Eval("RepCMT") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
        </div>
        <div id="backtop">
            <i class="fa-sharp fa-solid fa-chevron-up"></i>
        </div>

        <div style="width: 100%; height: 20px"></div>

        <uc1:Footer runat="server" ID="Footer" />
    </form>

    <script>
        const $tabsToDropdown = $(".tabs-to-dropdown");

        function generateDropdownMarkup(container) {
            const $navWrapper = container.find(".nav-wrapper");
            const $navPills = container.find(".nav-pills");
            const firstTextLink = $navPills.find("li:first-child a").text();
            const $items = $navPills.find("li");
            const markup = `
    <div class="dropdown d-md-none">
      <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        ${firstTextLink}
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton"> 
        ${generateDropdownLinksMarkup($items)}
      </div>
    </div>
  `;
            $navWrapper.prepend(markup);
        }

        function generateDropdownLinksMarkup(items) {
            let markup = "";
            items.each(function () {
                const textLink = $(this).find("a").text();
                markup += `<a class="dropdown-item" href="#">${textLink}</a>`;
            });

            return markup;
        }

        function showDropdownHandler(e) {
            // works also
            //const $this = $(this);
            const $this = $(e.target);
            const $dropdownToggle = $this.find(".dropdown-toggle");
            const dropdownToggleText = $dropdownToggle.text().trim();
            const $dropdownMenuLinks = $this.find(".dropdown-menu a");
            const dNoneClass = "d-none";
            $dropdownMenuLinks.each(function () {
                const $this = $(this);
                if ($this.text() == dropdownToggleText) {
                    $this.addClass(dNoneClass);
                } else {
                    $this.removeClass(dNoneClass);
                }
            });
        }

        function clickHandler(e) {
            e.preventDefault();
            const $this = $(this);
            const index = $this.index();
            const text = $this.text();
            $this.closest(".dropdown").find(".dropdown-toggle").text(`${text}`);
            $this
                .closest($tabsToDropdown)
                .find(`.nav-pills li:eq(${index}) a`)
                .tab("show");
        }

        function shownTabsHandler(e) {
            // works also
            //const $this = $(this);
            const $this = $(e.target);
            const index = $this.parent().index();
            const $parent = $this.closest($tabsToDropdown);
            const $targetDropdownLink = $parent.find(".dropdown-menu a").eq(index);
            const targetDropdownLinkText = $targetDropdownLink.text();
            $parent.find(".dropdown-toggle").text(targetDropdownLinkText);
        }

        $tabsToDropdown.each(function () {
            const $this = $(this);
            const $pills = $this.find('a[data-toggle="pill"]');

            generateDropdownMarkup($this);

            const $dropdown = $this.find(".dropdown");
            const $dropdownLinks = $this.find(".dropdown-menu a");

            $dropdown.on("show.bs.dropdown", showDropdownHandler);
            $dropdownLinks.on("click", clickHandler);
            $pills.on("shown.bs.tab", shownTabsHandler);
        });

    </script>
    <%-- Các javascript trái tim --%>

    <script>
        var iconheart = document.querySelector(".heart-icon")
        iconheart.onclick = function (e) {
            e.target.style.color = 'red'
        }
    </script>
    <script>  
        $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            modal.find('.modal-title').text('New message to ' + recipient)
            modal.find('.modal-body input').val(recipient)
        })
        //
        $('#exampleModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            var modal = $(this)
            modal.find('.modal-title').text('New message to ' + recipient)
            modal.find('.modal-body input').val(recipient)
        })
    </script>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
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
<script src="Acsset/js/js.js"></script>
</html>
