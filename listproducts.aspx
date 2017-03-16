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
       <h1>List Of Products</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProdId" 
            DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PageSize="5" Width="100%">
            <Columns>
                <asp:BoundField DataField="ProdId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="ProdId" />
                <asp:BoundField DataField="ProdName" HeaderText="Name" SortExpression="ProdName" />
                <asp:BoundField DataField="Price" DataFormatString="{0:##,##,###}" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Qoh" HeaderText="Quantity" SortExpression="Qoh" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                <asp:BoundField DataField="CatCode" HeaderText="Category" SortExpression="CatCode" />
            </Columns>
            <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
             ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>"
             SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
     
    </form>
</body>
</html>
