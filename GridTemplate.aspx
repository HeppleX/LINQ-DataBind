<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridTemplate.aspx.cs" Inherits="GridTemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="LinqDataSource1" PageSize="5">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ProductId" HeaderText="商品编号" ReadOnly="True" InsertVisible="False" />
                    <asp:TemplateField HeaderText="商品分类编号">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource2" DataTextField="Name" DataValueField="CategoryId" SelectedValue='<%# Bind("CategoryId") %>'>
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MyPetShopDataContext"  TableName="Category">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server"
                                Text='<%# Bind("CategoryId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ListPrice" HeaderText="商品单价"/>
                    <asp:BoundField DataField="Name" HeaderText="商品名称"/>
                    <asp:BoundField DataField="Qty" HeaderText="商品库存"/>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="MyPetShopDataContext"  TableName="Product" EnableUpdate="True">
            </asp:LinqDataSource>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
