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
    public partial class createAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateAccountButton_Click(object sender, EventArgs e)
        {
            string strName = NewUsernameTextBox.Text.Trim().Replace("'", "");
            string strPassword = NewPasswordTextBox.Text.Trim().Replace("'", "");
            int nResult = -1;

            SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=40");
           
            try
		{
			objConnection.Open();

			string strSQL = String.Format("select * from users where uname='{0}'", strName);
			SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
			SqlDataReader objReader = objCommand.ExecuteReader();

			

			if (objReader.Read())
			{
				//lblResults.Text = String.Format("Success, ID={0}", objReader["ID"] );
				int nID = Convert.ToInt32(objReader["ID"]);
				nResult = 1;
                lblResults.Text = "Account Name Already Taken";
			}
			else
			{
				
                strSQL = String.Format("insert into users (uname,upwd) VALUES ('{0}','{1}')", strName, strPassword);
                nResult = 0;
			}
			objReader.Close();

			
			objCommand = new SqlCommand(strSQL, objConnection);
			objCommand.ExecuteNonQuery();

		}
		catch (Exception ex)
		{
			lblResults.Text = ex.Message.ToString();
		}
		finally
		{
			if (objConnection.State == ConnectionState.Open)
			{
				objConnection.Close();
			}
            if (nResult == 0)
            {
                Response.Redirect("login.aspx");
            }
		}



	}


        
    }
}