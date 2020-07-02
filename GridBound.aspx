<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridBound.aspx.cs" Inherits="GridBound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="商品编号"/>
                    <asp:BoundField DataField="ListPrice" HeaderText="商品单价"/>
                    <asp:BoundField DataField="Name" HeaderText="商品名称"/>
                    <asp:ImageField DataImageUrlField="Image" HeaderText="商品图片">
                        <ControlStyle Height="25px" Width="35px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" TableName="Product" ContextTypeName="MyPetShopDataContext">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
