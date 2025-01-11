<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment2Q2.aspx.cs" Inherits="Assignment2Q2a" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Date Display</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            text-align: center;
        }
        .date-info {
            margin: 20px 0;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Current Date and Selected Date</h2>

            <div class="date-info">
                <strong>Today’s Date:</strong> 
                <asp:Label ID="lblCurrentDate" runat="server" />
            </div>

            <asp:Calendar ID="calendar" runat="server" OnSelectionChanged="calendar_SelectionChanged" />

            <div class="date-info">
                <strong>Selected Date:</strong> 
                <asp:Label ID="lblSelectedDate" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
