#include "jsp.lib"
#include "jsp.libraries"
﻿#include "baohoan.lib"

<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" Title="Untitled Page" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 550px;
            height: 388px;
            text-align : left;
        }
        .style11
        {
            width: 163px;
            text-align : left;
        }
        .style14
        {
            height: 109px;
        text-align : left;
        }
        .style19
        {
            height: 40px;
            text-align : left;
        }
        .style20
        {
            width: 163px;
            height: 97px;
            text-align : left;
        }
        .style21
        {
            height: 97px;
text-align : left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7" border = "0" >
    <tr>
        <td colspan="2" class="dangky_head">
            ĐĂNG KÝ HỌC PHẦN</td>
    </tr>
    <tr>
        <td class="style19" colspan="2" 
            style="font-family: 'Times New Roman', Times, serif; font-style: oblique; color: #990000; text-decoration: underline" 
            valign="bottom">
            Thông Tin Tài Khoản: </td>
    </tr>
    <tr>
        <td class="style11">
            Mã Số Sinh Viên</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="215px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Chưa Nhập Mã Sinh Viên" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Mật Khẩu:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" 
                CausesValidation="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ControlToValidate="TextBox4" ErrorMessage="Chưa Nhập Mật Khẩu" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Không Được Nhỏ Hơn 7 kí Tự" 
                onservervalidate="test_digit" SetFocusOnError="True">*</asp:CustomValidator>
                                </td>
    </tr>
    <tr>
        <td class="style11">
            Môn Đăng Ký:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>LT Web 2</asp:ListItem>
                <asp:ListItem>LT Web 1</asp:ListItem>
                <asp:ListItem>LT Ứng Dụng</asp:ListItem>
                <asp:ListItem>LT Win</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Địa Chỉ Email: </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="207px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Địa Chỉ Email Chưa Nhập">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Nhập Sai Định Dạng Emai@Email.com" 
                SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style20">
            </td>
        <td class="style21">
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="89px" />
            </td>
    </tr>
    <tr>
        <td class="style14" colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
    </tr>
</table>
</asp:Content>

