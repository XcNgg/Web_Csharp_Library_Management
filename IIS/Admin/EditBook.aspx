<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="OnlineBook.Admin.EditBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="register_page">
        <p style="text-align:center">编辑图书</p>
        <p>ISBN：<asp:TextBox ID="txtISBN" runat="server" Width="180px"></asp:TextBox>
        <asp:Button ID="btnQuery" runat="server" onclick="btnQuery_Click" Text="查询" Width="40px" /></p>
        <p>书名：<asp:Label ID="lblBookName" runat="server"></asp:Label> </p>
        <p>作者：<asp:Label ID="lblAuthor" runat="server"></asp:Label> </p>
        <p>出版社：<asp:Label ID="lblPublisher" runat="server"></asp:Label> </p>
        <p>售价：<asp:TextBox ID="txtSalePrice" runat="server" Width="180px"></asp:TextBox></p>
        <p>数量：<asp:TextBox ID="txtQuantity" runat="server" Width ="183px"></asp:TextBox></p>
        <p>类别：<asp:DropDownList ID="DropDownList1" runat="server"> </asp:DropDownList></p>
        <p>推荐： <asp:RadioButton ID="rdoYes" runat="server" GroupName="Recommend" Text="是" Checked="True" />
        <asp:RadioButton ID="rdoNo" runat="server" GroupName="Recommend" Text="否" /></p> 
        <asp:Button ID="btnUpdate" runat="server" Text="修改" onclick="btnUpdate_Click" 
            Height="35px" Width="152px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="init"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
