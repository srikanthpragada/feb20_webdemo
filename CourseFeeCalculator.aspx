<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        // find out base fee
        int fee = Int32.Parse(ddlCourse.SelectedItem.Value);
        if (rbOnline.Checked)
            fee += 1000;

        if (cbMaterial.Checked)
            fee += 300;

        int nostud = Int32.Parse(txtNoStudents.Text);

        if (nostud > 5)
            fee = fee - fee * 10 / 100;

        lblFee.Text = fee.ToString();

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Fee Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Course Fee Calculator</h1>
         Select Course :
            <asp:DropDownList ID="ddlCourse" runat="server">
                <asp:ListItem Value="3500">Java SE</asp:ListItem>
                <asp:ListItem Value="4000">Java EE</asp:ListItem>
                <asp:ListItem Value="3500">Oracle Database</asp:ListItem>
            </asp:DropDownList>
      
        <p></p>
        No. of Students :
            <asp:TextBox ID="txtNoStudents" runat="server"  Text ="1"></asp:TextBox>
        <p></p>
            Mode :
            <asp:RadioButton ID="rbClassroom" Text="Classroom" runat="server"
                 Checked="true"
                 GroupName="mode" />
            <asp:RadioButton ID="rbOnline" Text="Online" runat="server"
                  GroupName="mode" />
        <p></p>
            <asp:CheckBox ID="cbMaterial" Checked="true" runat="server" Text="Course Material" />
        <p></p>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <p></p>
        <asp:Label ID="lblFee" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="20pt" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
