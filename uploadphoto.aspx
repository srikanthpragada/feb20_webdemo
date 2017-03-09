<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Request.MapPath("photos/" + FileUpload1.FileName);
            FileUpload1.SaveAs(filename);
            Response.Write("Uploaded Photo Successfully!");
        }
        else
            Response.Write("Sorry! Please upload photo!");

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Upload Photo</h2>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
    </form>
    <p>
        <a href="listphotos.aspx">List Photos</a></p>
</body>
</html>
