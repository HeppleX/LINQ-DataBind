<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridSub.aspx.cs" Inherits="GridSub" %>

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
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" />
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" />
                    <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" />
                    <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" />
                    <asp:BoundField DataField="SuppId" HeaderText="SuppId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Height="25px" Width="35px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Qty" HeaderText="Qty" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
