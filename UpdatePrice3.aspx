<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

     /*

     CREATE PROCEDURE [dbo].[ChangePrice2](@prodid int, @price money)
     as
       update products set price = @price
       where prodid = @prodid

       if @@rowcount = 0 
         raiserror('Invalid product id',16,1)

     */

        try
        {
            using (SqlConnection con = new SqlConnection(Database.ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("changeprice2",con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@price", txtNewPrice.Text);
                cmd.Parameters.AddWithValue("@prodid", txtProdid.Text);
                cmd.ExecuteNonQuery();

                lblMsg.Text = "Updated Price Successfully!";
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
