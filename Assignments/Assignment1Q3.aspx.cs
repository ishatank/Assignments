using System;

public partial class Assignment1 : System.Web.UI.Page
{
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double number1, number2;
        lblError.Text = string.Empty; // Clear any previous error messages
        lblResult.Text = string.Empty; // Clear the previous result

        // Validate input
        if (!double.TryParse(txtNumber1.Text, out number1) || !double.TryParse(txtNumber2.Text, out number2))
        {
            lblError.Text = "Please enter valid numbers.";
            return;
        }

        string operation = ddlOperation.SelectedValue;
        double result;

        try
        {
            switch (operation)
            {
                case "Add":
                    result = number1 + number2;
                    break;
                case "Subtract":
                    result = number1 - number2;
                    break;
                case "Multiply":
                    result = number1 * number2;
                    break;
                case "Divide":
                    if (number2 == 0)
                    {
                        lblError.Text = "Division by zero is not allowed.";
                        return;
                    }
                    result = number1 / number2;
                    break;
                default:
                    lblError.Text = "Invalid operation.";
                    return;
            }

            lblResult.Text = $"Result: {result}";
        }
        catch (Exception ex)
        {
            lblError.Text = $"An error occurred: {ex.Message}";
        }
    }
}
