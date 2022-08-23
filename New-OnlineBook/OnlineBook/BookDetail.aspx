<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BookDetail.aspx.cs" Inherits="OnlineBook.BookDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"> 
    <div style="margin-left:200px; height: auto;">
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="286px" AutoGenerateRows="False">
<Fields>
    <asp:BoundField DataField="BookName" HeaderText="书名：" /> 
    <asp:ImageField DataImageUrlField="BookImage" HeaderText="图片："> </asp:ImageField>
    <asp:BoundField DataField="Author" HeaderText="作者：" />
    <asp:BoundField DataField="Publisher" HeaderText="出版社：" />
     <asp:BoundField DataField="ISBN" HeaderText="ISBN：" /> 
    <asp:BoundField DataField="PublishDate" HeaderText="出版日期" /> 
    <asp:BoundField DataField="SalePrice" HeaderText="售价" /> 
    <asp:BoundField DataField="Quantity" HeaderText="库存：" />
</Fields>
</asp:DetailsView>

<asp:Label ID="Label5" runat="server" Text="数量："></asp:Label> 
        <asp:TextBox ID="txtQuantity" runat="server" Width="100px" MaxLength="100" ></asp:TextBox>
         <asp:Button ID="btnShoppingCart" runat="server" Text="加入购物车" onclick="btnShoppingCart_Click" />
</div>

</asp:Content>