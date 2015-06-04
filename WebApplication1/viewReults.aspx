<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewReults.aspx.cs" Inherits="WebApplication1.viewReults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="css/createSurveys.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            
            <!--Create survey from database along with results-->
            <asp:ListView runat="server"></asp:ListView>

            <!--What is the best way to load the series of questions from the database?-->
            <!--Create class question and class option and align them to the left-->

            <asp:Label ID="Label1" runat="server" Text="question1"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
            <hr />
            <asp:Label ID="Label2" runat="server" Text="question2"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server"></asp:RadioButtonList>
            <hr />


        </div>
    </form>
</body>
</html>
