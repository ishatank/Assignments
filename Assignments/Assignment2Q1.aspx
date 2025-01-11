<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment2Q1.aspx.cs" Inherits="Assignment" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ad Rotator Demo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .ad-container {
            text-align: center;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .ad-container h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ad-container">
            <h2>Ad Rotator Demo</h2>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="Ads.xml" />
        </div>
    </form>
</body>
</html>
