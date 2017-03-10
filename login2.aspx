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
        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtEmail" 
            ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Email is required"></asp:RequiredFieldValidator>
        <p />
        Password  <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtPassword" 
            ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Login" />
    </form>
</body>
</html>
