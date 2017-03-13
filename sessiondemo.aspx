<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Application.Add("title", "Srikanth Technologies");
        Trace.Write("Count : " + Application.Count);


        List<String> names = Session["names"] as List<String>;
        if (names != null)
            names.Add(txtName.Text);
        else
        {
            // create list and place it in session
            names = new List<String>();
            names.Add(txtName.Text);
            Session.Add("names", names);
        }

        // print names

        foreach (String n in names)
            Response.Write(n + "<br/>");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Session Count : " + Application["count"]);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     Name : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
     <p />
     <asp:Button ID="btnAdd" runat="server" Text="Add Name" OnClick="btnAdd_Click" />
    </form>
</body>
</html>
