using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
            
           // Button1.Click += new EventHandler(this.GreetingBtn_Click);
        }
        protected void click1(object sender, EventArgs e) 
        {
            
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (String.IsNullOrEmpty(continueUrl))
            {
                continueUrl = "~/";
            }
            /**************Add role*/
            //Roles.AddUserToRole(RegisterUser.UserName,"Admin");
            Roles.AddUserToRole(RegisterUser.UserName, "User");

            /**************/
         /*   int number = 1;
            string name = RegisterUser.UserName;
            string pass = RegisterUser.Password;
            string mail = RegisterUser.MailDefinition.ToString();

            string sConnectionString = common.getConnectionString();
            SqlConnection objConn
                = new SqlConnection(sConnectionString);
            objConn.Open();
            SqlCommand insertRow = new SqlCommand();
            insertRow.CommandText = "INSERT INTO UserTable(id, name, password, mail, roleId)   VALUES(@param1, @param2, @param3, @param4, 2)";
            insertRow.Parameters.AddWithValue("@param1", number + 1);
            insertRow.Parameters.AddWithValue("@param2", name);
            insertRow.Parameters.AddWithValue("@param3", pass);
            insertRow.Parameters.AddWithValue("@param4", mail);
            insertRow.Connection = objConn;
            insertRow.ExecuteNonQuery();
            objConn.Close();*/
            /**************/

            Response.Redirect(continueUrl);
        }

    }
}
