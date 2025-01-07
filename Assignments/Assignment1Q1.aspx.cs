using System;

namespace Assignments
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Code executed on page load
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            if (!string.IsNullOrWhiteSpace(name))
            {
                lblMessage.Text = "Welcome, " + name + "!";
            }
            else
            {
                lblMessage.Text = "Please enter your name.";
            }
        }
    }
}
