<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSave_Click(object sender, EventArgs e)
    {
        HttpCookie city = new HttpCookie("city", txtCity.Text);
        city.Expires = DateTime.Today.AddDays(7);
        Response.Cookies.Add(city);
        Response.Redirect("listmovies.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    Enter city : <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    <p />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />

    </form>
</body>
</html>
