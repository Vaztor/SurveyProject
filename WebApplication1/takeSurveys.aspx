 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="takeSurveys.aspx.cs" Inherits="WebApplication1.takeSurveys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Take surveys</title>

    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
        
            <nav>
                <asp:LinkButton ID="Home" text="home" runat="server" OnClick="Home_Click"></asp:LinkButton>
                <asp:LinkButton ID="Logout" text="logout" runat="server" OnClick="Logout_Click"></asp:LinkButton>
            </nav>

            <h1>Take a Survey!</h1>
        
            
            <asp:Button class="button" text="Take a Survey" runat="server"></asp:Button>
            
            <asp:Button class="button" text="Take a Survey" runat="server"></asp:Button>
            
            <asp:Button class="button" text="Take a Survey" runat="server"></asp:Button> 
            
            <asp:Button class="button" text="Take a Survey" runat="server"></asp:Button> 
            
            <asp:Button class="button" text="Take a Survey" runat="server"></asp:Button> 
            
        </div> <!--End Container-->
    </form>
</body>
</html>
