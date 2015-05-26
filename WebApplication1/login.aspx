<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Self-Survey Login</title>

    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <div id="container">

        <h1>Welcome</h1>

        <form id="form1" runat="server">
            <fieldset>

                <label for="userName">Username</label>
                <input type="text" id="userName" name="userName" size="30" required="required">

                <label for="userPassword">Password</label>
                <input type="text" id="userPassword" name="userPassword" size="30" required="required">

                <input type="submit" value="Login">

                <div id="helpful-links">
                    <p><a href="retrievePassword.aspx">Forgot password?</a></p>
                    <p><a href="createAccount.aspx">New member? Create a new account!</a></p>
                </div>

            </fieldset>
        </form>
    </div>
</body>
</html>
