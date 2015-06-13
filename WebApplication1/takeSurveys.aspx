 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="takeSurveys.aspx.cs" Inherits="WebApplication1.takeSurveys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Take surveys</title>

    <link rel="stylesheet" type="text/css" href="css/index.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
        
            <nav>
                <asp:LinkButton ID="Home" text="home" runat="server" OnClick="Home_Click"></asp:LinkButton>
                <asp:LinkButton ID="Logout" text="logout" runat="server" OnClick="Logout_Click"></asp:LinkButton>
            </nav>

            <h1>Take a Survey!</h1>
        
            
            <asp:Button class="button" text="Take a Survey" runat="server" ID="TakeSurveyButton1" OnClick="TakeSurveyButton1_Click"></asp:Button>
            
            <asp:Button class="button" text="Take a Survey" runat="server" ID="TakeSurveyButton2" OnClick="TakeSurveyButton2_Click"></asp:Button>
            
            <asp:Button class="button" text="Take a Survey" runat="server" ID="TakeSurveyButton3" OnClick="TakeSurveyButton3_Click"></asp:Button> 
            
            <asp:Button class="button" text="Take a Survey" runat="server" ID="TakeSurveyButton4" OnClick="TakeSurveyButton4_Click"></asp:Button> 
            
            <asp:Button class="button" text="Take a Survey" runat="server" ID="TakeSurveyButton5" OnClick="TakeSurveyButton5_Click"></asp:Button> 
            
        </div> <!--End Container-->
    </form>
</body>
</html>
