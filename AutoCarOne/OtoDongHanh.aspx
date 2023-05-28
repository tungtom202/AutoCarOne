<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtoDongHanh.aspx.cs" Inherits="AutoCarOne.OtoDongHanh" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Acsset/css/OtoDongHanh.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/9b4b833d9a.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
    <title>OTOCARE-Đặc quyền đồng hành chăm xe từ Oto.com.vn</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Header runat="server" ID="Header" />
   <div>
        <div class="box-otocare">
            <!-- banner -->
            <div class="banner">
                <img class="banner-img" src="Acsset/image/Banner_home/banner.jpg" alt="">
            </div>
            <!-- content -->
            <div class="content">
                <div class="box-info">
                    <div class="content text-center">
                        <h2 class="heading ">
                            Đặc quyền
                            <span>otocare</span>
                        </h2>
                        <div class="txt">
                            An tâm tận hưởng mỗi chuyến hành trình với đặc quyền
                            <span>OTOcare</span>
                            - Nhận ngay 
                            <span>Oto.com.vn.</span>
                            
                        </div>
                        <button class="btn btn-bg"> Đăng ký ngay</button>
                    </div>
                </div>
                <!-- Đặc quyền -->
                <div class="box-privileges" style="padding-bottom: 40px">
                    <div class="container">
                        <div class="box-privil-free">
                            <h2 class="heading text-center">Đặc Quyền Miễn Phí</h2>
                            <div class="slide-box">
                                <ul class="tabs-menu row">
                                    <li class="tab-item col active" data-id="ngoaithat">
                                        <a href="#" class="txt-a">
                                            <img src="Acsset/image/Banner_home/item1.jpg" alt="">
                                            <p class="txt">
                                                chăm sóc ngoại thất toàn diện
                                                <i class="icon-down-circle-1"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="tab-item col" data-id="noithat">
                                        <a href="#" class="txt-a">
                                            <img src="Acsset/image/Banner_home/item2.jpg" alt="">
                                            <p class="txt">
                                                chăm sóc nội thất toàn diện
                                                <i class="icon-down-circle-1"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="tab-item col" data-id="vesinh">
                                        <a href="#" class="txt-a">
                                            <img src="Acsset/image/Banner_home/item3.jpg" alt="">
                                            <p class="txt">
                                                vệ sinh và chăm sóc chi thiết
                                                <i class="icon-down-circle-1"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="tab-item col" data-id="tongquan">
                                        <a href="#" class="txt-a">
                                            <img src="Acsset/image/Banner_home/item4.jpg" alt="">
                                            <p class="txt">
                                                bảo dưỡng tổng quát
                                                <i class="icon-down-circle-1"></i>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="tab-item col" data-id="thaydau">
                                        <a href="#" class="txt-a">
                                            <img src="Acsset/image/Banner_home/item6.jpg" alt="">
                                            <p class="txt">
                                                thay dầu động cơ
                                                <i class="icon-down-circle-1"></i>
                                            </p>
                                        </a>
                                    </li>
                                </ul>
                            
                            </div>
                            
                          
                    </div>
                </div>
        </div>
        <div class="box-howto">
            <div class="container">
                <h2 class="headingg">ĐỂ NHẬN ĐẶC QUYỀN OTOCARE</h2>
                <div class="rows">
                    <div class="col-3">
                        <img class="photo" src="https://img1.oto.com.vn/Static/Images/otocare-v2/web/howto-1.svg" alt="">
                        <h3 class="title">Bước 1</h3>
                        <p class="txtx">Mua xe thành công qua
                            <span>Oto.com.vn</span>
                        </p>
                    </div>  
                    <div class="col-3">
                        <img class="photo" src="https://img1.oto.com.vn/Static/Images/otocare-v2/web/howto-2.svg" alt="">
                        <h3 class="title">Bước 2</h3>
                        <p class="txtx">Cung cấp thông tin bằng cách đăng ký tại website hoặc gọi hotline
                            <span>0904 573 739</span>
                        </p>
                    </div>  
                    <div class="col-3">
                        <img class="photo" src="https://img1.oto.com.vn/Static/Images/otocare-v2/web/howto-3.svg" alt="">
                        <h3 class="title">Bước 3</h3>
                        <p class="txtx">Chờ xác nhận thông tin và kích hoạt thẻ </p>
                    </div>  
                    <div class="col-3">
                        <img class="photo" src="https://img1.oto.com.vn/Static/Images/otocare-v2/web/howto-4.svg" alt="">
                        <h3 class="title">Bước 4</h3>
                        <p class="txtx">Nhận thẻ cứng và sử dụng bằng cách quét QR code </p>
                    </div>  
                </div>
            </div>
        </div>
        <!-- Ưu đãi nổi bật -->
        <div class="box-voucher">
            <div class="container">
                <h2 class="headingg">ƯU ĐÃI CỘNG THÊM</h2>
                <P class="txtx">Đặc quyền OTOcare dành tặng bạn hàng trăm ưu đãi từ Hệ thống Đối tác toàn quốc</P>
                <div class="slide-box">
                    <ul class="tabs-menu">
                        <li class="tab-item active">
                            <a href="#">Tài chính - Bảo hiểm(2)</a>
                        </li>
                    </ul>
                    <div class="tabs-content">
                        <div class="tabs-boders">
                           <div class="box-list" style="display: flex;">
                                <div class="tab-pane" style="margin-right: 30px;">
                                    <img class="inpho" src="Acsset/image/Banner_home/t1.jpg" alt="">
                                    <div class="tab-info">
                                        <a href="#" class="photo">
                                            MIC
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" viewBox="0 0 20 21" fill="none">
                                                <g clip-path="url(#clip0_1_154)">
                                                <path d="M14.6624 19.9642C17.2582 19.9642 19.3624 17.8152 19.3624 15.1642C19.3624 12.5132 17.2582 10.3642 14.6624 10.3642C12.0667 10.3642 9.9624 12.5132 9.9624 15.1642C9.9624 17.8152 12.0667 19.9642 14.6624 19.9642Z" fill="#56A1EE"/>
                                                <path d="M12.9626 14.5544C13.4044 14.5544 13.7626 14.1965 13.7626 13.755C13.7626 13.3135 13.4044 12.9555 12.9626 12.9555C12.5208 12.9555 12.1626 13.3135 12.1626 13.755C12.1626 14.1965 12.5208 14.5544 12.9626 14.5544Z" fill="#135EAC"/>
                                                <path d="M16.5624 16.553C16.5624 16.9945 16.2042 17.3524 15.7624 17.3524C15.3206 17.3524 14.9624 16.9945 14.9624 16.553C14.9624 16.1115 15.3206 15.7536 15.7624 15.7536C16.2042 15.7536 16.5624 16.1115 16.5624 16.553Z" fill="#135EAC"/>
                                                <path d="M15.2112 13.1755C15.5236 12.8633 16.0301 12.8633 16.3426 13.1755C16.655 13.4877 16.655 13.9939 16.3426 14.3061L13.5141 17.1325C13.2017 17.4447 12.6952 17.4447 12.3828 17.1325C12.0703 16.8203 12.0703 16.3141 12.3828 16.0019L15.2112 13.1755Z" fill="#135EAC"/>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M11.3169 2.18834C11.1794 2.01074 10.9789 1.88138 10.7383 1.83592L9.13416 1.53294C8.92912 1.4942 8.73382 1.62862 8.62148 1.80758C8.53092 1.95182 8.4088 2.08016 8.2577 2.18102C7.70532 2.54973 6.97483 2.41175 6.62609 1.87282C6.53657 1.73448 6.48091 1.58318 6.45697 1.42844C6.42305 1.20928 6.28971 0.995663 6.07449 0.955023L5.08073 0.767303C4.54209 0.665566 4.00677 1.02288 3.88505 1.5654L1.51706 12.1193L0.338362 13.3138C-0.056405 13.7138 -0.0634749 14.3465 0.322562 14.7269L1.92676 16.3077C2.0678 16.4467 2.29263 16.4489 2.47795 16.3625C3.01425 16.1128 3.65995 16.197 4.09253 16.6232C4.52511 17.0495 4.61839 17.6935 4.37599 18.2329C4.29221 18.4192 4.29753 18.6439 4.43857 18.7828L6.04275 20.3636C6.42879 20.744 7.06175 20.728 7.45651 20.328L9.6217 18.1339C10.6132 19.7058 12.3658 20.75 14.3626 20.75C17.4554 20.75 19.9626 18.2446 19.9626 15.154C19.9626 13.1306 18.888 11.358 17.278 10.3751L19.155 8.47292C19.5498 8.07288 19.5568 7.44019 19.1708 7.05979L17.3948 5.30967C17.348 5.26361 17.2706 5.26913 17.2228 5.31757C16.6486 5.89955 15.7277 5.92271 15.1661 5.36931C14.6045 4.81591 14.6148 3.89549 15.1891 3.31351C15.2369 3.26507 15.2413 3.18765 15.1946 3.14159L13.4507 1.42312C13.0646 1.04272 12.4316 1.05864 12.0369 1.4587L11.3169 2.18834ZM14.3626 9.55794C11.3545 9.55794 8.90038 11.928 8.76818 14.9013L4.81839 11.0092L12.7264 2.99535L13.2811 3.54191C12.972 4.58231 13.2173 5.73489 14.0225 6.52825C14.8276 7.32163 15.9843 7.55067 17.021 7.22725L17.6078 7.80548L15.7161 9.7225C15.2827 9.615 14.8293 9.55794 14.3626 9.55794V9.55794ZM3.55453 12.29L1.8856 13.9812L2.59203 14.6773C3.52923 14.5011 4.52061 14.7591 5.23617 15.4643C5.95175 16.1694 6.22381 17.1564 6.06059 18.0953L6.76699 18.7914L8.43592 17.1001L3.55453 12.29ZM3.62351 9.98468L9.67498 3.85221L9.79936 3.29783L9.4869 3.23881C9.3758 3.34215 9.25548 3.43755 9.12652 3.52363C7.88202 4.35431 6.15157 4.08367 5.29561 2.76091C5.28271 2.74099 5.27011 2.72095 5.25779 2.70079L3.62351 9.98468ZM14.3626 19.1512C16.5717 19.1512 18.3626 17.3616 18.3626 15.154C18.3626 12.9464 16.5717 11.1568 14.3626 11.1568C12.1534 11.1568 10.3626 12.9464 10.3626 15.154C10.3626 17.3616 12.1534 19.1512 14.3626 19.1512Z" fill="#135EAC"/>
                                                </g>
                                                <defs>
                                                <clipPath id="clip0_1_154">
                                                <rect width="20" height="20" fill="white" transform="translate(0 0.75)"/>
                                                </clipPath>
                                                </defs>
                                            </svg>
                                        </a>
                                        <p class="desc">Giảm giá lên đến 45% cho combo bảo hiểm trách nhiệm dân sự + vật chất xe</p>
                                        <div class="info-btm">
                                            <div class="time">
                                                <p class="txt">
                                                    Còn 103 ngày
                                                </p>
                                            </div>
                                            <button class="btn btn-bg">NHẬN NGAY</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane">
                                    <img class="inpho" src="Acsset/image/Banner_home/t1.jpg" alt="">
                                    <div class="tab-info">
                                        <a href="#" class="photo">
                                            MIC
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" viewBox="0 0 20 21" fill="none">
                                                <g clip-path="url(#clip0_1_154)">
                                                <path d="M14.6624 19.9642C17.2582 19.9642 19.3624 17.8152 19.3624 15.1642C19.3624 12.5132 17.2582 10.3642 14.6624 10.3642C12.0667 10.3642 9.9624 12.5132 9.9624 15.1642C9.9624 17.8152 12.0667 19.9642 14.6624 19.9642Z" fill="#56A1EE"/>
                                                <path d="M12.9626 14.5544C13.4044 14.5544 13.7626 14.1965 13.7626 13.755C13.7626 13.3135 13.4044 12.9555 12.9626 12.9555C12.5208 12.9555 12.1626 13.3135 12.1626 13.755C12.1626 14.1965 12.5208 14.5544 12.9626 14.5544Z" fill="#135EAC"/>
                                                <path d="M16.5624 16.553C16.5624 16.9945 16.2042 17.3524 15.7624 17.3524C15.3206 17.3524 14.9624 16.9945 14.9624 16.553C14.9624 16.1115 15.3206 15.7536 15.7624 15.7536C16.2042 15.7536 16.5624 16.1115 16.5624 16.553Z" fill="#135EAC"/>
                                                <path d="M15.2112 13.1755C15.5236 12.8633 16.0301 12.8633 16.3426 13.1755C16.655 13.4877 16.655 13.9939 16.3426 14.3061L13.5141 17.1325C13.2017 17.4447 12.6952 17.4447 12.3828 17.1325C12.0703 16.8203 12.0703 16.3141 12.3828 16.0019L15.2112 13.1755Z" fill="#135EAC"/>
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M11.3169 2.18834C11.1794 2.01074 10.9789 1.88138 10.7383 1.83592L9.13416 1.53294C8.92912 1.4942 8.73382 1.62862 8.62148 1.80758C8.53092 1.95182 8.4088 2.08016 8.2577 2.18102C7.70532 2.54973 6.97483 2.41175 6.62609 1.87282C6.53657 1.73448 6.48091 1.58318 6.45697 1.42844C6.42305 1.20928 6.28971 0.995663 6.07449 0.955023L5.08073 0.767303C4.54209 0.665566 4.00677 1.02288 3.88505 1.5654L1.51706 12.1193L0.338362 13.3138C-0.056405 13.7138 -0.0634749 14.3465 0.322562 14.7269L1.92676 16.3077C2.0678 16.4467 2.29263 16.4489 2.47795 16.3625C3.01425 16.1128 3.65995 16.197 4.09253 16.6232C4.52511 17.0495 4.61839 17.6935 4.37599 18.2329C4.29221 18.4192 4.29753 18.6439 4.43857 18.7828L6.04275 20.3636C6.42879 20.744 7.06175 20.728 7.45651 20.328L9.6217 18.1339C10.6132 19.7058 12.3658 20.75 14.3626 20.75C17.4554 20.75 19.9626 18.2446 19.9626 15.154C19.9626 13.1306 18.888 11.358 17.278 10.3751L19.155 8.47292C19.5498 8.07288 19.5568 7.44019 19.1708 7.05979L17.3948 5.30967C17.348 5.26361 17.2706 5.26913 17.2228 5.31757C16.6486 5.89955 15.7277 5.92271 15.1661 5.36931C14.6045 4.81591 14.6148 3.89549 15.1891 3.31351C15.2369 3.26507 15.2413 3.18765 15.1946 3.14159L13.4507 1.42312C13.0646 1.04272 12.4316 1.05864 12.0369 1.4587L11.3169 2.18834ZM14.3626 9.55794C11.3545 9.55794 8.90038 11.928 8.76818 14.9013L4.81839 11.0092L12.7264 2.99535L13.2811 3.54191C12.972 4.58231 13.2173 5.73489 14.0225 6.52825C14.8276 7.32163 15.9843 7.55067 17.021 7.22725L17.6078 7.80548L15.7161 9.7225C15.2827 9.615 14.8293 9.55794 14.3626 9.55794V9.55794ZM3.55453 12.29L1.8856 13.9812L2.59203 14.6773C3.52923 14.5011 4.52061 14.7591 5.23617 15.4643C5.95175 16.1694 6.22381 17.1564 6.06059 18.0953L6.76699 18.7914L8.43592 17.1001L3.55453 12.29ZM3.62351 9.98468L9.67498 3.85221L9.79936 3.29783L9.4869 3.23881C9.3758 3.34215 9.25548 3.43755 9.12652 3.52363C7.88202 4.35431 6.15157 4.08367 5.29561 2.76091C5.28271 2.74099 5.27011 2.72095 5.25779 2.70079L3.62351 9.98468ZM14.3626 19.1512C16.5717 19.1512 18.3626 17.3616 18.3626 15.154C18.3626 12.9464 16.5717 11.1568 14.3626 11.1568C12.1534 11.1568 10.3626 12.9464 10.3626 15.154C10.3626 17.3616 12.1534 19.1512 14.3626 19.1512Z" fill="#135EAC"/>
                                                </g>
                                                <defs>
                                                <clipPath id="clip0_1_154">
                                                <rect width="20" height="20" fill="white" transform="translate(0 0.75)"/>
                                                </clipPath>
                                                </defs>
                                            </svg>
                                        </a>
                                        <p class="desc">Giảm lên đến 40% bảo hiểm trách nhiệm dân sự</p>
                                        <div class="info-btm">
                                            <div class="time">
                                                <p class="txt">
                                                    Còn 103 ngày
                                                </p>
                                            </div>
                                            <button class="btn btn-bg">NHẬN NGAY</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- faq -->
        <div class="box-faq">
            <div class="container">
                <div rows>
                    <div class="col-6 box-left">
                        <h2 class="headingss text-center">Câu hỏi thường gặp</h2>
                        <div class="faq-box">
                            <div class="article open">
                                <h3 class="title">
                                    <span class="num">1</span>
                                    Điều kiện áp dụng
                                    <button style="margin-left: 237px;outline:none;border:none;background-color: #e7f2fd; " onclick="myFunction1()">
                                        <span style="color: #135eac; font-weight: bold; display: none;" class="icon-article-show1 fa-solid fa-plus"></span>
                                        <span style="color: #135eac; font-weight: bold; " class="icon-article-hiden1 fa-solid fa-minus"></span>
                                        
                                       
                                    </button>
                                </h3>
                                <p class="txt1">Áp dụng cho tất cả KH mua xe qua Oto.com.vn</p>
                            </div>
                            <div class="article open">
                                <h3 class="title">
                                    <span class="num">2</span>
                                    Cách thức nhận ưu đãi như thế nào?
                                    <button style="margin-left: 75px; outline:none;border: none;background-color: #e7f2fd; " onclick="myFunction2()">
                                        <span style="color: #135eac; font-weight: bold; display: none;" class="icon-article-show2 fa-solid fa-plus"></span>
                                        <span style="color: #135eac; font-weight: bold;" class="icon-article-hiden2 fa-solid fa-minus"></span>
                                    </button>
                                </h3>
                                <p class="txt2">
                                    <span>B1.</span>
                                    Cung cấp thông tin
                                    <br>
                                    <br>
                                    Cách 1. Liên hệ hotline CSKH 0904 573 739 hoặc gửi thông tin qua Zalo Official Account của Oto.com.vn
                                    <br>
                                    <br>
                                    Cách 2. Nhấn nút "Nhận ngay" tại voucher muốn nhận và điền đầy đủ SĐT tại pop up
                                    <br>
                                    <br>
                                    <span>B2.</span>
                                    Bộ phận CSKH sẽ liên hệ xác nhận thông tin và phản hồi cho anh/ chị trong vòng 2 giờ làm việc
                                    <br>
                                    <br>
                                    <span>B3.</span>
                                    Oto.com.vn sẽ kích hoạt và gửi thông tin để anh/ chị sử dụng ưu đãi
                                </p>
                            </div>
                            <div class="article open">
                                <h3 class="title">
                                    <span class="num">3</span>
                                    Làm sao để tôi có thể sử dụng ưu đãi?
                                    <button  style="margin-left: 60px; outline:none;border: none;background-color: #e7f2fd;" onclick="myFunction3()">
                                        <span  style="color: #135eac; font-weight: bold; display: none;" class="icon-article-show3 fa-solid fa-plus"></span>
                                        <span style="color: #135eac; font-weight: bold;" class="icon-article-hiden3 fa-solid fa-minus"></span>
                                    </button>
                                </h3>
                                <p class="txt3">Sau khi được xác nhận thông tin, anh/ chị
                                     chỉ cần mang e-voucher/ thẻ cứng/ tài khoản có thông
                                      tin ưu đãi đến hệ thống Đối tác để sử dụng.</p>
                            </div>
                            <div class="article">
                                <h3 class="title">
                                    <span class="num">4</span>
                                    Điều kiện và điều khoản OTOcare
                                    <button style="margin-left: 106px; outline:none;border: none;background-color: #e7f2fd;" onclick="myFunction4 ()">
                                        <span style="color: #135eac; font-weight: bold; display: none;" class="icon-article-show4 fa-solid fa-plus"></span>
                                        <span style="color: #135eac; font-weight: bold;" class="icon-article-hiden4 fa-solid fa-minus"></span>
                                    </button>
                                </h3>
                                <p class="txt4">
                                    <a href="https://file.oto.com.vn/documents/dieu-kien-dieu-khoan-otocare.pdf">Xem thông tin chi tiết</a>
                                </p>
                            </div>

                        </div>

                        <p class="note">
                            Mọi thông tin chi tiết vui lòng liên hệ hotline 
                            <a href="#">0904 573 739</a>
                            <br>
                            hoặc trò chuyện với chúng tôi qua Zalo
                        </p>

                    </div>
                    <div class="col-6 box-right text-center">
                        <p class="txt">
                            Đừng bỏ lỡ những ưu đãi mới nhất
                            <br>
                            từ
                            <a href="#">Oto.com.vn</a>
                            nhé
                        </p>
                        <div class="photo">
                            <img src="/AutoCar/img3/faq-img.png" alt="">
                        </div>
                        <a href="">
                            <span class="btn-zalo" style="text-decoration: none;">
                                Theo dõi Zalo OA của chúng tôi
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end content -->
   </div>
       </div>
        <uc1:Footer runat="server" ID="Footer" />
         </form>
 <!-- Swiper JS -->
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

 <!-- Initialize Swiper -->
 <script>
   var swiper = new Swiper(".tabs-list", {
    slidersPreView: 3,
    spaceBetween : 30,
    sliderGroup: 3,
    loop: true,
    loopFillGroupWidthBlank: true,
     pagination: {
       el: ".swiper-pagination",
       type: "fraction",
     },

     navigation: {
       nextEl: ".swiper-button-next",
       prevEl: ".swiper-button-prev",
     },
   });
   var swiper = new Swiper(".tabs-list", {
            slidesPerView: 3,
            spaceBetween: 30,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
 </script>
 <script>
    var swiper = new Swiper(".tabs-lists", {
     slidersPreView: 4,
     spaceBetween : 30,
     sliderGroup: 4,
     loop: true,
     loopFillGroupWidthBlank: true,
      pagination: {
        el: ".swiper-pagination",
        type: "fraction",
      },
 
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
    var swiper = new Swiper(".tabs-lists", {
             slidesPerView: 4,
             spaceBetween: 30,
             slidesPerGroup: 4,
             loop: true,
             loopFillGroupWithBlank: true,
             pagination: {
                 el: ".swiper-pagination",
                 clickable: true,
             },
             navigation: {
                 nextEl: ".swiper-button-next",
                 prevEl: ".swiper-button-prev",
             },
         });
 </script>

 <script>
        function myFunction1() {
          var x = document.querySelector(".txt1");
          var a = document.querySelector(".icon-article-show1");
          var b = document.querySelector(".icon-article-hiden1");
          if (x.style.display === "none") {
            x.style.display = "block";
            a.style.display = "none";
            b.style.display ="block";
          } else {
            x.style.display = "none";
            a.style.display = "block";
            b.style.display ="none";
          }
        }
        function myFunction2() {
          var x = document.querySelector(".txt2");
          var a = document.querySelector(".icon-article-show2");
          var b = document.querySelector(".icon-article-hiden2");
          if (x.style.display === "none") {
            x.style.display = "block";
            a.style.display = "none";
            b.style.display ="block";
          } else {
            x.style.display = "none";
            a.style.display = "block";
            b.style.display ="none";
          }
        }
        function myFunction3() {
          var x = document.querySelector(".txt3");
          var a = document.querySelector(".icon-article-show3");
          var b = document.querySelector(".icon-article-hiden3");
          if (x.style.display === "none") {
            x.style.display = "block";
            a.style.display = "none";
            b.style.display ="block";
          } else {
            x.style.display = "none";
            a.style.display = "block";
            b.style.display ="none";
          }
          
        }
        function myFunction4() {
          var x = document.querySelector(".txt4");
          var a = document.querySelector(".icon-article-show4");
          var b = document.querySelector(".icon-article-hiden4");
          if (x.style.display === "none") {
            x.style.display = "block";
            a.style.display = "none";
            b.style.display ="block";
          } else {
            x.style.display = "none";
            a.style.display = "block";
            b.style.display ="none";
          }
        }

 </script>
      
</body>
</html> 