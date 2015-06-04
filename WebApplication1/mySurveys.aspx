<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mySurveys.aspx.cs" Inherits="WebApplication1.MySurveys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Self-Surveys</title>

    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
    <form id="form1" runat="server">

        <div id="toolbox">
            <!--
             <asp:RadioButton ID="addQAgai" text="View Results" width="120px"  runat="server"></asp:RadioButton>
             <asp:RadioButton ID="Button" text="Edit" width="120px"  runat="server"></asp:RadioButton>
            -->
            <asp:RadioButtonList ID="thisIsAnID" runat="server">
                <asp:ListItem Selected="True" Text="View Results" Value="ViewResults" CssClass="option" runat="server"></asp:ListItem>
                <asp:ListItem Text="Edit" Value="EditSurvey" CssClass="option" runat="server"></asp:ListItem> 
            </asp:RadioButtonList>

        </div>


        <div id="container">
            <nav>
                <asp:LinkButton ID="Home" text="home" runat="server" OnClick="Home_Click"></asp:LinkButton>
                <asp:LinkButton ID="Logout" text="logout" runat="server" OnClick="Logout_Click"></asp:LinkButton>
            </nav>

            <h1>My Self-Survey</h1>

            <!--For each survey in database, create a button that links to takeSurvey and carries ID of chosen survey-->

            <!--If it doesn't work, try having only a fixed number of surveys and only load new surveys by other users-->

            <asp:Button class="button" text="My Survey" runat="server"></asp:Button>
            <span>
            <asp:LinkButton ID="TESTLINKBUTTON" Text="view" runat="server"></asp:LinkButton>
            <asp:LinkButton ID="OTHERTEST" Text="edit" runat="server"></asp:LinkButton>
            </span>

            <asp:Button class="button" text="My Survey" runat="server"></asp:Button> 
            <span>
            <asp:LinkButton ID="LinkButton1" Text="view" runat="server"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" Text="edit" runat="server"></asp:LinkButton>
            </span>

            <asp:Button class="button" text="My Survey" runat="server"></asp:Button>
            <span>
            <asp:LinkButton ID="LinkButton3" Text="view" runat="server"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" Text="edit" runat="server"></asp:LinkButton>

            </span>

            <asp:Button class="button" text="My Survey" runat="server"></asp:Button> 
            <span>
            <asp:LinkButton ID="LinkButton5" Text="view" runat="server"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton6" Text="edit" runat="server"></asp:LinkButton>

            </span>

            <asp:Button class="button" text="My Survey" runat="server"></asp:Button> 
            <span>
            <asp:LinkButton ID="LinkButton7" Text="view" runat="server"></asp:LinkButton>
            <asp:LinkButton ID="LinkButton8" Text="edit" runat="server"></asp:LinkButton>
            </span>

        </div> <!--End Container-->
    </form>
</body>
</html>
