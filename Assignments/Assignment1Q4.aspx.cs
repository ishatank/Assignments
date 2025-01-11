using System;

public partial class Assignment1Q : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Initialize message or any controls if needed
            lblMessage.Text = "Please select a color or check the box.";
        }
    }

    protected void ddlColors_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedColor = ddlColors.SelectedValue;

        if (!string.IsNullOrEmpty(selectedColor))
        {
            lblMessage.Text = $"You selected: {selectedColor}";
            lblMessage.Style["color"] = selectedColor.ToLower();
        }
        else
        {
            lblMessage.Text = "Please select a valid color.";
            lblMessage.Style.Remove("color");
        }
    }

    protected void chkEnable_CheckedChanged(object sender, EventArgs e)
    {
        if (chkEnable.Checked)
        {
            lblMessage.Text = "Greeting enabled! Hello!";
        }
        else
        {
            lblMessage.Text = "Greeting disabled.";
        }
    }
}
