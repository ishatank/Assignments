<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment1Q3.aspx.cs" Inherits="Assignment1" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Algebraic Operations</title>
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
        .form-container h2 {
            text-align: center;
        }
        .form-container label {
            display: block;
            margin: 10px 0 5px;
        }
        .form-container input, .form-container select, .form-container button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .result {
            text-align: center;
            font-size: 1.2em;
            color: #333;
        }
        .error {
            color: red;
            text-align: center;
            font-size: 1.1em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Algebraic Operations</h2>

            <label for="txtNumber1">Enter First Number:</label>
            <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
            <br />

            <label for="txtNumber2">Enter Second Number:</label>
            <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
            <br />

            <label for="ddlOperation">Select Operation:</label>
            <asp:DropDownList ID="ddlOperation" runat="server">
                <asp:ListItem Text="Addition" Value="Add"></asp:ListItem>
                <asp:ListItem Text="Subtraction" Value="Subtract"></asp:ListItem>
                <asp:ListItem Text="Multiplication" Value="Multiply"></asp:ListItem>
                <asp:ListItem Text="Division" Value="Divide"></asp:ListItem>
            </asp:DropDownList>
            <br />

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            <br />

            <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
        </div>
    </form>
</body>
</html>
