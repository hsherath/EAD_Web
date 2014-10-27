using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAD_Web.Account;

namespace EAD_Web
{
    public partial class Add_User_New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginManager lm = new LoginManager();
            if (!lm.isLoggedIn(Response))
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        
    }
}