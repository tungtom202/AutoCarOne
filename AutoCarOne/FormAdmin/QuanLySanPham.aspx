﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="AutoCarOne.FormAdmin.QuanLySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link href="../Acsset/css/Gridview.css" rel="stylesheet" />
  

    <style>
        .trangthai{
            width: 180px !important
        }
        .btn{
            color: #fff
        }
        .btn:hover{
            color:#fff
        }
    </style>
    <form id="form1" runat="server">
                

                <!-- Begin Page Content -->
               
        <div>
        <h2 style="padding-left: 20px;">Quản lý sản phẩm</h2>
        
        <div class="wrap-btn-drop bg-gray-200" style=" margin-bottom:20px; padding: 20px 10px;">
         <div>
             show
        <asp:DropDownList ID="DropDownList" CssClass="dropdown-us border-bottom-warning" runat="server"  AutoPostBack="true" Width="60px" Height="25px" SelectMethod="droplist" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged"></asp:DropDownList>
         </div>  
            <div>
             Trạng thái tin
           <asp:DropDownList ID="DropDownSearch" CssClass="dropdown-us trangthai border-bottom-warning" runat="server"  AutoPostBack="true" Width="60px" Height="25px"  OnSelectedIndexChanged="DropDownSearch_SelectedIndexChanged"></asp:DropDownList>
         </div>  
            <div style="">
                <asp:TextBox ID="tbsearch" CssClass="tbsearch-us border-left-primary" runat="server" Width="250px" Height="35px" placeholder="search product..." ></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="btnsearech-us" Text="Search"  />

            </div>

        </div>
         <div class="container-fluid" style="padding: 0">
             <asp:Button ID="btnNewSP" runat="server" CssClass="btn bg-primary" Text="Thêm sản phẩm" OnClick="btnNewSP_Click"/>
        <asp:GridView ID="gvSanPham" PageSize="5" AutoGenerateColumns="false" runat="server" Width="100%" CellPadding="4" OnPageIndexChanging="gvSanPham_PageIndexChanging" OnRowDeleting="gvSanPham_RowDeleting"
            EnableViewState="false" DataKeyNames="ID" ForeColor="#333333" GridLines="Both" AllowPaging="true" OnRowEditing="gvSanPham_RowEditing"  >
            <Columns>
                <asp:TemplateField HeaderText="ID" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                      
                        <%#Eval("ID") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên ô tô" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600 hiten">
                    <ItemTemplate>
                        <a class="text_link" href="ChiTietDangTin.aspx?user_id=<%#Eval("ID") %>"><%#Eval("TenOto") %></a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ảnh" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <img style="cursor: pointer" src='<%# Eval("img1") %>' width="100px" height="80px"/> <%--<%# Convert.ToDateTime(Eval("UserDOB")).ToString("dd/MM/yyyy") %>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Năm SX" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                             <%#Eval("NamSx") %>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Tình Trạng" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <div style="background-color:#ff0000; color:#fff; border-radius: 3px;">
                             <%#Eval("TinhTrang") %>
                        </div>
                       
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hộp số" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("HopSo") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nhiên liệu" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("NhienLieu") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa chỉ" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                             <%#Eval("DiaChi") %>
                       
                    </ItemTemplate>
                </asp:TemplateField>
                 
               
                <asp:TemplateField HeaderText="Số lượng" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("SoLuong") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("Gia") %>
                    </ItemTemplate>
                </asp:TemplateField>
               
                  <asp:TemplateField HeaderText="Ngày đăng" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                         <%#Convert.ToDateTime(Eval("NgayDang")).ToShortDateString() %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Trạng thái tin" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <asp:CheckBox ID="CbDuyet" runat="server" Checked='<%# Eval("DuyetTin") %>'   CssClass="checked"/>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="btnXemtin " ControlStyle-BackColor="Orange" ShowEditButton="true"  HeaderText="Thao tác" ButtonType="Button"  HeaderStyle-HorizontalAlign="Left"/>
                <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="input_delete bg-gradient-danger text-gray-200" ShowDeleteButton="True" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left" />

            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" />
            <PagerStyle CssClass="pagecss" />
        </asp:GridView>
             </div>

          
        </div>
        </form>
</asp:Content>
