<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createSurveys.aspx.cs" Inherits="WebApplication1.createSurveys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create a Self-Survey</title>

    <link rel="stylesheet" type="text/css" href="css/createSurveys.css">
</head>
<body>
    <form id="form1" runat="server">

        <div id="toolbox">
             <asp:Button ID="addQAgain" text="Create Question" width="120px"  runat="server"></asp:Button>
            <p><em>Help:</em> Please leave the question box blank to disregard it and its options and leave unused options as <q>n/a</q></p>
        </div>

        <div id="container" class="clearfix">

            <nav>
                <asp:LinkButton ID="Home" text="home" runat="server" OnClick="Home_Click"></asp:LinkButton>
                <asp:LinkButton ID="Logout" text="logout" runat="server" OnClick="Logout_Click"></asp:LinkButton>
            </nav>
    
            <h1>Create Your Survey!</h1>

            
            <asp:TextBox
                ID="SurveyTitleTextBox" 
                placeholder="Survey Title Here"
                Font-Size="Larger"
                runat="server">
                
            </asp:TextBox>
            <br />
           <!--
            <div id="toolbox">
                <!--
                <asp:TextBox ID="questionTextBox" runat="server" placeholder="Type Your Question"></asp:TextBox>
                <br />
                <asp:DropDownList ID="dropDownList" runat="server" ></asp:DropDownList>
                <br />
                <asp:TextBox ID="choice1" runat="server" placeholder="Choice 1"></asp:TextBox>
                <br />
                <asp:TextBox ID="choice2" runat="server" placeholder="Choice 2"></asp:TextBox>
                <br />
                <asp:TextBox ID="choice3" runat="server" placeholder="Choice 3"></asp:TextBox>
                <br />
                <asp:TextBox ID="choice4" runat="server" placeholder="Choice 4"></asp:TextBox>
                <br />
                
                You only need the below button for this to work.... --
                <asp:Button ID="addQ" text="Create Question" runat="server"></asp:Button>
            </div>
            -->


            <asp:TextBox ID="q1" CssClass="question" placeholder="Type Question Here" runat="server"></asp:TextBox>

            <asp:TextBox ID="option1" text="True" runat="server"></asp:TextBox>
            <asp:TextBox ID="option2" text="False" runat="server"></asp:TextBox>
            <asp:TextBox ID="option3" text="n/a" runat="server"></asp:TextBox>
            <asp:TextBox ID="option4" text="n/a" runat="server"></asp:TextBox>
            
            <hr />

            <asp:TextBox ID="q2" CssClass="question" placeholder="Type Question Here" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="option5" text="True" runat="server"></asp:TextBox>
            <asp:TextBox ID="option6" text="False" runat="server"></asp:TextBox>
            <asp:TextBox ID="option7" text="n/a" runat="server"></asp:TextBox>
            <asp:TextBox ID="option8" text="n/a" runat="server"></asp:TextBox>
            
            <hr />

            <asp:TextBox ID="q3" CssClass="question" placeholder="Type Question Here" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="option9" text="True" runat="server"></asp:TextBox>
            <asp:TextBox ID="option10" text="False" runat="server"></asp:TextBox>
            <asp:TextBox ID="option11" text="n/a" runat="server"></asp:TextBox>
            <asp:TextBox ID="option12" text="n/a" runat="server"></asp:TextBox>
           
            <hr />

            <asp:TextBox ID="q4" CssClass="question" placeholder="Type Question Here" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="option13" text="True" runat="server"></asp:TextBox>
            <asp:TextBox ID="option14" text="False" runat="server"></asp:TextBox>
            <asp:TextBox ID="option15" text="n/a" runat="server"></asp:TextBox>
            <asp:TextBox ID="option16" text="n/a" runat="server"></asp:TextBox>
            
            <hr />

            <asp:TextBox ID="q5" CssClass="question" placeholder="Type Question Here" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="option17" text="True" runat="server"></asp:TextBox>
            <asp:TextBox ID="option18" text="False" runat="server"></asp:TextBox>
            <asp:TextBox ID="option19" text="n/a" runat="server"></asp:TextBox>
            <asp:TextBox ID="option20" text="n/a" runat="server"></asp:TextBox>
            
            <hr />

           <!-- <asp:Button ID="SAVE" text="Save and Continue" runat="server" /> -->
            <asp:Button ID="CreateSurveyButton" Text="Create Survey" runat="server" />

        </div> <!--End container-->
    </form>
</body>
</html>
