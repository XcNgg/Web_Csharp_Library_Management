<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="OnlineBook.Admin.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div id="register_page">
        <p style="text-align:center">图书类别修改</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="641px" 
               > 
     <Columns>
             <asp:BoundField DataField="CategoryId" HeaderText="类别编号" /> 
             <asp:BoundField DataField="CategoryName" HeaderText="类别名称" /> 
            <asp:BoundField DataField="Description" HeaderText="说明" />
      </Columns>
    </asp:GridView>
<br />
            <p>类别编号：<asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox></p>
            <p>类别名称：<asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox></p> 
            <p>类别描述：<asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></p> <asp:Button ID="btnUpdate" runat="server" Text="修改" onclick="btnUpdate_Click" Width="107px" /> 
            &nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="init"></asp:Label>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
