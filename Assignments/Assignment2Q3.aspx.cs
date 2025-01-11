using System;
using System.IO;
using System.Web.UI.WebControls;

public partial class Assignment2Q3a : System.Web.UI.Page
{
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        // Check if a file has been selected
        if (FileUpload1.HasFile)
        {
            try
            {
                // Get the file name
                string fileName = Path.GetFileName(FileUpload1.FileName);

                // Specify the folder to save the uploaded file
                string uploadPath = Server.MapPath("~/UploadedFiles/");

                // Ensure the folder exists
                if (!Directory.Exists(uploadPath))
                {
                    Directory.CreateDirectory(uploadPath);
                }

                // Save the file to the specified path
                string fullPath = Path.Combine(uploadPath, fileName);
                FileUpload1.SaveAs(fullPath);

                // Display success message
                lblMessage.Text = $"File uploaded successfully! <br/> File Path: {fullPath}";
            }
            catch (Exception ex)
            {
                // Display error message if something goes wrong
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        else
        {
            // Display message if no file is selected
            lblMessage.Text = "Please select a file to upload.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}
