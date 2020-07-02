<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            分类ID：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            分类名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
&nbsp; 描述：<asp:TextBox ID="TextBox3" runat="server" Height="118px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
        </div>
    </form>
</body>
</html>
