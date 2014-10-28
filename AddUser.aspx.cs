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
    public partial class Add_User_New : System.Web.UI.Page
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
                    Response.Redirect("~/ErrorPage.aspx?reason=1");
                }
            }
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            String login, fname, lname, email, address, password, position, salary,
                nic, acNo;

            login = txtUserName.Text;
            fname = txtFirstName.Text;
            lname = txtLastName.Text;
            email = txtEmail.Text;
            address = txtAddress.Text;
            password = txtPassword.Text;
            position = DropDownList1.Text;
            salary = txtSalary.Text;
            nic = txtNic.Text;
            acNo = txtBankAccount.Text;

           

            String sqlQuery = "INSERT INTO users VALUES('"+login
                +"','"+fname+"','"+lname+"','"+email+"','"+password
                +"','"+nic+"','"+salary+"','"+position+"','"+address+"','"+acNo+"');";

            SqlConnection connection = DBManager.GetSQLConnection();
            SqlCommand cmd = new SqlCommand(sqlQuery, connection);
            cmd.CommandType = System.Data.CommandType.Text;

            try
            {
                connection.Open();

                cmd.ExecuteNonQuery();


            }
            catch (Exception ex)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }
        }

     

       

        
    }
}