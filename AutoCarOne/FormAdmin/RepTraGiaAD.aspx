<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RepTraGiaAD.aspx.cs" Inherits="AutoCarOne.FormAdmin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../Acsset/css/Gridview.css" rel="stylesheet" />
    <form id="form1" runat="server">

        <h2 style="padding-left: 20px;">Quản lý trả giá</h2>
        
       

        <asp:GridView ID="gvTraGia" PageSize="5" AutoGenerateColumns="false" runat="server" Width="100%" CellPadding="4" OnPageIndexChanging="gvUser_PageIndexChanging"
            EnableViewState="false" DataKeyNames="IDTraGia" ForeColor="#333333" GridLines="Both" AllowPaging="true" OnRowEditing="gvTraGia_RowEditing" OnRowDeleting="gvTraGia_RowDeleting" >
            <Columns>
                <asp:TemplateField HeaderText="ID" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <%#Eval("IDTraGia") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID-SP" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <%#Eval("IDSP") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Họ tên" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <%#Eval("HoTen") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên ô tô" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemTemplate>
                        <asp:Label ID="lblUserName" runat="server" Text='<%#Eval("TenOto") %>' Visible="false"></asp:Label>
                        <asp:Label ID="lblUserId" runat="server" Text='<%#Eval("IDTraGia") %>' Visible="false"></asp:Label>
                        <a class="text_link" href="/edit?id_tragia=<%#Eval("IDTraGia") %>"><%#Eval("TenOto") %></a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("Gia")  %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá đề xuất" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("GiaDeXuat")  %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("Email")  %>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:TemplateField HeaderText="Ngày gửi" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="Center" Wrap="True" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemTemplate>
                        <%# Convert.ToDateTime(Eval("NgayGui")).ToShortDateString() %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Trả lời trả giá" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="bg-gray-600">
                    <ItemStyle HorizontalAlign="left" Wrap="True" />
                    <HeaderStyle HorizontalAlign="left" />
                    <ItemTemplate>
                        <%#Eval("TraLoi")  %>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="btnXemtin bg-primary"  ShowEditButton="true" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left" EditText="Xem "/>
                <asp:CommandField HeaderStyle-CssClass="bg-gray-600" ControlStyle-CssClass="input_delete bg-gradient-danger text-gray-200" ShowDeleteButton="True" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left" />

            </Columns>
            <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" />
            <PagerStyle CssClass="pagecss" />
        </asp:GridView>

        </form>

</asp:Content>
