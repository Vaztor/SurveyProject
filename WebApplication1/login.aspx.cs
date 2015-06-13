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
        

            string strName = UsernameTextBox.Text.Trim().Replace("'", "");
        string strPassword = PasswordTextBox.Text.Trim().Replace("'", ""); 
        int nResult = 0;

        SqlConnection objConnection = new SqlConnection("Data Source=184.168.47.17;Initial Catalog=SurveyWebsite_;user id=RickSurveyGroup;password=RickCOP4331;Connection Timeout=15");
        
		try
		{
			objConnection.Open();

			string strSQL = String.Format("select * from users where uname='{0}' and upwd='{1}'", strName, strPassword);
			SqlCommand objCommand = new SqlCommand(strSQL, objConnection);
			SqlDataReader objReader = objCommand.ExecuteReader();

			

			if (objReader.Read())
			{
				lblResults.Text = String.Format("Success, ID={0}", objReader["ID"] );
				int nID = Convert.ToInt32(objReader["ID"]);

				nResult = 1;
			}
			else
			{
				lblResults.Text = "Login Failed";
			}
			objReader.Close();

			strSQL = String.Format("insert into logins (uname,upwd,dt,result) VALUES ('{0}','{1}', GetDate(), {2})", strName, strPassword, nResult);
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
            if (nResult == 1)
            {
                Response.Redirect("index.aspx");
            }
		}



	}
        }
}
