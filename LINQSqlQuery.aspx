<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LINQSqlQuery.aspx.cs" Inherits="LINQSqlQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="全部元素" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="属性投影" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="选择" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="排序" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="分组" />
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="聚合" />
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="引用连接" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="join连接" />
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="模糊查询" />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
