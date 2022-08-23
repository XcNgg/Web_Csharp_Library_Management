<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ShopAdminLogin.aspx.cs" Inherits="OnlineBook.Admin.ShopAdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="register_page">
<p style="text-align:center">管 理 员 登 录</p>
<p>管理员用户名：<asp:TextBox ID="txtUserName" runat="server" Width="250px"></asp:TextBox></p>
<p>管理员密码：<asp:TextBox ID="txtPassword" runat="server" Width="250px"></asp:TextBox></p>
<p style="text-align:center">
<asp:Button ID="btnUpdate" runat="server" Text="登陆" onclick="btnUpdate_Click" Width="82px"/></p>
        <p style="text-align:center">
            <asp:Label ID="Label4" runat="server" Text="*"></asp:Label>
        </p>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
