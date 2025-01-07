<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1Q1.aspx.cs" Inherits="Assignments.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome Page</h1>
            <asp:Label ID="lblName" runat="server" Text="Enter your name:" AssociatedControlID="txtName"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
