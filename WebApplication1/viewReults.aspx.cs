using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

namespace WebApplication1
{
    public partial class viewReults : System.Web.UI.Page
    {
        void StartSurveyView()
        {
            Session["SurveyTitle"] = String.Empty;
            Session["SurveyID"] = Convert.ToInt32(Request["SurveyID"]);
           // if(Session["OrderNumber"] == null || (int) Session["OrderNumber"] == 0)
          //  {
                Session["OrderNumber"] = 1 + (5 * (Convert.ToInt32(Session["SurveyID"]) - 1));
         //   }

            Session["NumberOfItems"] = (5 * Convert.ToInt32(Request["SurveyID"]));
            
            
            SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");

            try
            {
                objConnection.Open();

                string strSQL = String.Format("select title from surveys where survey_id={0}", Request["SurveyID"]);
                SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
                SqlDataReader objReader = objCommand.ExecuteReader();
                if (objReader.Read())
                {
                    Session["SurveyTitle"] = Convert.ToString(objReader["title"]);
                    //Session["NumberOfItems"] = Convert.ToInt32(objReader["NumberOfItems"]);
                }
                objReader.Close();

                strSQL = String.Format("select * from survey_items_2 where survey_id={0} and items_id={1}", Request["SurveyID"], Session["OrderNumber"]);
                objCommand = new SqlCommand(strSQL, objConnection);
                objReader = objCommand.ExecuteReader();
                if (objReader.Read())
                {
                    Session["ItemID"] = Convert.ToInt32(objReader["items_id"]);
                }
                objReader.Close();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                if (objConnection.State == ConnectionState.Open)
                {
                    objConnection.Close();
                }
            }
        }

        public void OutputSurveyID()
        {
            Response.Write(Convert.ToString(Session["SurveyID"]));
        }

        public void OutputItemID()
        {
            //Response.Write(Convert.ToString(Session["ItemID"]));
            Response.Write(Convert.ToString(Session["OrderNumber"]));
        }

        public void OutputItemOrder()
        {
            Response.Write(Convert.ToString(Session["OrderNumber"]));
        }

        public void OutputNumberOfItems()
        {
            Response.Write(Convert.ToString(Session["NumberOfItems"]));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                StartSurveyView();
            }
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            int nOrderNumber = Convert.ToInt32(Session["OrderNumber"]);
            int nNumberOfItems = Convert.ToInt32(Session["NumberOfItems"]);

            nOrderNumber--;
            Session["OrderNumber"] = nOrderNumber;
            btnPrev.Visible = true;
            if (nOrderNumber == 1)
            {
                btnPrev.Visible = false;
            }
            btnNext.Visible = true;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int nOrderNumber = Convert.ToInt32(Session["OrderNumber"]);
            int nNumberOfItems = Convert.ToInt32(Session["NumberOfItems"]);

            nOrderNumber++;
            Session["OrderNumber"] = nOrderNumber;
            btnNext.Visible = false;
            if (nOrderNumber < nNumberOfItems)
            {
                btnNext.Visible = true;
            }
            btnPrev.Visible = true;

            
          
        }


        protected void DoneButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
}
}