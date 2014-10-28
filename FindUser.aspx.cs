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
               
                
                    string userName = Session["username"].ToString();

                    string query = "SELECT position from users WHERE login_name = '" + userName+ "'";

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
                        Response.Redirect("~/ErrorPage.aspx?reason=1");
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
                String query = "SELECT firstname,lastname,email,primary_address FROM users WHERE firstname like '%"+inputText+"%' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                SqlDataReader reader = cmd.ExecuteReader();
                int columnNo = reader.FieldCount;

                DataTable table = new DataTable();
                table.Columns.Add("First Name", typeof(string));
                table.Columns.Add("Last Name", typeof(string));
                table.Columns.Add("Email", typeof(string));
                table.Columns.Add("Address", typeof(string));


                if (reader.HasRows)
                {
                    do{
                        while (reader.Read())
                        {
                            DataRow row = table.NewRow();
                            columnNo = reader.FieldCount;
                            for (int i = 0; i < columnNo; i++)
                            {
                                row[i] = reader[i].ToString();
                            }

                            table.Rows.Add(row);
                        }
                    }while(reader.NextResult());

                    GridView1.Visible = true;
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                    con.Close();
                   

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

