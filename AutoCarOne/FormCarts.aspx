<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCarts.aspx.cs" Inherits="AutoCarOne.FormCarts"  EnableEventValidation="false" %>

<%@ Register Src="~/Control/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Control/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>




<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Giỏ hàng</title>
        <link href="Acsset/css/cart.css" rel="stylesheet" />
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet" />
        <!-- Google Fonts -->
        <link href="../Acsset/image/icon/icon_web4.png" rel="icon" />
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet" />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet" />
    </head>
    <body>
      <form id="form1" runat="server">

        <section class="h-100 h-custom" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card">
                            <div class="card-body p-4">
                                
                                <div class="row">

                                    <div class="col-lg-7">
                                        <h5 class="mb-3"><a href="TrangChu.aspx" class="text-body"><i
                                            class="fas fa-long-arrow-alt-left me-2"></i>Continue shopping</a></h5>
                                        <hr>

                                        <div class="d-flex justify-content-between align-items-center mb-4">
                                            <div>
                                                <p class="mb-1">Shopping cart</p>
                                                <p class="mb-0">You have 
                                                <asp:Label ID="lbDem" runat="server" ></asp:Label>
                                                    items in your cart</p>
                                            </div>
                                            <div>
                                                <p class="mb-0">
                                                    <span class="text-muted">Sort by:</span> <a href="#!"
                                                        class="text-body">price <i class="fas fa-angle-down mt-1"></i></a>
                                                </p>
                                            </div>
                                        </div>
                                        
                                            
                                           <asp:DataList runat="server" ID="Datalist" DataKeyField="IDCart" OnItemCommand="Datalist_ItemCommand">
                                        <%--<asp:DataList runat="server" ID="Datalist" DataKeyField="ID">--%>
                                                <ItemTemplate>
                                        <div class="card mb-3">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between">
                                                    <div class="d-flex flex-row align-items-center">
                                                        <div>
                                                            
                                                            <img
                                                                src='<%#Eval("img1") %>'
                                                                class="img-fluid rounded-3" alt="Shopping item" style="width: 65px;">
                                                        </div>
                                                        <div class="ms-3">
                                                            <h5><%# Eval("TenOto") %></h5>
                                                            <p class="small mb-0"><%# Eval("TinhTrang") %></p>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex flex-row align-items-center">
                                                        <div style="width: 50px;">
                                                            <h5 class=" mb-0">
                                                                <asp:TextBox CssClass="listbox" ID="tbSL" runat="server" Text='<%#Eval("SoLuong") %>'   type="number" Width="40px"></asp:TextBox>
                                                            </h5>
                                                        </div>
                                                        <div style="width: 80px;">
                                                            <asp:Label ID="lbGia" CssClass="mb-0" runat="server" Text='<%# Eval("Gia", "{0:N0}") %>'></asp:Label>
                                                            <%--<h5 class="mb-0"><%# Eval("Gia") %></h5>--%>
                                                        </div>
                                                        <asp:LinkButton ID="btnXoa" runat="server" style="color: #cecece;" CommandName="btnXoa" ><i class="fas fa-trash-alt"></i></asp:LinkButton>
                                                        <%--<a href="#!" style="color: #cecece;"><i class="fas fa-trash-alt"></i></a>--%>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                              

                                    </div>
                                    <div class="col-lg-5">

                                        <div class="card bg-primary text-white rounded-3">
                                            <div class="card-body">
                                                <div class="d-flex justify-content-between align-items-center mb-4">
                                                    <h5 class="mb-0">Card details</h5>
                                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-6.webp"
                                                        class="img-fluid rounded-3" style="width: 45px;" alt="Avatar">
                                                </div>

                                                <p class="small mb-2">Card type</p>
                                                <a href="#!" type="submit" class="text-white"><i
                                                    class="fab fa-cc-mastercard fa-2x me-2"></i></a>
                                                <a href="#!" type="submit" class="text-white"><i
                                                    class="fab fa-cc-visa fa-2x me-2"></i></a>
                                                <a href="#!" type="submit" class="text-white"><i
                                                    class="fab fa-cc-amex fa-2x me-2"></i></a>
                                                <a href="#!" type="submit" class="text-white"><i class="fab fa-cc-paypal fa-2x"></i></a>

                                                <form class="mt-4">
                                                    <div class="form-outline form-white mb-4">
                                                       <%-- <input type="text" id="typeName" class="form-control form-control-lg" siez="17"
                                                            placeholder="Cardholder's Name" />--%>
                                                        <asp:TextBox ID="tbName" runat="server" CssClass="form-control form-control-lg" siez="17"></asp:TextBox>
                                                        <%--<label class="form-label" for="typeName">Cardholder's Name</label>--%>
                                                    </div>

                                                    <div class="form-outline form-white mb-4">
                                                        <input type="text" id="typeText" class="form-control form-control-lg" siez="17"
                                                            placeholder="1234 5678 9012 3457" minlength="19" maxlength="19" />
                                                        <label class="form-label" for="typeText">Card Number</label>
                                                    </div>

                                                    <div class="row mb-4">
                                                        <div class="col-md-6">
                                                            <div class="form-outline form-white">
                                                                <input type="text" id="typeExp" class="form-control form-control-lg"
                                                                    placeholder="MM/YYYY" size="7" id="exp" minlength="7" maxlength="7" />
                                                                <label class="form-label" for="typeExp">Expiration</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-outline form-white">
                                                                <input type="password" id="typeText" class="form-control form-control-lg"
                                                                    placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3" maxlength="3" />
                                                                <label class="form-label" for="typeText">Cvv</label>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </form>

                                                <hr class="my-4">

                                                <div class="d-flex justify-content-between">
                                                    <p class="mb-2">Tổng tiền</p>
                                                    <p class="mb-2"> 
                                                        <asp:Label ID="lbThanhtien" runat="server" > </asp:Label> VNĐ
                                                    </p>
                                                </div>

                                                <div class="d-flex justify-content-between">
                                                    <p class="mb-2">Shipping</p>
                                                    <p class="mb-2">$20.00</p>
                                                </div>

                                                <div class="d-flex justify-content-between mb-4">
                                                    <p class="mb-2">Total(Incl. taxes)</p>
                                                    <p class="mb-2">$4818.00</p>
                                                </div>

                                                <%-- tạo nút thanh toán --%>
                                                <asp:LinkButton ID="btn_payy" class="btn btn-info btn-block btn-lg" runat="server" OnClick="btn_payy_Click">
                                                    <div class="d-flex justify-content-between">
                                                        <span>$4818.00</span>
                                                        <span>Checkout <i class="fas fa-long-arrow-alt-right ms-2"></i></span>
                                                    </div>
                                                </asp:LinkButton>
                                              
                                               
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>
                              
                        </div>
                            </div>
                    </div>
                </div>
            </div>
        </section>

          </form>


        <!-- MDB -->
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
    </body>
    </html>
