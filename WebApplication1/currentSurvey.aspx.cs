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
    public partial class survey : System.Web.UI.Page
    {
        void GetSurveyData()
        {
            Session["SurveyID"] = null;
            Session["SurveyTitle"] = null;
            Session["SurveyNumberOfItems"] = null;
            Session["ItemID"] = null;
            Session["ItemOrder"] = null;

            SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");

            try
            {
                objConnection.Open();

                string strSQL = String.Format("select * from survey_items_2 where survey_id={0}", Request["SurveyID"]);
                SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
                SqlDataReader objReader = objCommand.ExecuteReader();
                int nSurveyID = -1;
                if (objReader.Read())
                {
                    //Session["SurveyTitle"] = Convert.ToString(objReader["Title"]);
                    Session["SurveyID"] = nSurveyID = Convert.ToInt32(objReader["survey_id"]);
                    Session["SurveyNumberOfItems"] = 5;
                    Session["ItemOrder"] = 1 + ( 5* (Convert.ToInt32(Session["SurveyID"]) - 1));
                    //Session["ItemOrder"] = 1;
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

        void PopulateItem()
        {
            int nItemOrder = Convert.ToInt32(Session["ItemOrder"]);
            //string strSurveyTitle = Convert.ToString(Session["SurveyTitle"]);
            int nSurveyID = Convert.ToInt32(Session["SurveyID"]);
            int nNumberOfSurveyItems = 5 * Convert.ToInt32(Session["SurveyID"]); 

            SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");

            try
            {
                objConnection.Open();

                string strSQL = String.Format("select * from survey_items_2 where survey_id={0} and items_id={1}", nSurveyID, nItemOrder);
                SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
                SqlDataReader objReader = objCommand.ExecuteReader();
                if (objReader.Read())
                {
                    Session["ItemID"] = Convert.ToInt32(objReader["items_id"]);
                    lblItemText.Text = Convert.ToString(objReader["text"]);
                    //int nType = Convert.ToInt32(objReader["Type"]);
                    rbtnItem1.Text = Convert.ToString(objReader["choice1"]);
                    rbtnItem2.Text = Convert.ToString(objReader["choice2"]);
                    rbtnItem3.Text = Convert.ToString(objReader["choice3"]);
                }
                objReader.Close();

                if (nItemOrder < nNumberOfSurveyItems)
                {
                    btnNext.Text = "Next";
                }
                else
                {
                    btnNext.Text = "Done";
                }
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

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetSurveyData();
                if (Session["ItemOrder"] != null)
                {
                    PopulateItem();
                }
            }

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int nItemOrder = Convert.ToInt32(Session["ItemOrder"]);
            //string strSurveyTitle = Convert.ToString(Session["SurveyTitle"]);
            int nSurveyID = Convert.ToInt32(Session["SurveyID"]);
            int nItemID = Convert.ToInt32(Session["ItemID"]);

            int nChoice = 1;
            if (rbtnItem2.Checked)
            {
                nChoice = 2;
            }
            else if (rbtnItem3.Checked)
            {
                nChoice = 3;
            }

            SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");

            try
            {
                objConnection.Open();

                string strSQL = String.Format("update survey_results set choice{0}=choice{0}+1 where items_id={1} and survey_id={2}", nChoice, (nItemID - ( 5* (Convert.ToInt32(Session["SurveyID"]) - 1))), nSurveyID);
                SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
                objCommand.ExecuteNonQuery();
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

            if (btnNext.Text == "Done")
            {
                Response.Redirect("index.aspx");
            }

            nItemOrder++;
            Session["ItemOrder"] = nItemOrder;

            PopulateItem();
        }

    }
}