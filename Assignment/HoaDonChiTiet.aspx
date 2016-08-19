<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="HoaDonChiTiet.aspx.cs" Inherits="Assignment.HoaDonChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False"  ShowFooter="True" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="402px" BorderColor="#339933" BorderStyle="Groove" CssClass="alignmiddle">
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
            <asp:TemplateField HeaderText="Mã CTHĐ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MaChiTietHoaDon") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaChiTietHoaDon") %>'></asp:Label>
                </ItemTemplate>
               <FooterTemplate>
                         <asp:TextBox ID="textMaCTHD" Text = "Nhập..." onclick="this.value='' " runat="server" Width="80%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textMaCTHD" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textMaCTHD" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên Hóa Đơn">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TenHoaDon") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenHoaDon") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:TextBox ID="texttenHD" Text = "Nhập..." onclick="this.value='' " runat="server" Width="80%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="texttenHD" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên Sản Phẩm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TenSanPham") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("TenSanPham") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:TextBox ID="textTSP" Text = "Nhập..." onclick="this.value='' " runat="server" Width="80%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textTSP" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số Lượng">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4"  runat="server" Text='<%# Bind("SoLuong") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("SoLuong") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:TextBox ID="textSL" Text = "Nhập..." onclick="this.value='' " runat="server" Width="80%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="textSL" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textSL" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Giá">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5"  runat="server" Text='<%# Bind("Gia") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gia") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:TextBox ID="textGia" Text = "Nhập..." onclick="this.value='' " runat="server" Width="80%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="textGia" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textGia" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Hóa Đơn" HeaderStyle-Width="15%">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6"  runat="server" Text='<%# Bind("HoaDon_MaHoaDon") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("HoaDon_MaHoaDon") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                         <asp:DropDownList ID="MHD" runat="server" DataSourceID="SqlDataSource1" DataTextField="MaHoaDon" DataValueField="MaHoaDon" Width="98%">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [MaHoaDon] FROM [HoaDon]"></asp:SqlDataSource>
                    </FooterTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mã Sản Phẩm" HeaderStyle-Width="15%">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("SanPham_MaSanPham") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="MSP" runat="server" DataSourceID="SqlDataSource2" DataTextField="MaSanPham" DataValueField="MaSanPham" Width="98%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [MaSanPham] FROM [SanPham]"></asp:SqlDataSource>
                </FooterTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("SanPham_MaSanPham") %>'></asp:Label>
                </ItemTemplate>
                 <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
</asp:Content>
