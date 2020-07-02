<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridMain.aspx.cs" Inherits="GridMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="CategoryId" DataNavigateUrlFormatString="~/GridSub.aspx?CategoryId={0}" DataTextField="Name" HeaderText="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
