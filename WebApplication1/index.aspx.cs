using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            //Log out of current user, then redirect
            Response.Redirect("login.aspx");
        }

        protected void TakeSurveysButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("takeSurveys.aspx");
        }

        protected void CreateSurveysButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("createSurveys.aspx");
        }

        protected void MySurveysButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("mySurveys.aspx");
        }
    }
}