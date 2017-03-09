<%@ Page Language="C#" %>
<%@ Import  Namespace="System.IO" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // get all files from photos folder
        DirectoryInfo d = new DirectoryInfo(Request.MapPath("/photos"));
        FileInfo [] files = d.GetFiles();
        foreach(FileInfo file in files)
        {
            lblPhotos.Text += String.Format("<img style='width:200px;height:200px' src='photos/{0}'></img> ", file.Name);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label ID="lblPhotos" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
