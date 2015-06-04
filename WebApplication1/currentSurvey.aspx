<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="currentSurvey.aspx.cs" Inherits="WebApplication1.survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><asp:Literal ID="PageTitleLiteral" runat="server"></asp:Literal></title>

    <link rel="stylesheet" type="text/css" href="css/createSurveys.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            
            <!--Fill out everything from database when page loads-->
            <!--Label with questions and radiobuttonlist will create options that are NOT "n/a" option-->

            <asp:Label ID="THISISTHETITLE" Font-Size="30px" runat="server" Text="TitleGoesHere"></asp:Label>

            <asp:Label ID="Label1" CssClass="label" runat="server" Text="question1"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList0" runat="server"></asp:RadioButtonList>
            <hr />
            <asp:Label ID="Label2" CssClass="label" runat="server" Text="question2"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server"></asp:RadioButtonList>
            <hr />
            <asp:Label ID="Label3" CssClass="label" runat="server" Text="question3"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" TextAlign="Right"></asp:RadioButtonList>
            <hr />
            <asp:Label ID="Label4" CssClass="label" runat="server" Text="When is the best time?"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList4" runat="server"></asp:RadioButtonList>
            <hr />
            <asp:Label ID="Label5" CssClass="label" runat="server" Text="question5"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList5" runat="server"></asp:RadioButtonList>
            <hr />

            <asp:Button ID="btnSubmit" text="Submit"  runat="server"></asp:Button>
            
        </div>
    </form>
</body>
</html>
