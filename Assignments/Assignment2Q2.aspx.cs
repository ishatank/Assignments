using System;

public partial class Assignment2Q2a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Only set the current date on the initial page load
        if (!IsPostBack)
        {
            lblCurrentDate.Text = DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
    }

    protected void calendar_SelectionChanged(object sender, EventArgs e)
    {
        // Update the selected date when the user selects a date
        lblSelectedDate.Text = calendar.SelectedDate.ToString("dddd, MMMM dd, yyyy");
    }
}