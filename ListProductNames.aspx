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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT [ProdId], [ProdName] FROM [Products]"></asp:SqlDataSource>


    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <h2>Products</h2>
                <hr />
            </HeaderTemplate>
            <ItemTemplate>
                <a href='productdetails.aspx?id=<%# Eval("prodid")%>'><%# Eval("prodname") %></a>
            </ItemTemplate>
            <FooterTemplate>
                <hr />
            </FooterTemplate>
        </asp:DataList>


    
    </form>
</body>
</html>
