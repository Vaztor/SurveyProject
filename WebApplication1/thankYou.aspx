<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thankyou.aspx.cs" Inherits="WebApplication1.thankyou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You!</title>

    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
    
            <nav>
                <asp:LinkButton ID="Home" runat="server" OnClick="Home_Click">home</asp:LinkButton>
                <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click">logout</asp:LinkButton>
            </nav>

            <h1>Thank you for responses!</h1>

            <asp:Button ID="ReturnButton" Text="Return Home"  runat="server"></asp:Button>

        </div>
    </form>
</body>
</html>
