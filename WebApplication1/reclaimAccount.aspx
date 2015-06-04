<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reclaimAccount.aspx.cs" Inherits="WebApplication1.reclaimAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Self-Survey Password Recovery</title>

    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            
            <h1>Forgot Password?</h1>

            <asp:TextBox ID="UserNametextBox" placeholder="Username" runat="server"></asp:TextBox>

            <asp:TextBox ID="EmailTextBox" placeholder="Account Email" runat="server"></asp:TextBox>

            <asp:Button ID="SendEmailButton" Text="Send" runat="server"></asp:Button>

        </div>
    </form>
</body>
</html>
