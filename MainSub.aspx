<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainSub.aspx.cs" Inherits="MainSub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            主表<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="LinqDataSource1" PageSize="3">
                <Columns>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" InsertVisible="False" ReadOnly="True"/>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn"/>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            从表<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="LinqDataSource2">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True"/>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" />
                    <asp:BoundField DataField="ListPrice" HeaderText="ListPrice"/>
                    <asp:BoundField DataField="UnitCost" HeaderText="UnitCost"/>
                    <asp:BoundField DataField="SuppId" HeaderText="SuppId"/>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" />
                    <asp:BoundField DataField="Image" HeaderText="Image"/>
                    <asp:BoundField DataField="Qty" HeaderText="Qty"/>
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShopDataContext" TableName="Category">
            </asp:LinqDataSource>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShopDataContext"  TableName="Product" Where="CategoryId == @CategoryId">
                <WhereParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="CategoryId" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
