<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewReults.aspx.cs" Inherits="WebApplication1.viewReults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="css/createSurveys.css">

    
    <script type="text/javascript">

        var SurveyID=<%OutputSurveyID();%>;
        var ItemID=<%OutputItemID();%>;
        var ItemOrder=<%OutputItemOrder();%>;

        function DoIt()
        {
            var xmlhttp = new XMLHttpRequest();
            var url = "GetJSONForSurveyItem.aspx?SurveyID=" + SurveyID + "&ItemID=" + ItemID + "&ItemOrder=" + ItemOrder;

            xmlhttp.onreadystatechange = function ()
            {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                {
                    var myArr = JSON.parse(xmlhttp.responseText);
                    myFunction(myArr);
                }
            }
            xmlhttp.open("GET", url, true);
            xmlhttp.send();

            function myFunction(arr)
            {
                document.getElementById("SurveyTitle").innerHTML =
                    arr.strSurveyTitle;
                document.getElementById("ItemTitle").innerHTML =
                    arr.strItemTitle;

                document.getElementById("Choice1Text").innerHTML =
                    arr.strChoice1Text;
                document.getElementById("Choice2Text").innerHTML =
                    arr.strChoice2Text;
                document.getElementById("Choice3Text").innerHTML =
                    arr.strChoice3Text;
                
                var total = arr.nChoice1 + arr.nChoice2 + arr.nChoice3 + arr.nChoice4;
                var c1 = ( arr.nChoice1 * 400 ) / total;
                document.getElementById("Choice1Value").style.width = "" + c1 + "px";
                var c2 = ( arr.nChoice2 * 400 ) / total;
                document.getElementById("Choice2Value").style.width = "" + c2 + "px";
                var c3 = ( arr.nChoice3 * 400 ) / total;
                document.getElementById("Choice3Value").style.width = "" + c3 + "px";
               
                setTimeout( "DoIt()", 5000 );
            }
        }

        DoIt();
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            
		<h1 id="SurveyTitle"> &nbsp;</h1>
		<h2 id="ItemTitle"> &nbsp;</h2>
		<table>
			<tr><td id="Choice1Text"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="height:30px; width:400px;"><table style="height:30px; width:10px;" id="Choice1Value"><tr><td  style="background-color:deepskyblue;"></td></tr></table></td></tr>
			<tr><td id="Choice2Text"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="height:30px; width:400px;"><table style="height:30px; width:10px;" id="Choice2Value"><tr><td  style="background-color:cadetblue;"></td></tr></table></td></tr>
			<tr><td id="Choice3Text"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style="height:30px; width:400px;"><table style="height:30px; width:10px;" id="Choice3Value"><tr><td  style="background-color:navajowhite;"></td></tr></table></td></tr>
		</table>
		<table>
			<tr><td align="center"><asp:Button runat="server" Visible="false" Text="Prev" ID="btnPrev" OnClick="btnPrev_Click" /> &nbsp;&nbsp;<asp:Button runat="server" Text="Next" ID="btnNext" OnClick="btnNext_Click" /></td></tr>
		</table>



        </div>
    </form>
</body>
</html>
