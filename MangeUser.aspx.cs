using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using EAD_Web.Code;

namespace EAD_Web
{
    public partial class MangeUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = DBManager.GetSQLConnection();

            string com = "Select * from users";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "login_name";
            DropDownList1.DataValueField = "userid";
            DropDownList1.DataBind();

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            SqlConnection con = DBManager.GetSQLConnection();
            SqlCommand cmd = new SqlCommand("select * from users where userid = '" + DropDownList1.SelectedValue + "'", con);

            try
            {
                con.Open();

                using (SqlDataReader read = cmd.ExecuteReader())
                {
                    while (read.Read())
                    {
                        lblID.Text = (read["userid"].ToString());
                        txtEfirstName.Text = (read["firstname"].ToString());
                        txtElastName.Text = (read["lastname"].ToString());
                        txtEemail.Text = (read["email"].ToString());
                        txtEaddress.Text = (read["primary_address"].ToString());
                        txtEuserName.Text = (read["login_name"].ToString());
                        txtEsalary.Text = (read["salary"].ToString());
                        txtEbanNo.Text = (read["bank_account_number"].ToString());



                    }
                }
            }
            finally
            {
                con.Close();
            }


        }

        protected void btnEdite_Click(object sender, EventArgs e)
        {
       
                SqlConnection con = DBManager.GetSQLConnection();
                con.Open();
                int ID =Int32.Parse(lblID.Text);
                string sqlQuery = " UPDATE [users] SET [firstname] = @FirstName, [lastname] = @LastName, [email] = @Email, [primary_address] = @Address, [login_name] = @UserName, [salary] = @Salary, [bank_account_number] = @Bank WHERE userid=@ID";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);

                cmd.Parameters.AddWithValue("@ID", ID);
                cmd.Parameters.AddWithValue("@FirstName", txtEfirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtElastName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEemail.Text);
                cmd.Parameters.AddWithValue("@Address", txtEaddress.Text);
                cmd.Parameters.AddWithValue("@UserName", txtEuserName.Text);
                cmd.Parameters.AddWithValue("@Salary", txtEsalary.Text);
                cmd.Parameters.AddWithValue("@Bank", txtEbanNo.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                txtEfirstName.Text = "";
                txtElastName.Text = "";
                txtEemail.Text = "";
                txtEaddress.Text = "";
                txtEuserName.Text = "";
                txtEsalary.Text = "";
                txtEbanNo.Text = "";

            
        }
    }
}