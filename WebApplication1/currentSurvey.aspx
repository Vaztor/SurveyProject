<%@ Page Language="C#" AutoEventWireup="true" CodeFile="currentSurvey.aspx.cs" Inherits="WebApplication1.survey" %>

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

            <asp:Label ID="lblItemText" CssClass="label" runat="server" Text="question1"></asp:Label>
            <asp:RadioButton ID="rbtnItem1" runat="server" GroupName="ch" Text="Item1" />
            <hr />

            <asp:RadioButton ID="rbtnItem2" runat="server" GroupName="ch" Text="Item2" />
            <hr />

            <asp:RadioButton ID="rbtnItem3" runat="server" GroupName="ch" Text="Item3" />
            <hr />

            <asp:Button ID="btnNext" text="Next"  runat="server" OnClick="btnNext_Click"></asp:Button>
            
        </div>
    </form>
</body>
</html>
