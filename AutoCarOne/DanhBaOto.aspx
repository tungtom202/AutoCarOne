<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhBaOto.aspx.cs" Inherits="AutoCarOne.DanhBaOto" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Acsset/css/DanhbaCar.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/9b4b833d9a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Đánh giá xe</title>
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header runat="server" ID="Header" />
    <div class="container d-flex d-inline">
            <div class="b-colum">
                <div class="box-filter-list box-filter-list-fix">
                    <h1 class="heading mb-15">DANH BẠ SHOWROOM Ô TÔ</h1>
                    <p class="num">
                        Có
                            <asp:Label  CssClass="num-sp" ID="lbTongND" runat="server" ></asp:Label>
                        salon
                    </p>
                </div>
                <div class="box-salon ">
                    <div class="list-salon">
                        <ul class="Evaluate">
                            <asp:Repeater ID ="RepeaterItem" runat="server">
                                <ItemTemplate>

                                
                            <li>
                                <div class="col-6">
                                    <div class="item">
                                        <div class="head">
                                            <div class="photo">
                                                <a href="#">
                                                    <asp:Image ID="Image1" class="photo" src='<%# Eval("img") %>' runat="server" />
                                                </a>
                                                <div class="photo-in">
                                                    <a href="#" class="auto">
                                                        <%# Eval("HoTen") %> 
                                                        <i class="fa-solid fa-circle-check"></i> 
                                                    </a>
                                                    <div class="star">
                                                        <div class="star-i">
                                                            <i class="fa-solid fa-star"></i>
                                                            <i class="fa-solid fa-star"></i>
                                                            <i class="fa-solid fa-star"></i>
                                                            <i class="fa-solid fa-star"></i>
                                                            <i class="fa-solid fa-star-sharp-half-stroke"></i>
                                                            <i class="fa-solid fa-star-half"></i>
                                                        </div>
                                                        <div class="star-Evaluate">
                                                            (1 đánh giá)
                                                        </div>
                                                    
                                                        
                                                    </div>
                                                    
                                                   
                                                
                                                </div>
                                            
                                            </div>
                                        </div>
                                        <div class="box-bottom">
                                            <p class="location">
                                                <i class="fa-solid fa-location-dot"></i>
                                                <%# Eval("QueQuan") %>
                                            </p>
                                            <div class="DT">
                                                <a href="#" class="SDT">
                                                    <i class="fa-solid fa-phone"></i>
                                                     <%# Eval("SDT") %>
                                                    </a>
                                                   
                                            </div>

                                        </div>
                                    </div>
                        
                                </div>
                            </li>
                         </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="c-colum ml-5 mt-5">
                <div class="side-list-salon">
                    <div class="side-list-h2">
                        <h2 class="side-h2"> Salon bán chạy nhất </h2>
                    </div>
                
                    <div class="box-conten-c">
                        <div class="item-a">
                            <div class="img-item">
                                <a href="#">   
                                    <img class="img-h1" src="\Acsset\image\video_img\salon1.jpg" alt="">
                                </a>
                            </div>
                            <div class="text-p">
                                <a href="#"><h4 class="text-h4"> Auto chốt</h4></a>
                                <p>Lô E số 2 Đường Hạ Yên Quyết (đối diện trường Mầm Non Yên Hoà), 
                                    Phường Yên Hoà, Q Cầu Giấy, Tp Hà Nội.
                                </p>
                            </div>
                        </div>
                        <div class="item-a">
                            <div class="img-item">
                                <a href="#">   
                                    <img class="img-h1" src="\Acsset\image\video_img\salon2.jpg" alt="">
                                </a>
                            </div>
                            <div class="text-p">
                                <a href="#"> <h4 class="text-h4"> Việt Hàn Used Car</h4></a>
                                <p>387 Quốc lộ 13, KP5, phường Hiệp Bình Phước, quận Thủ Đức, Tp. Hồ Chí Minh
                                </p>
                            </div>
                        </div>
                        <div class="item-a">
                            <div class="img-item">
                                <a href="#">   
                                    <img class="img-h1" src="\Acsset\image\video_img\salon3.jpg" alt="">
                                </a>
                            </div>
                            <div class="text-p">
                                <a href="#"><h4 class="text-h4"> Anycar Việt Nam</h4></a>
                                <p>Số 3-5 Nguyễn Văn Linh, Phường Gia Thuỵ, Quận Long Biên, Thành phố Hà Nội
                                </p>
                            </div>
                        </div>
                        <div class="item-a">
                            <div class="img-item">
                                <a href="#">   
                                    <img class="img-h1" src="\Acsset\image\video_img\salon4.jpg" alt="">
                                </a>
                            </div>
                            <div class="text-p">
                                <a href="#"><h4 class="text-h4"> Ô tô Đức Thiện</h4></a>
                                <p>Số 10 Đường Thành Thái, Cầu Giấy (cạnh cv cầu giấy), Hà Nội
                                </p>
                            </div>
                        </div>
                        <div class="item-b">
                            <div class="img-item">
                                <a href="#">   
                                    <img class="img-h1" src="\Acsset\image\video_img\salon4.jpg" alt="">
                                </a>
                            </div>
                            <div class="text-p">
                                <a href="#"><h4 class="text-h4"> Auto Phong Bổn</h4></a>
                                <p>14/1, Khu Phố Bình Hòa, P. Lái Thiêu, TX. Thuận An, Tỉnh Bình Dương
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="img-QC">
                    <div class="iteam-QC">
                        <img src="/Bài web bán ô tô/img/ảnh quảng cáo 2.png" alt="">
                    </div>
                </div>
                <div >
                    <div >
                        <img src="/Bài web bán ô tô/img/Hình quảng cáo.jpg" alt="">
                    </div>
                </div>

            </div>

    </div>
        </form>
</body>
</html>