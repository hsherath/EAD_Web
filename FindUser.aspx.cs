using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAD_Web.Code;
using System.Data.SqlClient;
using System.Data;
using EAD_Web.Account;
using EAD_Web.Code;
using System.Data;

namespace EAD_Web
{
    public partial class FindUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginManager lm = new LoginManager();

            if (!lm.isLoggedIn(Session))

            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else 
            {
                if (Request.Cookies["loginInfo"] != null)
                {
                    string userName = Request.Cookies["loginInfo"].Value;

                    string query = "SELECT position from users WHERE position = '" + userName+ "'";

                    SqlConnection con = DBManager.GetSQLConnection();
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query,con);
                    SqlDataReader reader = cmd.ExecuteReader();

                    String position = null;

                    while (reader.Read()) {
                        position = reader["position"].ToString();
                    }

                    con.Close();

                    if (!position.ToLower().Equals("manager")) 
                    {
                        Response.Redirect("~/ErrorPage.aspx");
                    }
                }
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string inputText = txtSearch.Text;

            if (!inputText.Equals(""))
            {
                SqlConnection con = DBManager.GetSQLConnection();
                con.Open();
                String query = "SELECT firstname,lastname,email,primary_address FROM users WHERE firstname='"+inputText+"' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con.Close();
                GridView1.Visible = true;
            }
            else {

                msgLabel.Text="Please Enter First Name";
            }
        }

      
    }
}