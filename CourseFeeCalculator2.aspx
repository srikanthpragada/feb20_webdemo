<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int fee = 0;
        int counter = 0;

        foreach (ListItem course in cblCourse.Items)
        {
            if(course.Selected)
            {
                counter++;
            }
        }
        if (counter >= 2)
        {
            int i = 1;
            foreach (ListItem course in cblCourse.Items)
            {
                if(course.Selected)
                {
                    if(i==1)
                    {
                        fee += Int32.Parse(course.Value);
                    }
                    else
                    {
                        int buffer = Int32.Parse(course.Value);
                        buffer = buffer - buffer * 10 / 100;
                        fee += buffer;
                    }
                    i++;
                }
            }
        }
        else
        {
            foreach (ListItem course in cblCourse.Items)
            {
                if(course.Selected)
                {
                    fee = Int32.Parse(course.Value);
                }
            }
        }

        lblToatalFee.Text = fee.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Fee Calculator 3</title>
</head>
<body>
  <form id="form1" runat="server">
 
      <asp:CheckBoxList ID="cblCourse" runat="server">
          <asp:ListItem Value ="3000">Java CE</asp:ListItem>
          <asp:ListItem Value ="3500">.NET</asp:ListItem>
          <asp:ListItem Value ="4000">Java EE</asp:ListItem>
      </asp:CheckBoxList>
      <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
      <p></p>
      <asp:Label ID="lblToatalFee" runat="server" Font-Bold="True" Font-Names="HoloLens MDL2 Assets" 
          Font-Size="20pt" ForeColor="#FF33CC" Text=""
          ></asp:Label>     
  </form>
</body>
</html>
