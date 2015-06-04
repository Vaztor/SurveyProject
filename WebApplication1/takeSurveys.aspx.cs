﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class takeSurveys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Attempt to create a list of buttons based on TAKE-ABLE surveys in database, 
                each button corresponds to a unique survey ID and displays its title, and 
                links to currentSurveys.aspx while carrying the ID of chosen Survey*/

        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // Remember to log user off before redirect
            Response.Redirect("login.aspx");
        }
    }
}