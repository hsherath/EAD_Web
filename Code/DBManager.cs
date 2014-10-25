using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace EAD_Web.Code
{
    public class DBManager
    {

        public DBManager()
        {
        }

        public static SqlConnection GetSQLConnection()
        {

            String connectionString = WebConfigurationManager.ConnectionStrings["EAD_Web.Properties.Settings.DBConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            return connection;
        }
    }
}