<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="QuanLyBanner.aspx.cs" Inherits="AutoCarOne.FormAdmin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link href="../Acsset/css/Gridview.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
   
    <style>
        .bt1{
            color: #000;
        }
    </style>
    <form runat="server" id="formgrit">
        <h2 style="padding-left: 20px;">Quản trị viên</h2>
        
        <div class="wrap-btn-drop bg-gray-200" style=" margin-bottom:20px; padding: 20px 10px;">
         <div>
             show
        <asp:DropDownList ID="DropDownList" CssClass="dropdown-us border-bottom-warning" runat="server"  AutoPostBack="true" Width="40px" Height="25px" SelectMethod="listpage" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged"></asp:DropDownList>
         </div>   
            <div style="">
                <asp:TextBox ID="tbsearch" CssClass="tbsearch-us border-left-primary" runat="server" Width="250px" Height="35px" placeholder="search customer..." ></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" CssClass="btnsearech-us" Text="Search"/>

            </div>

        </div>
                 <asp:Button ID="btnCreate" runat="server" Text="New" CssClass="btn btn-success" OnClick="btnCreate_Click"/>
        <div style="max-width: 100%; overflow-x: auto; " class="thanhcuon">

        <asp:GridView ID="gvBanner" CssClass="gvBn" PageSize="5" AutoGenerateColumns="false" runat="server"  CellPadding="4" OnPageIndexChanging="gvBanner_PageIndexChanging" OnRowEditing="gvBanner_RowEditing"
            EnableViewState="false" DataKeyNames="ID" ForeColor="#333333" GridLines="Both" AllowPaging="true" OnRowDeleting="gvBanner_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="ID" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <%#Eval("id") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
               
                <asp:TemplateField HeaderText="Ảnh banner1" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <asp:Image ID="Image1" ImageUrl='<%# Eval("img1") %>' runat="server" Width="400px"/>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Ảnh banner2" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <asp:Image ID="Image1" ImageUrl='<%# Eval("img2") %>' runat="server" Width="400px"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ảnh banner3" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <asp:Image ID="Image2" ImageUrl='<%# Eval("img3") %>' runat="server" Width="400px"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tiêu đề" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("tieude")  %>
                    </ItemTemplate>
                </asp:TemplateField>

               
                <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="btn btn-warning " ShowEditButton="True" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left" />
                <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="input_delete bg-gradient-danger text-gray-200" ShowDeleteButton="True" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left" />

            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" />
            <PagerStyle CssClass="pagecss" />
        </asp:GridView>
                          
             </div>

    </form>
</asp:Content>
