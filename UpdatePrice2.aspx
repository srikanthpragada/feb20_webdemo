<%@ Page Language="C#" Trace="true" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        try
        {
            using (SqlConnection con = new SqlConnection(Database.ConnectionString))
            {
                con.Open();

                String cmdstr = "update products set price =  @newprice where prodid = @prodid";
                SqlCommand cmd = new SqlCommand(cmdstr,con);

                cmd.Parameters.AddWithValue("@newprice", txtNewPrice.Text);
                cmd.Parameters.AddWithValue("@prodid", txtProdid.Text);

                int count = cmd.ExecuteNonQuery();
                if (count == 1)
                    lblMsg.Text = "Updated Price Successfully!";
                else
                    lblMsg.Text = "Product Id Not Found!";

            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error : " + ex.Message;
        }

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Price</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Update Price</h2>
    Product Id <br />
        <asp:TextBox ID="txtProdid" runat="server"></asp:TextBox>
        <p />
        New Price <br />
        <asp:TextBox ID="txtNewPrice" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
