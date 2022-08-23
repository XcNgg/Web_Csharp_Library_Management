<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShowBookByCategory.aspx.cs" Inherits="OnlineBook.ShowBookByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="138px" Height="125px" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate> 
    <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl='<%# Eval("BookImage") %>' NavigateUrl='<%#"~/BookDetail.aspx?BookId="+ Eval("BookId") %>'>HyperLink</asp:HyperLink>
    <br />
    <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookName") %>'></asp:Label> 
    <br />
    <asp:Label ID="Label6" runat="server" Text='<%# Eval("SalePrice") %>'></asp:Label> 
  </ItemTemplate> 
</asp:DataList>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
