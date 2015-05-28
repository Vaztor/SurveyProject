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

            <fieldset>

                <label for="userName">Username</label>
                <input type="text" id="userName" name="userName" size="30" required="required">

                <label for="userPassword">Password</label>
                <input type="text" id="userPassword" name="userPassword" size="30" required="required">

                <label for="email">Email</label>
                <input type="email" placeholder="To verify your account only" id="userEmail" name="userEmail" size="30" required="required">

                <input type="submit" value="Create Account">

            </fieldset>
        </div> <!--End Container-->
    </form>
</body>
</html>
