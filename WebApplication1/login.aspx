<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Self-Survey Login</title>

    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container" runat="server">

            <h1>Welcome</h1>

            <asp:TextBox ID="UsernameTextBox" placeholder="Username" runat="server"></asp:TextBox>
            
            <asp:TextBox ID="PasswordTextBox" placeholder="Password" runat="server"></asp:TextBox>

            <asp:Button ID="LoginButton" text="Login" runat="server" OnClick="LoginButton_Click"></asp:Button>

            <div id="helpful-links">

                <asp:LinkButton ID="ForgotPasswordLink" text="Forgot Password?" runat="server" OnClick="ForgotPasswordLink_Click"></asp:LinkButton>
                <br />
                <asp:LinkButton ID="CreateAccountLink" text="New member? Create an account!" runat="server" OnClick="CreateAccountLink_Click"></asp:LinkButton>

            </div>

        </div> <!--End Container-->
    </form>
</body>
</html>
