<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DanhSach.aspx.cs" Inherits="DanhSach" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Ten" HeaderText="Họ Và Tên" SortExpression="Ten" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" 
                    SortExpression="GioiTinh" />
                <asp:TemplateField HeaderText="Hình Đại Diện">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="62px" ImageAlign="Middle" 
                            ImageUrl='<%# Eval("HinhAnh") %>' Width="57px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ThanhVien.mdb" 
            SelectCommand="SELECT [Ten], [GioiTinh], [ThuongTru], [HinhAnh] FROM [ThanhVien]">
        </asp:AccessDataSource>
    </p>
</asp:Content>

