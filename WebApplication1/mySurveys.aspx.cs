using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MySurveys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* For each user-self-created-survey entry in the database, create a new LABEL followed by a view/edit button that
             * displays the title of the survey and carries the ID of that survey. Otherwise, only have
             * a fixed number of surveys a user can create (by hardcoding the buttons on webpage)
             */
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // remember to logout out user prior to redirect
            Response.Redirect("login.aspx");
        }

    }
}