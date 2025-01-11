<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment1Q4.aspx.cs" Inherits="Assignment1Q" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AutoPostBack Demonstration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .form-container {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        select, input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .result {
            font-size: 1.2em;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>AutoPostBack Demonstration</h2>

            <label for="ddlColors">Select a Color:</label>
            <asp:DropDownList ID="ddlColors" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlColors_SelectedIndexChanged">
                <asp:ListItem Text="-- Select Color --" Value="" />
                <asp:ListItem Text="Red" Value="Red" />
                <asp:ListItem Text="Blue" Value="Blue" />
                <asp:ListItem Text="Green" Value="Green" />
            </asp:DropDownList>

            <label for="chkEnable">Enable Greeting:</label>
            <asp:CheckBox ID="chkEnable" runat="server" AutoPostBack="true" OnCheckedChanged="chkEnable_CheckedChanged" />

            <asp:Label ID="lblMessage" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
