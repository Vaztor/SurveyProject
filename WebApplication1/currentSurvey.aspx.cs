using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // try this:
            // for each row of data from database, create a new label (for question text)
            // and create new radiobuttonList (containing an option for each non-"n/a" option) based on database info

            //if that doesn't work, then hardcode the questions onto the page

            RadioButtonList0.Items.Add(new ListItem("True","value"));
            RadioButtonList0.Items.Add(new ListItem("False", "value"));

            RadioButtonList2.Items.Add(new ListItem("True", "value"));
            RadioButtonList2.Items.Add(new ListItem("False", "value"));

            RadioButtonList3.Items.Add(new ListItem("True", "value"));
            RadioButtonList3.Items.Add(new ListItem("False", "value"));

            RadioButtonList4.Items.Add(new ListItem("Tomorrow", "value"));
            RadioButtonList4.Items.Add(new ListItem("Now", "value"));
            RadioButtonList4.Items.Add(new ListItem("Yesterday", "value"));
            RadioButtonList4.Items.Add(new ListItem("Whenever", "value"));

            RadioButtonList5.Items.Add(new ListItem("True", "value"));
            RadioButtonList5.Items.Add(new ListItem("False", "value"));

        }
    }
}