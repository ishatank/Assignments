<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment1Q2.aspx.cs" Inherits="Assignments.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Temperature Conversion</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
            <h2>Temperature Conversion</h2>

            <label for="txtTemperature">Enter Temperature:</label>
            <asp:TextBox ID="txtTemperature" runat="server"></asp:TextBox>
            <br /><br />

            <asp:RadioButtonList ID="rblConversionType" runat="server">
                <asp:ListItem Text="Celsius to Fahrenheit" Value="CtoF" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Fahrenheit to Celsius" Value="FtoC"></asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server" Text="" Font-Bold="True"></asp:Label>
        </div>
    </form>
</body>
</html>
