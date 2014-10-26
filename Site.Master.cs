using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EAD_Web.Account;

namespace EAD_Web
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginManager lm = new LoginManager();

            if (lm.isLoggedIn(Session))
            {
                loginButton.Text = "Logout";
                
            }

            else
            {
                loginButton.Text = "Login";
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            LoginManager lm = new LoginManager();

            if (lm.isLoggedIn(Session) && loginButton.Text.Equals("Logout"))
            {
                lm.LogOut(Session);
                Response.RedirectPermanent("~/Account/Login.aspx", false);
            }

            else if(loginButton.Text.Equals("Login"))
            {
                Response.RedirectPermanent("~/Account/Login.aspx", false);
            }
        }
    }
}
