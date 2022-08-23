<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ManageOrder.aspx.cs" Inherits="OnlineBook.Admin.ManageOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Repeater ID="rptOrder" runat="server">
<ItemTemplate>
    <asp:CheckBox ID="chkSelect" runat="server" />
    订单号：<asp:Label ID="lblOrderId" runat="server" Text='<%#Eval("OrderId") %>'></asp:Label>&nbsp;&nbsp;
    日期：<asp:Label ID="lblOrderDate" runat="server" Text='<%#Eval("OrderDate") %>'></asp:Label>&nbsp;&nbsp;
    收货人：<asp:Label ID="lblRealName" runat="server" Text='<%#Eval("RealName") %>'></asp:Label>&nbsp;&nbsp;
    金额：<asp:Label ID="lblTotalPrice" runat="server" Text='<%#Eval("TotalPrice") %>'></asp:Label>&nbsp;&nbsp;
    订单状态：<asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>&nbsp;&nbsp; <hr />
    <asp:Repeater ID="rptOrderDetials" runat="server" DataSource='<%#Eval("OrderDetails") %>'>

<HeaderTemplate>
<asp:Label ID="lblBookName" runat="server" Text="书名" Width="200px"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="单价" Width="50px"></asp:Label> 
    <asp:Label ID="Label2" runat="server" Text="数量" Width="50px"></asp:Label> 
    <asp:Label ID="Label3" runat="server" Text="金额" Width="50px"></asp:Label>
</HeaderTemplate>
<ItemTemplate>
<p>
    <asp:Label ID="lblBookName" runat="server" Text='<%#Eval("BookName")%>' Width="200px"></asp:Label>
    <asp:Label ID="lblSalePrice" runat="server" Text='<%#Eval("SalePrice")%>' Width="50px"></asp:Label>
    <asp:Label ID="lblQuantity" runat="server" Text='<%#Eval("Quantity")%>' Width="50px"></asp:Label>
    <asp:Label ID="lblMoney" runat="server" Text='<%#Eval("SumOfMoney")%>' Width="50px"></asp:Label>

</p>
        </ItemTemplate>
        </asp:Repeater>
        </ItemTemplate>
        </asp:Repeater>
        <asp:Button ID="btnComplete" runat="server" Text="交易结束" onclick="btnComplete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
    ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
