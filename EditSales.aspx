<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Invno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Invno" HeaderText="Invno" InsertVisible="False" ReadOnly="True" SortExpression="Invno" />
                <asp:HyperLinkField DataNavigateUrlFields="prodid" DataNavigateUrlFormatString="productdetails.aspx?id={0}" DataTextField="prodid" HeaderText="Prod Id" />
                <asp:BoundField DataField="TransDate" HeaderText="TransDate" SortExpression="TransDate" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1"
                             OnClientClick="return confirm('Do you want to delete this sale information?')"
                             CommandName="delete" runat="server">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" DeleteCommand="DELETE FROM [Sales] WHERE [Invno] = @Invno" InsertCommand="INSERT INTO [Sales] ([ProdId], [TransDate], [Qty], [Amount]) VALUES (@ProdId, @TransDate, @Qty, @Amount)" SelectCommand="SELECT * FROM [Sales]" UpdateCommand="UPDATE [Sales] SET [ProdId] = @ProdId, [TransDate] = @TransDate, [Qty] = @Qty, [Amount] = @Amount WHERE [Invno] = @Invno">
            <DeleteParameters>
                <asp:Parameter Name="Invno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProdId" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="Amount" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdId" Type="Int32" />
                <asp:Parameter Name="TransDate" Type="DateTime" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="Amount" Type="Decimal" />
                <asp:Parameter Name="Invno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
