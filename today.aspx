<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnToday_Click(object sender, EventArgs e)
    {
        lblToday.Text = DateTime.Now.ToString();
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function clearText() {
            var lblToday = document.getElementById("lblToday"); // access label
            lblToday.innerText = "";  // clear text in label
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnToday" runat="server" Text="Show Today"  OnClick="btnToday_Click" />
        <input type="button" onclick="clearText()"  value="Clear Text" />
       <p></p>
       <asp:Label ID="lblToday" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
