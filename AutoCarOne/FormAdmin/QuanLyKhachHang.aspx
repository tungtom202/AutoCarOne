<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="QuanLyKhachHang.aspx.cs" Inherits="AutoCarOne.FormAdmin.QuanLyKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Acsset/css/Gridview.css" rel="stylesheet" />
    <form id="form1" runat="server">

        <h2 style="padding-left: 20px;">Quản lý khách hàng</h2>
        
        <div class="wrap-btn-drop bg-gray-200" style=" margin-bottom:20px; padding: 20px 10px;">
         <div>
             show
        <asp:DropDownList ID="DropDownList" CssClass="dropdown-us border-bottom-warning" runat="server"  AutoPostBack="true" Width="40px" Height="25px" SelectMethod="listpage" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged"></asp:DropDownList>
         </div>   
            <div style="">
                <asp:TextBox ID="tbsearch" CssClass="tbsearch-us border-left-primary" runat="server" Width="250px" Height="35px" placeholder="search customer..." ></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="btnsearech-us" Text="Search" OnClick="btnSearch_Click" />

            </div>

        </div>

        <asp:GridView ID="gvUser" PageSize="5" AutoGenerateColumns="false" runat="server" Width="100%" CellPadding="4" OnPageIndexChanging="gvUser_PageIndexChanging"
            EnableViewState="false" DataKeyNames="IDND" ForeColor="#333333" GridLines="Both" AllowPaging="true" OnRowDeleting="gvUser_RowDeleting"  >
            <Columns>
                <asp:TemplateField HeaderText="ID" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <%#Eval("IDND") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Họ Tên" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <asp:Label ID="lblUserName" runat="server" Text='<%#Eval("HoTen") %>' Visible="false"></asp:Label>
                        <asp:Label ID="lblUserId" runat="server" Text='<%#Eval("IDND") %>' Visible="false"></asp:Label>
                        <a class="text_link" href="/edit?user_id=<%#Eval("IDND") %>"><%#Eval("HoTen") %></a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số điện thoại" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("SDT")  %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("Email")  %>
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:TemplateField HeaderText="Mật khẩu" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("MatKhau") %>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="Quê quán" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("QueQuan") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Chứng minh thư" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%#Eval("CMT") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="input_delete bg-gradient-danger text-gray-200" ShowDeleteButton="True" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left" />

            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" />
            <PagerStyle CssClass="pagecss" />
        </asp:GridView>
        </form>
</asp:Content>


