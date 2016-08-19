<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="Assignment.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4"  Width="100%" AutoGenerateColumns="False" ShowFooter="True" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="402px" BorderColor="#339933" BorderStyle="Groove" CssClass="alignmiddle" >
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Tùy Chỉnh" ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Update" Text="Cập nhật" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                       
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="btnthem" runat="server" Text="Thêm mới" OnClick="btnthem_Click" />
                    </FooterTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="130px" Wrap="False" />
                    
                </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Sản Phẩm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MaSanPham") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaSanPham") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                         <asp:TextBox ID="textMaSP" Text = "Nhập..." onclick="this.value='' " runat="server" Width="90%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textMaSP" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textMaSP" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên Sản Phẩm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TenSanPham") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenSanPham") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                         <asp:TextBox ID="texttenSP" Text = "Nhập..." onclick="this.value='' " runat="server" Width="90%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="texttenSP" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày Sản Xuất">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("NgaySanXuat") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("NgaySanXuat") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                         <asp:TextBox ID="textNSX" Text = "Nhập..." onclick="this.value='' " runat="server" Width="90%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textNSX" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Loại Sản Phẩm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LoaiSanPham_MaLoaiSanPham") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("LoaiSanPham_MaLoaiSanPham") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                         <asp:DropDownList ID="textMLSP1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MaLoaiSanPham" DataValueField="MaLoaiSanPham" Width="95%" >
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [MaLoaiSanPham] FROM [LoaiSanPham]"></asp:SqlDataSource>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
</asp:Content>
