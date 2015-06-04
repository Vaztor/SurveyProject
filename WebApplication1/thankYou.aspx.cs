using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class thankyou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // remember to logout user before redirect
            Response.Redirect("login.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}