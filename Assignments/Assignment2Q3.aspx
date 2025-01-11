<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment2Q3.aspx.cs" Inherits="Assignment2Q3a" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload Demo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            text-align: center;
        }
        .form-group {
            margin: 20px 0;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="file"] {
            display: block;
            width: 100%;
            padding: 5px;
        }
        .result {
            margin-top: 20px;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>File Upload Control Demo</h2>

            <div class="form-group">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnUpload" runat="server" Text="Upload File" OnClick="btnUpload_Click" />
            </div>
            
            <asp:Label ID="lblMessage" runat="server" CssClass="result" />
        </div>
    </form>
</body>
</html>
