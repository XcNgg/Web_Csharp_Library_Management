<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMyInFor.aspx.cs" Inherits="OnlineBook.EditMyInFor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>信息修改界面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        尊贵的会员 
        <asp:Label ID="UsernameLbl" runat="server" Text="*"></asp:Label>
&nbsp;以下是您的信息<br />
        <br />
        昵称&nbsp; <asp:TextBox ID="Usernametxt" runat="server"></asp:TextBox>
        
    </div>
        <p>
            密码&nbsp; 
            <asp:TextBox ID="Passwdtxt" runat="server" Visible="False"></asp:TextBox>
&nbsp;<asp:Button ID="ShowPasswd" runat="server" Height="28px" Text="显示密码" Width="89px" BorderStyle="None" OnClick="Button1_Click" />
        </p>
        <p>
            性别&nbsp; <asp:RadioButton ID="Man" runat="server" GroupName="sex" Text="男" Checked="True" />
            <asp:RadioButton ID="Woman" runat="server" GroupName="sex" Text="女" />
        </p>
        <p>
            姓名&nbsp; 
            <asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
        </p>
        <p>
            电话&nbsp; 
            <asp:TextBox ID="phonetxt" runat="server"></asp:TextBox>
        </p>
        <p>
            地址&nbsp; 
            <asp:TextBox ID="Addresstxt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="GoBtn" runat="server" BorderStyle="None" Height="35px" OnClick="Button1_Click1" Text="确认修改" Width="204px" />
        &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="35px" OnClick="Button1_Click2" Text="返回" Width="204px" />
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
