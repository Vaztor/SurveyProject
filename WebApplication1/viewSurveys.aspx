 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewSurveys.aspx.cs" Inherits="WebApplication1.takeSurveys" %>

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

            <h1>View a Survey!</h1>
        
            
            <asp:Button class="button" text="View a Survey" runat="server" ID="ViewSurveyButton1" OnClick="ViewSurveyButton1_Click"></asp:Button>
            
            <asp:Button class="button" text="View a Survey" runat="server" ID="ViewSurveyButton2" OnClick="ViewSurveyButton2_Click"></asp:Button>
            
            <asp:Button class="button" text="View a Survey" runat="server" ID="ViewSurveyButton3" OnClick="ViewSurveyButton3_Click"></asp:Button> 
            
            <asp:Button class="button" text="View a Survey" runat="server" ID="ViewSurveyButton4" OnClick="ViewSurveyButton4_Click"></asp:Button> 
            
            <asp:Button class="button" text="View a Survey" runat="server" ID="ViewSurveyButton5" OnClick="ViewSurveyButton5_Click"></asp:Button> 
            
        </div> <!--End Container-->
    </form>
</body>
</html>
