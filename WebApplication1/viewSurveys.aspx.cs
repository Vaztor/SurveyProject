using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class takeSurveys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Attempt to create a list of buttons based on TAKE-ABLE surveys in database, 
                each button corresponds to a unique survey ID and displays its title, and 
                links to currentSurveys.aspx while carrying the ID of chosen Survey*/


           
            SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");

            try
            {
                objConnection.Open();

                //title 1
                string strSQL = String.Format("select * from surveys where survey_id = 1");
                SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
                SqlDataReader objReader = objCommand.ExecuteReader();

                
                if (objReader.Read())
                {
                    //lblResults.Text = String.Format("Success, ID={0}", objReader["ID"]);
                    //int nID = Convert.ToInt32(objReader["ID"]);
                    ViewSurveyButton1.Text = String.Format("{0}", objReader["title"]);
                }
                else
                {
                   // lblResults.Text = "Login Failed";
                }
                objReader.Close();

                //title 2
                strSQL = String.Format("select * from surveys where survey_id = 2");
                objCommand = new SqlCommand(strSQL, objConnection);
                objReader = objCommand.ExecuteReader();

                
                if (objReader.Read())
                {
                    //lblResults.Text = String.Format("Success, ID={0}", objReader["ID"]);
                    //int nID = Convert.ToInt32(objReader["ID"]);
                    ViewSurveyButton2.Text = String.Format("{0}", objReader["title"]);
                }
                else
                {
                    // lblResults.Text = "Login Failed";
                }
                objReader.Close();

                //title 3
                strSQL = String.Format("select * from surveys where survey_id = 3");
                objCommand = new SqlCommand(strSQL, objConnection);
                objReader = objCommand.ExecuteReader();


                if (objReader.Read())
                {
                    //lblResults.Text = String.Format("Success, ID={0}", objReader["ID"]);
                    //int nID = Convert.ToInt32(objReader["ID"]);
                    ViewSurveyButton3.Text = String.Format("{0}", objReader["title"]);
                }
                else
                {
                    // lblResults.Text = "Login Failed";
                }
                objReader.Close();

            }
            catch (Exception ex)
            {
               //TakeSurveyButton1.Text = ex.Message.ToString();
            }
            finally
            {
                if (objConnection.State == ConnectionState.Open)
                {
                    objConnection.Close();
                }
              
            }
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
        protected void ViewSurveyButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewReults.aspx?SurveyID=1");
        }
        protected void ViewSurveyButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewReults.aspx?SurveyID=2");
        }
        protected void ViewSurveyButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewReults.aspx?SurveyID=3");
        }
        protected void ViewSurveyButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewReults.aspx?SurveyID=4");
        }
        protected void ViewSurveyButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewReults.aspx?SurveyID=5");
        }
}
}