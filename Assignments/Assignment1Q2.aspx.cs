using System;

namespace Assignments
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            // Check if input is valid
            if (double.TryParse(txtTemperature.Text, out double temperature))
            {
                string conversionType = rblConversionType.SelectedValue;
                double result;

                if (conversionType == "CtoF")
                {
                    // Convert Celsius to Fahrenheit
                    result = (temperature * 9 / 5) + 32;
                    lblResult.Text = $"{temperature}°C = {result:F2}°F";
                }
                else if (conversionType == "FtoC")
                {
                    // Convert Fahrenheit to Celsius
                    result = (temperature - 32) * 5 / 9;
                    lblResult.Text = $"{temperature}°F = {result:F2}°C";
                }
                else
                {
                    lblResult.Text = "Invalid conversion type.";
                }
            }
            else
            {
                lblResult.Text = "Please enter a valid numeric temperature.";
            }
        }
    }
}
