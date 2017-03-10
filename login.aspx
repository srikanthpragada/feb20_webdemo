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
        Email Address
        <br />
        <asp:TextBox ID="txtEmail" TextMode="Email" required="required" runat="server"></asp:TextBox>
        <p />
        Password  <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" required="required" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Login" />
    </form>
</body>
</html>
