<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioLINQ.aspx.cs" Inherits="RadioLINQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="CategoryId" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
            <asp:ListBox ID="ListBox1" runat="server" DataTextField="Name" DataValueField="ProductId"></asp:ListBox>
        </div>
    </form>
</body>
</html>
