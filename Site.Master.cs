using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EAD_Web.Account;
using EAD_Web.Code;
using System.Data.SqlClient;

namespace EAD_Web
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        LoginManager lm = new LoginManager();
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (lm.isLoggedIn(Session))
            {
                LinkButton1.Text = "Logout";
                
                Label1.Visible = true;
                Label1.Text = "Logged in as " + Session["username"].ToString();

                //remove management menu items if the user is not a manager

                string userName = Session["username"].ToString();

                string query = "SELECT position from users WHERE login_name = '" + userName + "'";

                SqlConnection con = DBManager.GetSQLConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                String position = null;

                while (reader.Read())
                {
                    position = reader["position"].ToString();
                }

                con.Close();


                if (!position.ToLower().Equals("manager"))
                {
                    Menu1.Items[1].Enabled = false;
                    Menu1.Items[1].Selectable = false;
                    Menu1.Items[3].Enabled = false;
                    Menu1.Items[3].Selectable = false;
                }
               

                
            }

            else
            {
                Label1.Visible = false;
                LinkButton1.Text = "Login";
                Menu1.Items[1].Enabled = false;
                Menu1.Items[1].Selectable = false;
                Menu1.Items[3].Enabled = false;
                Menu1.Items[3].Selectable = false;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (lm.isLoggedIn(Session) && LinkButton1.Text.Equals("Logout"))
            {
                lm.LogOut(Session);
                
                LinkButton1.Text = "Login";
                Label1.Visible = false;
                Response.RedirectPermanent("~/Account/Login.aspx",true);
            }
            else if(lm.isLoggedIn(Session) &&LinkButton1.Text.ToLower().Equals("login"))
            {
                LinkButton1.Text = "Logout";
                
            }
        }

       
    }
}
