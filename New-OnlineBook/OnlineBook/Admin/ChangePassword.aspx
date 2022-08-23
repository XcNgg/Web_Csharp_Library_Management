<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="OnlineBook.Admin.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div id="register_page">
<p style="text-align:center">密码修改</p>
<p>用户名：<asp:TextBox ID="txtUserName" runat="server" Width="250px"></asp:TextBox></p>
<p>密&nbsp;码：<asp:TextBox ID="txtPassword" runat="server" Width="250px"></asp:TextBox></p>
<p style="text-align:center">
<asp:Button ID="btnUpdate" runat="server" Text="修改" onclick="btnUpdate_Click" 
        Width="148px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="init "></asp:Label>
    </p>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
