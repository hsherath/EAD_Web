using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EAD_Web
{
    public partial class ErrorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String reason = Request.QueryString["reason"];

            if (reason != null && reason.Equals("1"))
            {

                Label1.Text = "You do not have the permision to perform this action";
            }
        }
    }
}