<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropLINQ.aspx.cs" Inherits="DropLINQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataValueField="CategoryId">
                <asp:ListItem>-请选择-</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
