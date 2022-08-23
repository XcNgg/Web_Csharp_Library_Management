<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="OnlineBook.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div id="register_page">
    <p style="text-align:center">图书类别添加</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="667px"> <Columns>
    <asp:BoundField DataField="CategoryId" HeaderText="类别编号" /> <asp:BoundField DataField="CategoryName" HeaderText="类别名称" /> <asp:BoundField DataField="Description" HeaderText="说明" />
    </Columns>
    </asp:GridView>
<br />
    <p>类别名称：<asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox></p>
         <p>类别描述：<asp:TextBox ID="txtDescription" runat="server"></asp:TextBox></p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" 
                Width="189px" Height="33px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p> 

</div>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
