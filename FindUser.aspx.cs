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
                if (!msgLabel.Text.Equals(""))
                    msgLabel.Text = "";

                SqlConnection con = DBManager.GetSQLConnection();
                con.Open();
                String query = "SELECT firstname,lastname,email,primary_address FROM users WHERE firstname='"+inputText+"' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                SqlDataReader reader = cmd.ExecuteReader();
                int columnNo = reader.FieldCount;

                DataTable table = new DataTable();

                for (int k = 0; k < columnNo; k++) 
                {
                    switch (k) 
                    {
                        case 0: table.Columns.Add("First Name", typeof(string));
                                break;

                        case 1: table.Columns.Add("Last Name", typeof(string));
                                break;

                        case 2: table.Columns.Add("Email", typeof(string));
                                break;

                        case 3: table.Columns.Add("Address", typeof(string));
                                break;

                        default: table.Columns.Add("Column " + k, typeof(string));
                                 break;
                    }
                }

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        DataRow row = table.NewRow();

                        for (int i = 0; i < columnNo; i++)
                        {
                            row[i] = reader.GetString(i);
                        }

                        table.Rows.Add(row);

                    }

                    GridView1.DataSource = table;
                    GridView1.DataBind();
                    con.Close();
                    GridView1.Visible = true;

                }
                else 
                {
                    msgLabel.Text = "Could not find the details of the entered name.";
                    GridView1.Visible = false;
                } 
            }
            else {

                msgLabel.Text="Please Enter First Name";
                GridView1.Visible = false;
            }
        }

      
    }
}