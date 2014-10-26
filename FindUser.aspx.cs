using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAD_Web.Code;
using System.Data.SqlClient;

namespace EAD_Web
{
    public partial class FindUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string inputText = txtSearch.Text;

            if (!inputText.Equals(""))
            {
                SqlConnection con = DBManager.GetSQLConnection();
                String query = "SELECT firstname,lastname,email,primary_address FROM EAD_DEMO WHERE firstname='"+inputText+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
            }
            else { 
                //show error message
            }
        }

      
    }
}