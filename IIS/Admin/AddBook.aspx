<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="OnlineBook.Admin.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="register_page">
        <p style="text-align:center">添加图书</p>
        <p>书名：<asp:TextBox ID="txtBookName" runat="server" Width="184px"></asp:TextBox></p>
        <p>作者：<asp:TextBox ID="txtAuthor" runat="server" Width="181px"></asp:TextBox></p>
        <p>出版社：<asp:TextBox ID="txtPublisher" runat="server" Width="163px"></asp:TextBox></p>
        <p>出版日期：<asp:TextBox ID="txtPublishDate" runat="server"></asp:TextBox></p>
        <p>ISBN：<asp:TextBox ID="txtISBN" runat="server" Width="180px"></asp:TextBox></p>
        <p>售价：<asp:TextBox ID="txtSalePrice" runat="server" Width="180px"></asp:TextBox></p>
        <p>数量：<asp:TextBox ID="txtQuantity" runat="server" Width="183px"></asp:TextBox></p>
        <p>类别：<asp:DropDownList ID="DropDownList1" runat="server"> </asp:DropDownList></p>
        <p>推荐： <asp:RadioButton ID="rdoYes" runat="server" GroupName="Recommend" Text="是" Checked="True" />
        <asp:RadioButton ID="rdoNo" runat="server" GroupName="Recommend" Text="否" /></p> 
        <p>图片：<asp:FileUpload ID="FileUpload1" runat="server" />250*360px,jpg</p> 
        <p>描述：<asp:TextBox ID="txtDescription" runat="server" Height="40px" TextMode="MultiLine"></asp:TextBox></p>
    <asp:Button ID="btnAdd" runat="server" Text="添加" onclick="btnAdd_Click" 
            Height="34px" Width="138px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="init"></asp:Label>
        <br />
        <br />
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
