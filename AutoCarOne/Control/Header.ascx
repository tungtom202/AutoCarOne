<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="AutoCarOne.Control.Header" %>


<script src="https://kit.fontawesome.com/e30bada3ef.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../Acsset/css/main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link href="../Acsset/css/muabanxe.css" rel="stylesheet" />

<style>
    .form-control-input{
        color: #fff;
    }
    @keyframes heart-icon{
        from{
            transform: scale(1);
        }
        to{
            transform: scale(1.1);
        }
    }
    .icon_heart{
        animation: heart-icon 0.5s infinite linear;
    }
</style>
<div class="header-nav">
    <div class="header-top">
        <div class="container">
            <div class="left-head">
                Hotline: 0988.999.999
                        <a href="#" style="color: #fff; margin-left: 25px;">Báo giá </a>
            </div>
            <div class="head-right">
                <div class="input-search">
                   
                    <asp:TextBox ID="tbsearch" type="text" CssClass="form-control-input" placeholder="Tìm kiếm theo dòng xe, hãng xe" aria-label="Username" aria-describedby="addon-wrapping"  runat="server"></asp:TextBox>
                       <%-- *** --%>
                    <asp:LinkButton  CssClass="linkbutton" type="button" ID="LinkButton1"  runat="server" OnClick="LinkButton1_Click">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    </asp:LinkButton>
                </div>
                <i class="icon_heart fa-solid fa-heart" style="font-size: 24px;"></i>
                <div class="login-box">
                    <%  if(Session["username"] == null){  %>
                             
                             <a href="../FormFend/DangKy.aspx" style="color: #fff;">Đăng ký |</a>
                             <a href="../FormFend/DangNhap.aspx?ViewProduct=0" style="color: #fff;"> Đăng nhập</a>
                                 
                                    <% } else {%>                            
                                                 <asp:Label runat="server" ID="lbHello" CssClass="lbheader">

                         </asp:Label>      
  <%-- header-notify --%>
                    <div class="header_notify">
                     
                        <div class="header_notify-header">
                            <p>Your bag is empty</p>
                            <div class="list_notify-link">
                                <a href="../FormCarts.aspx" alt="">
                                    <i class=" bag fa-solid fa-suitcase"></i>
                                    Giỏ hàng</a>
                            </div>
                            <div class="list_notify-link">
                                <a href="../FormQuanlytincuaban.aspx?ViewProduct=0" alt="">
                                    <i class="fa-solid fa-clipboard-list"></i>
                                    Bài viết của bạn</a>
                            </div>
                            <div class="list_notify-link">
                                <a href="../FormQuanlytincuaban.aspx?ViewProduct=0" alt="">
                                    <i class="fa-solid fa-user"></i>
                                    Thông tin của bạn</a>
                            </div>
                            <div class="list_notify-link">
                                <div class="btn-link" onclick="myFunction()">
                                    <i class="fa-solid fa-bell"></i>
                                    Thông báo <sup class="sp-dem">
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                              </sup>
                                </div>
                            </div>
                        
                            <!-- cau tra loi -->
                            <div class="bell-wrap">
                                <asp:DataList ID="DataListTraGia" DataKeyField="IDTraGia" OnItemCommand="DataListTraGia_ItemCommand" runat="server">
                                    <ItemTemplate>

                                   
                                <div class="item-bell">
                                <%--<div class="div-delete"><i class="fa-solid fa-delete-left"></i></div>--%>
                                        <asp:LinkButton ID="LinkButton3" CssClass="div-delete" runat="server" CommandName="seen_delete"><i class="fa-solid fa-delete-left"></i></asp:LinkButton>
                                    <div class="item-bell-top">
                                        <img src='<%# Eval("img1") %>' alt="" width="60px">
                                        <span class="top-text"><%# Eval("TenOto") %> </span>
                                    </div>

                                    <div class="item-bell-bottom">
                                        <div style="display:flex; justify-content: space-evenly ">
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="bell-input price-input"  text='<%# Eval("Gia") %>'></asp:TextBox>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="bell-input price-input"  text='<%# Eval("GiaDeXuat") %>'></asp:TextBox>
                                        </div>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="bell-input"  text='<%# Eval("TraLoi") %>' placeholder="Bạn chờ câu trả lời"></asp:TextBox>
                                    </div>
                                </div>
                                     </ItemTemplate>
                                </asp:DataList>
                                <%-- 2 --%>
                               
                            </div>

                            <!-- /// -->
                            <div class="list_notify-link">
                               <%-- <a href="../FormFend/DangNhap.aspx" alt="">
                                   <i class="fa-solid fa-right-from-bracket"></i>
                                    Thoát</a>--%>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"> <i class="fa-solid fa-right-from-bracket"></i>
                                    Thoát</asp:LinkButton>
                            </div>



                        </div>
                    </div>
                                    <% } %>
                  
                   


                </div>
            </div>
        </div>
    </div>
    <div class="navi-menu">
    <div class="container">
        <div class="logo-oto">
            <a href="../TrangChu.aspx">
                <img src="../Acsset/image/logo-oto.PNG" />
            </a>
        </div>
        <ul class="menu-top">
            <li>
                <a href="../TrangChu.aspx">Mua bán ô tô
                </a>
            </li>
            <li>
                <a href="../Otocu.aspx">Ô tô cũ
                </a>
            </li>
            <li>
                <a href="../DanhBaOto.aspx">Danh bạ
                </a>
            </li>
            <li>
                <a href="../GiaXeOto.aspx">Giá xe ô tô
                </a>
            </li>
            <li>
                <a href="#">Đánh giá xe
                </a>
            </li>
            <li>
                <a href="../OtoDongHanh.aspx">Ô tô đồng hành
                </a>
            </li>
            <li>
                <a href="#">Tin tức
                </a>
            </li>
            <li>

                <button class="buton-up">
                    <a href="../FormDangTin.aspx" style="color: #fff">Đăng tin</a>
                </button>
            </li>

        </ul>
    </div>
</div>
    
    
    
</div>

<script>
     function myFunction(){

        var bell = document.querySelector('.bell-wrap');
        if(bell.style.display === "none"){
                bell.style.display = "block"
            
        }
        else{
            bell.style.display = "none"
        }
        
    }

</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>