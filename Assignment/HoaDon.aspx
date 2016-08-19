<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="Assignment.HoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False"  ShowFooter="True" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="402px" BorderColor="#339933" BorderStyle="Groove" CssClass="alignmiddle">
        <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
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
            <asp:TemplateField HeaderText="Mã Hóa Đơn">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MaHoaDon") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaHoaDon") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                         <asp:TextBox ID="textMaHD" Text = "Nhập..." onclick="this.value='' " runat="server" Width="90%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textMaHD" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textMaHD" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ngày Giao Dịch">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("NgayGiaoDich") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("NgayGiaoDich") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:TextBox ID="textNGD" Text = "Nhập..." onclick="this.value='' " runat="server" Width="90%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textNGD" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Giá">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DonGia") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("DonGia") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:TextBox ID="textDG" Text = "Nhập..." onclick="this.value='' " runat="server" Width="90%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="textDG" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textDG" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Khách Hàng">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("KhachHang_MaKhachHang") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("KhachHang_MaKhachHang") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                         <asp:DropDownList ID="textMKH" runat="server" DataSourceID="SqlDataSource1" DataTextField="MaKhachHang" DataValueField="MaKhachHang" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="98%">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [MaKhachHang] FROM [KhachHang]"></asp:SqlDataSource>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
</asp:Content>
