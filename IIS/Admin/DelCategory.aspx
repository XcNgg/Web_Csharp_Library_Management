<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="DelCategory.aspx.cs" Inherits="OnlineBook.Admin.DelCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p style="text-align:center">图书类别删除</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="641px"> 
     <Columns>
             <asp:BoundField DataField="CategoryId" HeaderText="类别编号" /> 
             <asp:BoundField DataField="CategoryName" HeaderText="类别名称" /> 
            <asp:BoundField DataField="Description" HeaderText="说明" />
      </Columns>
    </asp:GridView>

    <br />
    类别编号&nbsp; 
    <asp:TextBox ID="txtCategoryId" runat="server" Height="22px" Width="156px"></asp:TextBox>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="DelBtn" runat="server" Text="删除类别" onclick="DelBtn_Click" 
        Height="42px" Width="153px" />
</asp:Content>
