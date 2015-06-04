using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateAccountLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("createAccount.aspx");
        }

        protected void ForgotPasswordLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("reclaimAccount.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // grab name and password
            // connect to server
            // go through usernames in database
        }
    }
}