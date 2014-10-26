using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using EAD_Web.Code;

namespace EAD_Web.Account
{
    public class LoginManager
    {
        public bool isLoggedIn(HttpCookie loginCookie)
        {

            bool loggedIn = false;

            if (loginCookie != null)
            {
                if (loginCookie["username"] != null)
                {
                    loggedIn = true;
                }
                else
                {
                    loggedIn = false;
                }
            }
            else
            {
                loggedIn = false;
                
            }
            
            return loggedIn;
        }

       public bool Login(String username, String password)
        {
            int userid = -1;
            SqlConnection dbConnection = DBManager.GetSQLConnection();
            bool loginDone = false;

            String sqlString = "SELECT userid,login_name,email from USERS WHERE (login_name='" +
                                username + "' OR email='" + username + "') AND pwd='" + password + "'";

            try
            {
                SqlCommand cmd = new SqlCommand(sqlString, dbConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                dbConnection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    userid = Convert.ToInt32(reader["userid"].ToString());
                    if (userid >= 0)
                    {
                        loginDone = true;
                    }
                    else
                    {
                        loginDone = false;
                    }
                }
                else
                {
                    loginDone = false;
                }
            }
            catch (Exception ex)
            {

                throw;
            }

            return loginDone;
        }

       public void LogOut(HttpResponse response)
       {
           response.Cookies.Clear();
       }
    }
}