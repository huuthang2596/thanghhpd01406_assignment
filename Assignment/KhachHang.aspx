<%@ Page Title="" Language="C#" MasterPageFile="~/pagemaster.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="Assignment.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>      
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ForeColor="#333333" GridLines="None" Height="402px" BorderColor="#339933" BorderStyle="Groove" CssClass="alignmiddle">
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

                <asp:TemplateField HeaderText="Mã Khách Hàng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MaKhachHang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MaKhachHang") %>' EnableTheming="True"></asp:Label>
                    </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="textMaKH" Text = "Nhập..." onclick="this.value='' " runat="server" Width="85%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textMaKH" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textMaKH" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"/>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Tên Khách Hàng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TenKhachHang") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenKhachHang") %>'></asp:Label>
                    </ItemTemplate>
                      <FooterTemplate>
                         <asp:TextBox ID="textTenKH" Text = "Nhập..." onclick="this.value='' " runat="server" Width="85%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textTenKH" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa Chỉ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DiaChi") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DiaChi") %>'></asp:Label>
                    </ItemTemplate>
                      <FooterTemplate>
                         <asp:TextBox ID="textDiaChi" Text = "Nhập..." onclick="this.value='' " runat="server" Width="85%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textDiaChi" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mail">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mail") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Mail") %>'></asp:Label>
                    </ItemTemplate>
                      <FooterTemplate>
                         <asp:TextBox ID="textMail" Text = "Nhập..." onclick="this.value='' " runat="server" Width="85%"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textMail" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số Điện Thoại">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("SoDienThoai") %>'></asp:Label>
                    </ItemTemplate>
                      <FooterTemplate>
                         <asp:TextBox ID="textSDT" Text = "Nhập..." onclick="this.value='' " runat="server" Width="85%"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="textSDT" Display="Dynamic" ErrorMessage="Bạn phải nhập số!" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="\d*"></asp:RegularExpressionValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="textSDT" Display="Dynamic" ErrorMessage="Không được để trống!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>


            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" BorderStyle="Groove" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" BorderStyle="Groove" />
            <SortedAscendingHeaderStyle BackColor="#246B61" BorderStyle="Groove" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" BorderStyle="Groove" />
            <SortedDescendingHeaderStyle BackColor="#15524A" HorizontalAlign="Center" VerticalAlign="Middle" />
          
        </asp:GridView>
</p>
</asp:Content>
