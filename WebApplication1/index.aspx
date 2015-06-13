<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Self-Survey</title>

    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">

            <nav>
                <asp:LinkButton ID="Home" text="home" runat="server" OnClick="Home_Click"></asp:LinkButton>
                <asp:LinkButton ID="Logout" text="logout" runat="server" OnClick="Logout_Click"></asp:LinkButton>
            </nav>

            <h1>My Self-Survey</h1>

            <asp:Button ID="TakeSurveysButton" class="button" text="Take Survey" runat="server" OnClick="TakeSurveysButton_Click"></asp:Button> 

            <asp:Button ID="MySurveysButton" class="button" text="View Survey Results" runat="server" OnClick="MySurveysButton_Click"></asp:Button> 
            
        </div> <!--End Container-->
    </form>
</body>
</html>
