<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int total = 0;

        foreach(ListItem item in cblCourses.Items)
        {
            if (item.Selected)
                total += Int32.Parse(item.Value);
        }

        lblTotal.Text = total.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:CheckBoxList ID="cblCourses" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
               <asp:ListItem Value="3500">Java SE</asp:ListItem>
                <asp:ListItem Value="4000">Java EE</asp:ListItem>
                <asp:ListItem Value="3500">Oracle Database</asp:ListItem>
        </asp:CheckBoxList>

        <p></p>
        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
