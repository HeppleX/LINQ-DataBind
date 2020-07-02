<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridDetails.aspx.cs" Inherits="GridDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 405px;
        }
        .auto-style2 {
            width: 73px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataKeyNames="ProductId" DataSourceID="LinqDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId"/>
                                <asp:BoundField DataField="Name" HeaderText="Name"/>
                                <asp:CommandField SelectText="详细资料" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style2">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="LinqDataSource2" DataKeyNames="ProductId" HeaderText="详细资料" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" Width="293px">
                            <Fields>
                                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" />
                                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId"/>
                                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice"/>
                                <asp:BoundField DataField="UnitCost" HeaderText="UnitCost"/>
                                <asp:BoundField DataField="SuppId" HeaderText="SuppId"/>
                                <asp:BoundField DataField="Name" HeaderText="Name"/>
                                <asp:BoundField DataField="Descn" HeaderText="Descn"/>
                                <asp:BoundField DataField="Image" HeaderText="Image"/>
                                <asp:BoundField DataField="Qty" HeaderText="Qty"/>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
        </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShopDataContext" TableName="Product">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShopDataContext" TableName="Product" Where="ProductId == @ProductId" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
            <WhereParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    </form>
</body>
</html>
