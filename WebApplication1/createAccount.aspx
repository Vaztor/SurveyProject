<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="WebApplication1.createAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>

    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">

            <h1>Create new account</h1>

            <asp:TextBox ID="NewUsernameTextBox" placeholder="Username" runat="server"></asp:TextBox>

            <asp:TextBox ID="NewPasswordTextBox" placeholder="Password" runat="server"></asp:TextBox>

            <asp:TextBox ID="NewEmailTextBox" placeholder="Email" runat="server"></asp:TextBox>

            <asp:Button ID="CreateAccountButton" Text="Create Account" runat="server"></asp:Button>

        </div> <!--End Container-->
    </form>
</body>
</html>
