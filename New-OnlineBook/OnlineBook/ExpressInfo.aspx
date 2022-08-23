<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"

CodeBehind="ExpressInfo.aspx.cs" Inherits="OnlineBook.ExpressInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div id="register_page">
    <p style="text-align:center">快递信息</p>
    <p>姓名：<asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox></p>
    <p>电话：<asp:TextBox ID="txtTelphone" runat="server" Width="250px"></asp:TextBox></p>
    <p>地址：<asp:TextBox ID="txtAddress" runat="server" Width="250px"></asp:TextBox></p>
    <p style="text-align:center">
    <asp:Button ID="btnCheckOut" runat="server" onclick="btnCheckOut_Click" Text="订单生成" />
    </p>
</div>

</asp:Content>
