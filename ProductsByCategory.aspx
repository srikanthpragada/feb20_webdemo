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
     Select Category : <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CatDesc" DataValueField="CatCode" AutoPostBack="True"></asp:DropDownList>
        <p></p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProdId" DataSourceID="sdsProducts">
            <Columns>
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" InsertVisible="False" ReadOnly="True" SortExpression="ProdId" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Qoh" HeaderText="Qoh" SortExpression="Qoh" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                <asp:BoundField DataField="CatCode" HeaderText="CatCode" SortExpression="CatCode" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsProducts" runat="server"
             ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>"
             SelectCommand="SELECT * FROM [Products] WHERE ([CatCode] = @CatCode)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" 
                    Name="CatCode" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
