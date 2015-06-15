using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Net;
using System.Runtime.Serialization.Json;
using System.Web.Script.Serialization;

public struct SurveyResults
{
	public int nItemID, nSurveyID, nItemOrder;
	public int nChoice1, nChoice2, nChoice3, nChoice4;
    public string strSurveyTitle, strItemTitle, strChoice1Text, strChoice2Text, strChoice3Text;
	public string strError;
};

public partial class GetJSONForSurveyItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");

		SurveyResults sr = new SurveyResults();
        sr.nItemOrder = 1 + (5 * (Convert.ToInt32(Session["SurveyID"]) - 1));
		sr.nItemID = Convert.ToInt32(Request["ItemID"]);
		sr.nSurveyID = Convert.ToInt32(Request["SurveyID"]);
		sr.strError = String.Empty;

		try
		{
			objConnection.Open();

			string strSQL = String.Format("select title from surveys where survey_id={0}", Request["SurveyID"]);
			SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
			SqlDataReader objReader = objCommand.ExecuteReader();
			if (objReader.Read())
			{
				sr.strSurveyTitle = Convert.ToString( objReader["title"] );
			}
			objReader.Close();
            
			int nItemID = sr.nItemID;

			strSQL = String.Format( "select * from survey_items_2 where survey_id={0} and items_id={1}", Request["SurveyID"], sr.nItemID);
			objCommand = new SqlCommand(strSQL, objConnection);
			objReader = objCommand.ExecuteReader();
			if (objReader.Read())
			{
				sr.strChoice1Text = Convert.ToString( objReader["choice1"] );
				sr.strChoice2Text = Convert.ToString( objReader["choice2"] );
				sr.strChoice3Text = Convert.ToString( objReader["choice3"] );
				sr.strItemTitle = Convert.ToString( objReader["text"] );
				nItemID = Convert.ToInt32(objReader["items_id"]);
				sr.nItemID = nItemID;
			}
			objReader.Close();

            strSQL = String.Format("select * from survey_results where survey_id={0} and results_id={1}", Convert.ToInt32(Request["SurveyID"]), sr.nItemID);
			objCommand = new SqlCommand(strSQL, objConnection);
			objReader = objCommand.ExecuteReader();
			if (objReader.Read())
			{
				sr.nChoice1 = Convert.ToInt32( objReader["choice1"] );
				sr.nChoice2 = Convert.ToInt32( objReader["choice2"] );
                sr.nChoice3 = Convert.ToInt32(objReader["choice3"] );
			}
			objReader.Close();
		}
		catch (Exception ex)
		{
			sr.strError = ex.Message.ToString();
		}
		finally
		{
			if (objConnection.State == ConnectionState.Open)
			{
				objConnection.Close();
			}
		}

		JavaScriptSerializer serializer = new JavaScriptSerializer();
		string strJson = serializer.Serialize(sr);

		Response.Clear();
		Response.ContentType = "application/json; charset=utf-8";
		Response.Write(strJson);
		Response.End();
	}
}