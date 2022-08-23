<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="OnlineBook.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookId" onrowdeleting="GridView1_RowDeleting">
<Columns>

<asp:TemplateField HeaderText="全选">

<HeaderTemplate>
<asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="True" oncheckedchanged="chkSelectAll_CheckedChanged" Text="全选" />
</HeaderTemplate>

<ItemTemplate>
<asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="True" oncheckedchanged="chkSelect_CheckedChanged" />
</ItemTemplate>

</asp:TemplateField>
<asp:ImageField DataImageUrlField="BookImage" DataImageUrlFormatString="{0}"> 
    <ControlStyle Height="50px" Width="72px" />
    </asp:ImageField>
    <asp:BoundField HeaderText="书名" DataField="BookName" /> 
    <asp:BoundField HeaderText="单价" DataField="SalePrice" /> 
    <asp:BoundField HeaderText="数量" DataField="Quantity" /> 
    <asp:BoundField DataField="Money" HeaderText="金额" /> 
    <asp:CommandField ShowDeleteButton="True" />



</Columns>

</asp:GridView>
    <br />
    <br />
&nbsp;
<asp:Label ID="Label5" runat="server" Text="总价格："></asp:Label> 
    &nbsp; 
    <asp:Label ID="lblMoney" runat="server" Text="0" ForeColor="Red"></asp:Label> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="btnContinue" runat="server" onclick="btnContinue_Click" Text="继续购物" Height="26px" Width="127px" />
&nbsp;&nbsp;
<asp:Button ID="btnTotal" runat="server" Text="结算" onclick="btnTotal_Click" Width="93px" />

</asp:Content>
