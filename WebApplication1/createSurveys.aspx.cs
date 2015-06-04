using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class createSurveys : System.Web.UI.Page
    {
        String defaultValue = "default";
        String trueFalse = "trueFalse";
        String multiChoice = "multiChoice";

        protected void Page_Load(object sender, EventArgs e)
        {
            dropDownList.Items.Add(new ListItem("Choose question type",defaultValue));
            dropDownList.Items.Add(new ListItem("Add True/False", trueFalse ));
            dropDownList.Items.Add(new ListItem("Add Multiple Choice", multiChoice));
            
            /* When the "create" button in the toolbox is clicked, 
             * create 5 textboxes (like hard-coded on the page) with preset placeholders/textValues
             * 
             * Once the save button is clicked, the strings in each textbox will go into appropriate  
             * location in database. Along with creating an ID. Don't forget the TitleTextBox
             */
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            //Log out of current user, THEN redirect
            Response.Redirect("login.aspx");
        }

        protected void dropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            String listOption = dropDownList.SelectedValue;

            //Why doesn't this work?
            if (listOption.Equals(multiChoice)) 
            {
                choice1.Visible = true;
                choice2.Visible = true;
                choice3.Visible = true;
                choice4.Visible = true;
            }

        } 
    }
}