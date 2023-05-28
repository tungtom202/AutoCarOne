<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Otocu.aspx.cs" Inherits="AutoCarOne.Otocu" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mua bán xe </title>
    <link href="Acsset/css/muabanxe.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
</head>

<body>
    <form id="form1" runat="server">
        <uc1:Header runat="server" ID="Header" />
        <div class="content" style="background-color:#fff !important; margin-top: 30px">
            <div class="container container-two">
                <div class="b-column">
                    <h1 class="title-buy">MUA BÁN Ô TÔ</h1>
                    <a class="buy-link" href="#">Ô tô > Mua ô tô</a>
                    <div class="box-filter">
                        <div class="item-filter">
                            <span>Hãng xe:</span>
                            <ul class="list-make">
                                <a class="list-make-box" href="#">Tất cả</a>
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnsearchName" runat="server" Text="Toyota" CssClass="searchName" OnClick="btnsearchName_Click"/>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnlexus" runat="server" Text="Lexus" CssClass="searchName" OnClick="btnlexus_Click"/>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnhonda" runat="server" Text="Honda" CssClass="searchName" OnClick="btnhonda_Click"/>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnkia" runat="server" Text="Kia" CssClass="searchName" OnClick="btnkia_Click"/>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnmazda" runat="server" Text="Mazda" CssClass="searchName" OnClick="btnmazda_Click"/>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnBmw" runat="server" Text="BMW" CssClass="searchName" OnClick="btnBmw_Click"/>

                                    </a>
                                </li>
                               
                                <li>
                                    <a href="#">
                                        <asp:Button ID="btnHyundai" runat="server" Text="HyunDai" CssClass="searchName" OnClick="btnHyundai_Click"/>

                                    </a>
                                </li>
                                <!-- <li>
                                <a href="#">Ford</a>
                            </li> -->

                            </ul>

                        </div>
                        <ul class="list-make list-make-row">
                            <li>
                                <a href="#">
                                 <asp:Button ID="btnMisu" runat="server" Text="Mitsubishi" CssClass="searchName" OnClick="btnMisu_Click"/>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                     <asp:Button ID="btnChevrolet" runat="server" Text="Chevrolet" CssClass="searchName"  OnClick="btnChevrolet_Click"/>
                                    </a>
                            </li>
                           
                            <li>
                                <a href="#">
                                     <asp:Button ID="btnVolvo" runat="server" Text="Volvo" CssClass="searchName" OnClick="btnVolvo_Click"/>
                                    </a>
                            </li>
                            <li>
                                <a href="#">
                                     <asp:Button ID="btnIsuzu" runat="server" Text="Isuzu" CssClass="searchName" OnClick="btnIsuzu_Click"/>
                                    </a>
                            </li>
                            
                            <li>
                                <a href="#">
                                     <asp:Button ID="btnVin" runat="server" Text="VinFast" CssClass="searchName" OnClick="btnVin_Click"/>
                                    </a>
                            </li>
                            <li>
                                <a href="#" style="font-weight: 700;">Hãng khác [+]</a>
                            </li>

                        </ul>
                        <div class="item-filter item-filter-kc">
                            <span>Năm SX:</span>
                            <ul class="list-make">
                                <a class="list-make-box" href="#">Tất cả</a>
                                <li>
                                    <asp:Button ID="btn2023" runat="server" Text="2023" CssClass="searchName" OnClick="btn2023_Click"/>
                                </li>
                                <li>
                                   <asp:Button ID="btn2022" runat="server" Text="2022" CssClass="searchName" OnClick="btn2022_Click"/>
                                </li>
                                <li>
                                    <asp:Button ID="btn2021" runat="server" Text="2021" CssClass="searchName" OnClick="btn2021_Click"/>
                                </li>
                                <li>
                                    <asp:Button ID="btn2020" runat="server" Text="2020" CssClass="searchName" OnClick="btn2020_Click"/>
                                </li>
                                <li>
                                    <asp:Button ID="btn2019" runat="server" Text="2019" CssClass="searchName" OnClick="btn2019_Click"/>
                                </li>
                                <li>
                                   <asp:Button ID="btn2018" runat="server" Text="2018" CssClass="searchName" OnClick="btn2018_Click"/>
                                </li>
                               
                                <li>
                                    <a href="#" style="font-weight: 700;">Hãng khác [+]</a>
                                </li>

                            </ul>

                        </div>
                        <div class="item-filter item-filter-kc">
                            <span style="margin-right: 22px;">Tình trạng:</span>
                            <ul class="list-make">
                                <a class="list-make-box" href="#">Tất cả</a>
                                <li>
                                <asp:Button ID="btnMoi" runat="server" Text="Mới" CssClass="searchName" OnClick="btnMoi_Click"/>
                                </li>
                                <li>
                                <asp:Button ID="btnCu" runat="server" Text="Cũ" CssClass="searchName" OnClick="btnCu_Click"/>
                                </li>


                            </ul>

                        </div>
                        <div class="item-filter item-filter-kc">
                            <span style="margin-right: 22px;">Khoảng giá</span>
                            <ul class="list-make">
                                <a class="list-make-box" href="#">Tất cả</a>
                                <li>
                                 <asp:Button ID="btn300" runat="server" Text="<300" CssClass="searchName" OnClick="btn300_Click"/>
                                </li>
                                <li>
                                <asp:Button ID="btn300_500" runat="server" Text="300 - 500tr" CssClass="searchName" OnClick="btn300_500_Click"/>

                                </li>
                                <li>
                                <asp:Button ID="btn500_700" runat="server" Text="500 - 700tr" CssClass="searchName" OnClick="btn500_700_Click"/>

                                </li>
                                <li>
                                <asp:Button ID="btn700_1ty" runat="server" Text="700tr - 1 tỷ" CssClass="searchName" OnClick="btn700_1ty_Click"/>
                                </li>
                                <li>
                                <asp:Button ID="btn1_2ty" runat="server" Text="1 - 2 tỷ" CssClass="searchName" OnClick="btn1_2ty_Click"/>
                                </li>
                                <li>
                                <asp:Button ID="btn2ty" runat="server" Text=">2 tỷ" CssClass="searchName" OnClick="btn2ty_Click"/>
                                </li>
                            </ul>

                        </div>
                    </div>
                    <div class="box-top">
                        <div class="location-select">
                            <i class="fa-solid fa-location-dot"></i> Toàn quốc <i class="fa-solid fa-caret-down"></i>
                        </div>
                        <span class="location-right">Sắp xếp tin giao <i class="fa-solid fa-caret-down"></i></span>
                    </div>
                    <div class="box-bottom">
                        <div class="btn-group">
                            <a href="#">Tất cả </a>
                            <a href="#">
                                Xe cũ </a>
                            <a href="#">
                                <asp:Button ID="Button1" runat="server" CssClass="btnxemoi" Text="Xe mới" OnClick="Button1_Click"/>
                                </a>
                        </div>
                       
                        <div class="txt-tin">
                            Có <b> 
                                <asp:Label ID="lbDemID" runat="server" ></asp:Label>
                               </b>  tin bán xe toàn quốc
                        </div>
                          
                    </div>
                    
                     <asp:Repeater ID="RepeaterSearchHeader" runat="server">
                                <ItemTemplate>

                            <div class="items-car">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                     <img src=" <%# Eval("img1") %>" alt="..." width="132px" height="99px">
                                    <%--<img src="../Acsset/image/Anhxe/anh5.jpg" alt="xpander" width="132px" height="99px">--%>
                                </a>
                                <div class="info-car">
                                    <div class="info-left">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <%# Eval("TenOto") %>- <span style="color: #888888;">[Giao ngay] Ưu đãi
                                    ngập tràn
                                    <br>
                                            - Quà tặng đặc biệt- Giá tốt nhất- Tặng thẻ bảo dưỡng... </span></a>
                                        <ul class="tag-ul">
                                            <li> <%# Eval("HopSo") %></li>
                                            <li> Xe <%# Eval("TinhTrang") %></li>
                                            <li> <%# Eval("NhienLieu") %></li>

                                        </ul>
                                    </div>
                                    <div class="info-right">
                                        <h5 class="info-right-title" style="margin-left:5px"> <%# Eval("Gia", "{0:N0}") %> vnđ</h5>
                                        <ul class="info-right-ul">
                                            <li><a href="#"><i class="fa-solid fa-user"></i> <%# Eval("HoTen") %> 
                                                <i
                                                class="checkblue fa-solid fa-check "></i></a></li>
                                            <li><a href="#"><i class="fa-solid fa-location-dot"></i> <%# Eval("TinhTP") %></a></li>
                                            <li><a href="#"><i class="fa-solid fa-phone"></i><%# Eval("SDT") %></a> <span
                                                class="btn-phone">Gọi ngay</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                     <asp:Repeater ID="RepeaterToyota" runat="server">
                                <ItemTemplate>

                            <div class="items-car">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                     <img src=" <%# Eval("img1") %>" alt="..." width="132px" height="99px">
                                    <%--<img src="../Acsset/image/Anhxe/anh5.jpg" alt="xpander" width="132px" height="99px">--%>
                                </a>
                                <div class="info-car">
                                    <div class="info-left">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <%# Eval("TenOto") %>- <span style="color: #888888;">[Giao ngay] Ưu đãi
                                    ngập tràn
                                    <br>
                                            - Quà tặng đặc biệt- Giá tốt nhất- Tặng thẻ bảo dưỡng... </span></a>
                                        <ul class="tag-ul">
                                            <li> <%# Eval("HopSo") %></li>
                                            <li> Xe <%# Eval("TinhTrang") %></li>
                                            <li> <%# Eval("NhienLieu") %></li>

                                        </ul>
                                    </div>
                                    <div class="info-right">
                                        <h5 class="info-right-title" style="margin-left:5px"> <%# Eval("Gia", "{0:N0}") %> vnđ</h5>
                                        <ul class="info-right-ul">
                                            <li><a href="#"><i class="fa-solid fa-user"></i> <%# Eval("HoTen") %> 
                                                <i
                                                class="checkblue fa-solid fa-check "></i></a></li>
                                            <li><a href="#"><i class="fa-solid fa-location-dot"></i> <%# Eval("TinhTP") %></a></li>
                                            <li><a href="#"><i class="fa-solid fa-phone"></i><%# Eval("SDT") %></a> <span
                                                class="btn-phone">Gọi ngay</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                                    <span style="margin-left: 5px;font-weight:600; font-size:14px">Các mẫu xe liên quan</span>
                    <asp:Repeater ID="Repeater" runat="server">
                                <ItemTemplate>

                            <div class="items-car">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                     <img src=" <%# Eval("img1") %>" alt="..." width="132px" height="99px">
                                    <%--<img src="../Acsset/image/Anhxe/anh5.jpg" alt="xpander" width="132px" height="99px">--%>
                                </a>
                                <div class="info-car">
                                    <div class="info-left">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <%# Eval("TenOto") %>- <span style="color: #888888;">[Giao ngay] Ưu đãi
                                    ngập tràn
                                    <br>
                                            - Quà tặng đặc biệt- Giá tốt nhất- Tặng thẻ bảo dưỡng... </span></a>
                                        <ul class="tag-ul" style="display: flex; ">
                                            <div>

                                            <li> <%# Eval("HopSo") %></li>
                                            <li> Xe <%# Eval("TinhTrang") %></li>
                                            <li> <%# Eval("NhienLieu") %></li>
                                            </div>
                                            <div>
                                            <li style="margin-left: 50px; ">  <%# Eval("Sokm", "{0:N0}") %> Km</li>

                                            </div>
                                        </ul>
                                    </div>
                                    <div class="info-right">
                                        <h5 class="info-right-title" style="margin-left:5px"> <%# Eval("Gia", "{0:N0}") %> vnđ</h5>
                                        <ul class="info-right-ul">
                                            <li><a href="#"><i class="fa-solid fa-user"></i> <%# Eval("HoTen") %> <i
                                                class="checkblue fa-solid fa-check "></i></a></li>
                                            <li><a href="#"><i class="fa-solid fa-location-dot"></i> <%# Eval("TinhTP") %></a></li>
                                            <li><a href="#"><i class="fa-solid fa-phone"></i><%# Eval("SDT") %></a> <span
                                                class="btn-phone">Gọi ngay</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                   <span style="margin-left: 5px;font-weight:600; font-size:14px; padding: 10px; margin-bottom: 12px"><i class="fa-solid fa-car-side" style="color:#135EAC"></i> Mua bán ô tô theo: </span>
                    <asp:Repeater ID="Repeaterall" runat="server">
                                <ItemTemplate>

                            <div class="items-car">
                                <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                     <img src=" <%# Eval("img1") %>" alt="..." width="132px" height="99px">
                                    <%--<img src="../Acsset/image/Anhxe/anh5.jpg" alt="xpander" width="132px" height="99px">--%>
                                </a>
                                <div class="info-car">
                                    <div class="info-left">
                                        <a href="ProductDetail.aspx?ViewProduct=<%# Eval("ID") %>&&KieuDangSS=<%#Eval("KieuDang") %>&&IDNDSS=<%#Eval("IDND") %>">
                                            <%# Eval("TenOto") %>- <span style="color: #888888;">[Giao ngay] Ưu đãi
                                    ngập tràn
                                    <br>
                                            - Quà tặng đặc biệt- Giá tốt nhất- Tặng thẻ bảo dưỡng... </span></a>
                                        <ul class="tag-ul">
                                            <li> <%# Eval("HopSo") %></li>
                                            <li> Xe <%# Eval("TinhTrang") %></li>
                                            <li> <%# Eval("NhienLieu") %></li>

                                        </ul>
                                    </div>
                                    <div class="info-right">
                                        <h5 class="info-right-title" style="margin-left:5px"> <%# Eval("Gia", "{0:N0}") %> vnđ</h5>
                                        <ul class="info-right-ul">
                                            <li><a href="#"><i class="fa-solid fa-user"></i> <%# Eval("HoTen") %> <i
                                                class="checkblue fa-solid fa-check "></i></a></li>
                                            <li><a href="#"><i class="fa-solid fa-location-dot"></i> <%# Eval("TinhTP") %></a></li>
                                            <li><a href="#"><i class="fa-solid fa-phone"></i><%# Eval("SDT") %></a> <span
                                                class="btn-phone">Gọi ngay</span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="box-bottom">
                        <div class="btn-group" style="display: inline-block; font-size: 14px; padding: 8px;">
                            <span style="color: #135EAC; font-weight: 700;">*Ghi chú:</span>
                            <p>
                                <b>“Đại lý chính hãng”</b> là danh hiệu dành cho tin rao được đăng bán bởi Salon chính hãng
                            hoặc Salon tư nhân nhập khẩu có ủy quyền, đã được xác thực bởi Oto.com.vn.
                            </p>
                            <p>
                                <b>“Salon bán chạy” </b>là danh hiệu dành cho tin rao được đăng bán bởi Salon xe cũ, được
                            Oto.com.vn đánh giá là hoạt động tích cực, dựa trên số lượng xe đang rao bán và xe đã giao
                            dịch thành công trong 2 tháng gần nhất.
                            </p>
                        </div>
                    </div>
                    <h2 class="hello-title">Chào mừng bạn đến với Oto.com.vn - Web mua bán ô tô trực tuyến uy tín nhất Việt Nam.
                    </h2>
                    <p style="font-size: 14px; color: #222222;">
                        Bạn muốn mua <b>ô tô cũ</b> hoặc xe hơi mới. Bạn cần tra cứu
                    đầy đủ và chi tiết nhất về chiếc xe mình yêu thích. Tuy nhiên, có quá nhiều thông tin khiến bạn
                    nhiễu loạn và ngay cả việc tìm đến điểm mua chất lượng cũng gặp phải khó khăn.
                    </p>
                    <div style="display: flex; justify-content: center;">
                        <img src="../Acsset/image/img_gioithieu.png" alt="Giới thiệu">
                    </div>
                    <em>Oto.com.vn - Web mua bán ô tô trực tuyến uy tín nhất Việt Nam</em>
                    <p style="font-size: 14px; color: #222222; margin-top: 4px;">
                        Quỹ thời gian vàng bạc của bạn đang dần bị
                    tiêu tốn mà không mang lại hiệu quả. Vì thế website Oto.com.vn ra đời chính là để mang đến giải pháp
                    tối ưu nhất cho công cuộc mua ô tô đầy gian nan của bạn được dễ dàng hơn bao giờ hết.
                    </p>
                    <h2 class="hello-title">Oto.com.vn - Web mua bán oto số 1 Việt Nam mang lại gì cho bạn?
                    </h2>
                    <ul style="font-size: 14px;">
                        <li>Cập nhật liên tục thông tin liên quan đến lĩnh vực ô tô ở cả thị trường trong và ngoài nước cho
                        bạn xem và tham khảo.</li>
                        <li>Chúng tôi là sàn mua bán ô tô sôi động nhất với hàng ngàn lựa chọn về sản phẩm cũ/ mới. Tại đây,
                        bạn không chỉ dễ dàng tìm kiếm mà còn am hiểu chiếc xế cưng của mình một cách toàn diện nhất từ
                        thiết kế, trang bị nội thất, tính năng tiện ích, công nghệ an toàn hay khối động cơ, khả năng
                        vận hành và mức tiêu thụ nhiên liệu. Hơn nữa, bạn có thể chỉ ngồi tại nhà mà vẫn nắm giá xe ô tô
                        đến từ hệ thống đại lý bán xe hơi trên toàn quốc.</li>
                    </ul>
                    <div style="display: flex; justify-content: center;">
                        <img src="../Acsset/image/img_gioithieu2.png" alt="Giới thiệu">
                    </div>
                    <em>Mua bán ô tô đơn giản, dễ dàng tại Oto.com.vn</em>
                    <ul style="font-size: 14px;">
                        <li>Chia sẻ các bài viết từ chuyên gia về so sánh xe, đánh giá xe, kinh nghiệm mua bán xe hơi
                        cũ/mới, kinh nghiệm chăm sóc và bảo dưỡng xe hơi, kinh nghiệm lái xe, phong thủy xe hơi; tư vấn
                        pháp luật xe, bảo hiểm mua bán ô tô hay tư vấn hỗ trợ vay mua xe trả góp… nhằm giúp bạn không
                        chỉ là người mua xe thông thái mà còn là người sử dụng xe thông minh.</li>
                        <li>Oto.com.vn đặt lên đầu sự trung thành và lợi ích của người dùng để trở thành người bạn đồng hành
                        đáng tin cậy nhất. Mỗi sản phẩm ô tô mới, oto đã qua sử dụng xuất hiện trên website đều phải
                        trải qua quy trình kiểm duyệt kỹ càng. Mỗi địa chỉ bán ô tô hiển thị đến người dùng đều được
                        chọn lọc khắt khe từ quan hệ đối tác với các đại lý, trung tâm phân phối chính hãng cùng nhiều
                        đại lý bán lẻ uy tín có mặt tại nước ta.</li>
                    </ul>
                    <h2 class="hello-title">Oto.com.vn - Đăng là bán, thấy là mua!
                    </h2>
                    <p style="font-size: 14px; color: #222222; margin-top: 4px;">
                        Bên cạnh việc đem đến giá trị cho người
                    mua ô tô, chúng tôi còn tự tin là kênh đăng tin rao bán ô tô hiệu quả nhất nhờ sở hữu lượng truy cập
                    khổng lồ lên đến 22 triệu lượt mỗi tháng. Các tính năng vượt trội có trên Oto.com.vn sẽ là “cây gậy
                    vàng” đắc lực mà khách hàng có nhu cầu bán xe không thể bỏ qua, nổi bật như:
                    </p>
                    <div style="display: flex; justify-content: center;">
                        <img src="../Acsset/image/img_gioithieu3.png" alt="Giới thiệu">
                    </div>
                    <em>Oto.com.vn - Nơi mua bán ô tô của hàng triệu người dùng cả nước</em>
                    <ul style="font-size: 14px;">
                        <li style="padding: 4px 8px;">Giao diện thân thiện, bộ lọc phân loại sản phẩm thông minh giúp người
                        mua có trải nghiệm tiện lợi.</li>
                        <li style="padding: 4px 8px;">Công cụ SEO hiện đại đẩy tin rao của khách hàng luôn hiện lên top đầu
                        trên các nền tảng tìm kiếm.</li>
                        <li style="padding: 4px 8px;">Ứng dụng 3D Scanning độc quyền mang đến những hình ảnh sản phẩm trực
                        quan và rõ ràng đến từng chi tiết... </li>
                        <li style="padding: 4px 8px;">Hàng nghìn tin rao mỗi ngày từ người bán ô tô trên toàn quốc sẽ giúp
                        bạn mua được 1 chiếc ô tô giá rẻ nhất.</li>
                    </ul>
                    <p style="font-size: 14px; color: #222222; margin-top: 4px;">
                        Từ đó, người mua hoàn toàn có thể rút gọn
                    các bước mua bán ô tô rườm rà vốn tồn tại trong cách thức truyền thống. Việc sắm một chiếc xe hơi
                    bỗng trở nên đơn giản hơn chỉ bằng 1 cú click thông qua kênh mua bán ô tô trực tuyến Oto.com.vn.
                    </p>
                    <p style="font-size: 14px; color: #222222; margin-top: 4px;">
                        Nếu có thắc mắc, quý khách hàng hãy chat
                    với chúng tôi ở box bên cạnh hoặc liên hệ trực tiếp đến hotline <b>19.001.009</b> để được hỗ trợ
                    nhanh nhất.
                    </p>

                </div>
                <div class="c-column">
                    <h2 class="heading-c">Các dòng xe nổi bật

                    </h2>
                    <div class="box-content-c">
                        <ul class="box-content-c-ul">
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat1" Text="Toyota Camry 2.5Q 2023" runat="server" OnClick="linkbtnnoibat1_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat2" Text="Mua xe Toyota Vios" runat="server" OnClick="linkbtnnoibat2_Click">
                            </asp:LinkButton>
                            </li>

                            <li>
                            <asp:LinkButton ID="linkbtnnoibat3" Text="Bán Ford Ranger" runat="server" OnClick="linkbtnnoibat3_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat4" Text="Bán xe VinFast LUX A2.0" runat="server" OnClick="linkbtnnoibat4_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat5" Text="Mua bán xe Hyundai Grand i10" runat="server" OnClick="linkbtnnoibat5_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat6" Text="Mua bán Kia Morning" runat="server" OnClick="linkbtnnoibat6_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat7" Text="Honda Civic 1.5 Turbo RS 2022" runat="server" OnClick="linkbtnnoibat7_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat8" Text="Kia Cerato cũ" runat="server" OnClick="linkbtnnoibat8_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat9" Text="Giá xe Mazda 3 cũ" runat="server" OnClick="linkbtnnoibat9_Click">
                            </asp:LinkButton>
                            </li>
                            <li>
                            <asp:LinkButton ID="linkbtnnoibat10" Text="Mua Toyota Innova cũ" runat="server" OnClick="linkbtnnoibat10_Click">
                            </asp:LinkButton>
                            </li>
                    
                        </ul>
                    </div>
                    <img src="../Acsset/image/lozi.jpg" alt="" width="100%" style="margin-top: 20px;">
                    <img src="../Acsset/image/lozi2.jpg" alt="" width="100%" style="margin-top: 20px;">

                    <h2 class="heading-c" style="margin-top: 20px;">Salon nổi bật
                    </h2>
                    <div class="box-content-c" style="padding: 10px 20px;">
                        <asp:Repeater ID="RepeaterSalon" runat="server">
                            <ItemTemplate>
                        <div class="box-content-c-item">
                            <asp:Image ID="Image1" class="photo" src='<%# Eval("img") %>' runat="server" width="115px" height="65px"/>
                            <div class="item-right">
                                <a href="#"><%# Eval("HoTen") %> </a>
                                <p>Các dòng xe ô tô cũ mới, uy tín tạo niềm tin</p>
                            </div>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- tin tức -->
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
        </div>
         <div id="backtop">
            <i class="fa-sharp fa-solid fa-chevron-up"></i>
        </div>
        <uc1:Footer runat="server" ID="Footer" />
    </form>
    <!-- link java-script -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
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
