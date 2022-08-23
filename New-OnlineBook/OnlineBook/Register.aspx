<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineBook.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>会员注册平台</title>
</head>
<body>
    <form id="form1" runat="server">

    <div id="register_page">
    <p style="text-align:center">会员注册平台</p>
    <p>昵称： <asp:TextBox ID="txtUserName" runat="server" Width="250px"></asp:TextBox></p>
    <p>密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox></p>
    <p>性别：<asp:RadioButton ID="rdoMale" runat="server" Text="男" GroupName="Sex" Checked="True" /> <asp:RadioButton ID="rdoFemale" runat="server" Text="女" GroupName="Sex"/></p>
    <p>姓名：<asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox></p>
    <p>电话：<asp:TextBox ID="txtTelephone" runat="server" Width="250px"></asp:TextBox></p>
    <p>地址：<asp:TextBox ID="txtAddress" runat="server" Width="250px"></asp:TextBox></p>
     <p style="text-align:center">   <asp:Button ID="txtRegister" runat="server" Text="注册" onclick="txtRegister_Click" Height="38px" Width="122px" style="margin-right: 0px"  />&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="返回" Width="122px" />
        </p>
</div>

</form>

</body>
</html>


