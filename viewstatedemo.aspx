<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" EnableViewState="false" runat="server" Text="Default Value"></asp:Label>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Submit" />
    </form>
</body>
</html>
