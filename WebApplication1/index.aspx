<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Self-Survey</title>

    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">

            <nav><a href="login.aspx">logout</a></nav>

            <h1>My Self-Survey</h1>

            <div class="button">
                <h3><a href="takeSurveys.aspx">Take a Survey</a></h3>
            </div>

            <div class="button">
                <h3><a href="createSurveys.aspx">Create a Survey</a></h3>
            </div>

            <div class="button">
                <h3><a href="mySurveys.aspx">My Surveys</a></h3>
            </div>

        </div> <!--End Container-->
    </form>
</body>
</html>
