<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LINQXML.aspx.cs" Inherits="LINQXML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="创建" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="插入" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="修改" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="删除" />
        </div>
    </form>
</body>
</html>
