<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LINQSqlManagement.aspx.cs" Inherits="LINQSqlManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp; ID:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            描述：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="插入" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="删除" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="存储过程" />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
