<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MyInfo.aspx.cs" Inherits="OnlineBook.MyInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="register_page">
    <p style="text-align:center">我的信息</p>
    <p>昵称：<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
        </p>
    <p>性别：<asp:RadioButton ID="rdoMale" runat="server" Text="男" GroupName="Sex" /> <asp:RadioButton ID="rdoFemale" runat="server" Text="女" GroupName="Sex"/></p>
    <p>姓名：<asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
        </p>
    <p>电话：<asp:Label ID="lblTelephone" runat="server" Text="Label"></asp:Label>
        </p>
    <p>地址：<asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label>
        </p>
    <p style="text-align:center">
&nbsp;
        <asp:Button ID="btnUpdate" runat="server" Text="修改信息" onclick="btnUpdate_Click" Height="30px" Width="142px" BorderStyle="None" /></p>
</div>
</asp:Content>
