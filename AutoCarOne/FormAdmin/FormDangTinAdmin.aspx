<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FormDangTinAdmin.aspx.cs" Inherits="AutoCarOne.FormAdmin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng tin Admin</title>
    <link href="../Acsset/css/dangtin.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>


<body>
    <style>
        .btndangtinngay{
            border: none;
            color:#fff;
            background-color:#4db848;
            font-size: 16px;
            width: 100%
        }
        .RequiValidate{
           font-size: 16px
        }
        .file-img{
            margin: 4px 0;
        }
                .thaotac {
    width: 110px;
    justify-content: center;
    position: relative;
}


.anhnhap {
    width: 100%;
    height: 100%;
}

.image {
    display: block;
    width: 100%;
    height: 100%;
    border-radius: 5%;
    border: 1px solid;
    position: relative;
}

.overlay {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    height: 100%;
    width: 100%;
    opacity: 0;
    transition: .5s ease;
    background-size: cover;
    background-color: aquamarine;
    border-radius: 10px;
}
.file-upload-input {
    position: absolute;
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    outline: none;
    opacity: 0;
    cursor: pointer;
}
.thaotac:hover .overlay {
    opacity: 0.7;
}

.text1 {
    color: white;
    font-size: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
}
    </style>
    <form id="form1" runat="server">
    <div class="wrap">
        <div class="new-from">
            <div class="title-form">
                <h2>HÌNH ẢNH</h2>
                <span>- Bạn có thể đăng tối đa 25 ảnh</span>
            </div>
            <div class="list-note">
                <p><i class="fa-solid fa-check"></i> Đăng ít nhất 03 hình để tin giao hiệu quả hơn</p>
                <p><i class="fa-solid fa-check"></i> Ảnh đầu tiên sẽ là ảnh đại diện cho tin của bạn, kéo thả để sắp xếp
                    vị trí ảnh.</p>
            </div>
            <div class="file-upload">
                <%--<asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-img" />
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="FileUpload1" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="file-img" />
                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="file-img"/>
                <asp:FileUpload ID="FileUpload4" runat="server" CssClass="file-img"/>
                <asp:FileUpload ID="FileUpload5" runat="server" CssClass="file-img"/>--%>

                <%-- file upload --%>
                     <%-- 1 --%>
                 <div class="thaotac">
                   <div class="anhnhap">
                    <asp:Image ID="Image1" runat="server" CssClass="image" ImageUrl="../Acsset/image/logocar/themanh2.jpg" />

                    <div class="overlay">
                        <h4 style="text-align: center; padding: 10px 0; font-size: 12px">Ảnh 1</h4>
                      <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-img file-upload-input text1" onchange="docURL(this);"/>
                    </div>
                  </div>
               </div>
                     
                  <%-- 2 --%>
                 <div class="thaotac">
                   <div class="anhnhap">
                    <asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl="../Acsset/image/logocar/themanh2.jpg" />

                    <div class="overlay">
                        <h4 style="text-align: center; padding: 10px 0; font-size: 12px">Ảnh 2</h4>
                      <asp:FileUpload ID="FileUpload2" runat="server" CssClass="file-img file-upload-input text1" onchange="docURL2(this);"/>
                     
                    </div>
                  </div>
               </div>
                  <%-- 3 --%>
                 <div class="thaotac">
                   <div class="anhnhap">
                    <asp:Image ID="Image3" runat="server" CssClass="image" ImageUrl="../Acsset/image/logocar/themanh2.jpg" />

                    <div class="overlay">
                        <h4 style="text-align: center; padding: 10px 0; font-size: 12px">Ảnh 3</h4>
                      <asp:FileUpload ID="FileUpload3" runat="server" CssClass="file-img file-upload-input text1" onchange="docURL3(this);"/>
                     
                    </div>
                  </div>
               </div>
                  <%-- 4 --%>
                 <div class="thaotac">
                   <div class="anhnhap">
                    <asp:Image ID="Image4" runat="server" CssClass="image" ImageUrl="../Acsset/image/logocar/themanh2.jpg" />

                    <div class="overlay">
                        <h4 style="text-align: center; padding: 10px 0; font-size: 12px">Ảnh 4</h4>
                      <asp:FileUpload ID="FileUpload4" runat="server" CssClass="file-img file-upload-input text1" onchange="docURL4(this);"/>
                     
                    </div>
                  </div>
               </div>
                  <%-- 5 --%>
                 <div class="thaotac">
                   <div class="anhnhap">
                    <asp:Image ID="Image5" runat="server" CssClass="image" ImageUrl="../Acsset/image/logocar/themanh2.jpg" />

                    <div class="overlay">
                        <h4 style="text-align: center; padding: 10px 0; font-size: 12px">Ảnh 5</h4>
                      <asp:FileUpload ID="FileUpload5" runat="server" CssClass="file-img file-upload-input text1" onchange="docURL5(this);"/>
                     
                    </div>
                  </div>
               </div>
                <%-- 6 --%>
                <div class="thaotac">
                   <div class="anhnhap">
                    <asp:Image ID="Image6" runat="server" CssClass="image" ImageUrl="../Acsset/image/logocar/themanh2.jpg" />

                    <div class="overlay">
                        <h4 style="text-align: center; padding: 10px 0; font-size: 12px">Ảnh 6</h4>
                      <asp:FileUpload ID="FileUpload6" runat="server" CssClass="file-img file-upload-input text1" onchange="docURL6(this);"/>
                     
                    </div>
                  </div>
               </div>
                <%-- *** --%>
                <asp:RequiredFieldValidator Font-Size="12px" ErrorMessage="Bạn chưa thêm ảnh" ControlToValidate="FileUpload1" runat="server" CssClass="RequiValidate" ForeColor="Red" />
            </div>
            <div class="title-form">
                <h2>Thông tin xe</h2>
            </div>
            <div class="postnew">
                 <div class="postnew-control">
                    <span>Tên xe</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbTenOto" runat="server" CssClass="RequiValidate" ForeColor="Red" />
                    <asp:TextBox type="text" ID="tbTenOto" runat="server" class="input-car"></asp:TextBox>
                </div>
                <div class="postnew-control">
                    <span>Hãng xe</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbHangXe" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                    <asp:TextBox type="text" ID="tbHangXe" runat="server" class="input-car"></asp:TextBox>
                </div>
                <div class="postnew-control">
                    <span>Năm sản xuất</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="TbNamsx" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                <asp:TextBox type="number" ID="TbNamsx" runat="server" class="input-car"></asp:TextBox>
                </div>
                <div class="postnew-control">
                    <span>Xuất xứ</span>
               <asp:DropDownList ID="dropXuatxu" runat="server" class="input-car"></asp:DropDownList>

                </div>
                <div class="postnew-control">
                    <span>Hộp số</span>
                    <asp:DropDownList ID="drophopso" runat="server" class="input-car"></asp:DropDownList>
                </div>
                <div class="postnew-control">
                    <span>Nhiên liệu</span>
                    <asp:DropDownList ID="dropNhienlieu" runat="server" class="input-car"></asp:DropDownList>

                </div>
                <div class="postnew-control">
                    <span>Kiểu dáng</span>
                    <asp:DropDownList ID="dropKieuDang" runat="server" class="input-car"></asp:DropDownList>

                </div>
                <div class="postnew-control">
                    <span>Tình trạng xe</span>
                    <asp:DropDownList ID="droptinhtrang" runat="server" class="input-car"></asp:DropDownList>

                </div>
                <div class="postnew-control">
                    <span>Số km chạy</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbSokm" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                <asp:TextBox type="number" ID="tbSokm" runat="server" class="input-car" Text="0"></asp:TextBox>

                </div>
                <div class="postnew-control">
                    <span>Địa chỉ</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbdiachi" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                <asp:TextBox type="text" ID="tbdiachi" runat="server" class="input-car"></asp:TextBox>

                </div>
                 <div class="postnew-control">
                    <span>Tỉnh thành phố</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbtinhtp" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                <asp:TextBox type="text" ID="tbtinhtp" runat="server" class="input-car"></asp:TextBox>

                </div>
                 <div class="postnew-control">
                    <span>Giá bán (triệu đồng)</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbGia" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                <asp:TextBox type="number" ID="tbGia" runat="server" class="input-car"></asp:TextBox>

                </div>
            </div>

            <div class="title-form">
                <h2>Tiêu đề - nội dung</h2>
            </div>
            <div class="postnew">
                <div class="postnew-control">
                    <span>Mô tả</span>
                    <asp:TextBox type="text" ID="tbMota" runat="server" class="input-car" placeholder="Nhập nội dung"></asp:TextBox>
                </div>
                <div class="postnew-control">
                    <span>Số lượng</span>
                    <asp:RequiredFieldValidator Font-Size="16px" ErrorMessage="*" ControlToValidate="tbSoluong" runat="server" CssClass="RequiValidate" ForeColor="Red" />

                    <asp:TextBox type="number" ID="tbSoluong" runat="server" class="input-car" ></asp:TextBox>
                </div>
               
                
            </div>
            <img src="../Acsset/image/Banner_home/banner2.jpeg" alt="" width="100%" style="margin: 20px 0px;">
            <div class="btn-dangtin" style="margin: 20px 0;">
                <a href="#" style="padding: 8px 0px">
                <asp:Button ID="btnDangNgay" runat="server" Text="Đăng ngay" CssClass="btndangtinngay "/>

                </a>
            </div>
        </div>
    </div>

        </form>
     <script>
        function docURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('.nhap1').hide();
                    $('#Image1').attr('src', e.target.result);

                    $('#Image1').show();

                };
                reader.readAsDataURL(input.files[0]);
            }
            else {
                removeUpload();
            }


        }
        //2
        function docURL2(input) {
            if (input.files && input.files[0]) {
                var reader2 = new FileReader();
                reader2.onload = function (e) {
                    $('.nhap1').hide();
                    $('#Image2').attr('src', e.target.result);

                    $('#Image2').show();

                };
                reader2.readAsDataURL(input.files[0]);
            }
            else {
                removeUpload();
            }


        }
        //3
        function docURL3(input) {
            if (input.files && input.files[0]) {
                var reader3 = new FileReader();
                reader3.onload = function (e) {
                    $('.nhap1').hide();
                    $('#Image3').attr('src', e.target.result);

                    $('#Image3').show();

                };
                reader3.readAsDataURL(input.files[0]);
            }
            else {
                removeUpload();
            }


        }
        //4
        function docURL4(input) {
            if (input.files && input.files[0]) {
                var reader4 = new FileReader();
                reader4.onload = function (e) {
                    $('#Image4').attr('src', e.target.result);

                    $('#Image4').show();

                };
                reader4.readAsDataURL(input.files[0]);
            }
            else {
                removeUpload();
            }


        }
        //5
        function docURL5(input) {
            if (input.files && input.files[0]) {
                var reader5 = new FileReader();
                reader5.onload = function (e) {
                    $('.nhap1').hide();
                    $('#Image5').attr('src', e.target.result);

                    $('#Image5').show();

                };
                reader5.readAsDataURL(input.files[0]);
            }
            else {
                removeUpload();
            }


        }
        //6
        function docURL6(input) {
            if (input.files && input.files[0]) {
                var reader6 = new FileReader();
                reader6.onload = function (e) {
                    $('.nhap1').hide();
                    $('#Image6').attr('src', e.target.result);

                    $('#Image6').show();

                };
                reader6.readAsDataURL(input.files[0]);
            }
            else {
                removeUpload();
            }


        }
     </script>



    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>

</html>
</asp:Content>
