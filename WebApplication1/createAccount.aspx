<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createAccount.aspx.cs" Inherits="WebApplication1.createAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>

    <link rel="stylesheet" type="text/css" href="css/login.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">

            <h1>Create new account</h1>

            <asp:TextBox ID="NewUsernameTextBox" runat="server"></asp:TextBox>

            <asp:TextBox ID="NewPasswordTextBox"  runat="server"></asp:TextBox>

            <asp:TextBox ID="NewEmailTextBox"  runat="server"></asp:TextBox>

            <asp:Label ID="lblResults" runat="server"></asp:Label>

            <asp:Button ID="CreateAccountButton" Text="Create Account" runat="server"></asp:Button>

        </div> <!--End Container-->
    </form>
</body>
</html>
