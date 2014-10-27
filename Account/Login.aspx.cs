using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAD_Web.Code;
using System.Data.SqlClient;
using EAD_Web.Account;

namespace EAD_Web.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            LoginManager lm = new LoginManager();

            String username, password;

            username = txtUsername.Text;
            password = txtPassword.Text;

            if (lm.Login(username, password)) //If login is successfull, set the cookies
            {
                SqlConnection con=DBManager.GetSQLConnection();
                SqlCommand cmd = new SqlCommand("Select login_name from users where login_name='" + username +
                    "' OR email='" + username + "';", con);
                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        username = reader["login_name"].ToString();
                    }
                    con.Close();
                }
                catch (Exception ex)
                {

                    String aa = ex.Message;
                }
                Session.Add("username", username);
               
                if (!Request.Url.Equals(Request.UrlReferrer))//do not redirect to login page if refer is itself
                {
                    Response.Redirect(Request.UrlReferrer.AbsoluteUri);
                }
                else
                {
                    Response.RedirectPermanent("~/Default.aspx", true);
                }
            }
            else
            {
                txtPassword.Text = "";
                loginError.Text = "Invalid username or password";
            }

        }

       
    }
}
