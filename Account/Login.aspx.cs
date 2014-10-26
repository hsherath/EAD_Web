﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EAD_Web.Code;
using System.Data.SqlClient;
using EAD_Web.Account;

namespace EAD_Web.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            LoginManager lm = new LoginManager();

            String username, password;

            username = txtUsername.Text;
            password = txtPassword.Text;

            if (lm.Login(username, password)) //If login is successfull, set the cookies
            {
                HttpCookie loginCookie = new HttpCookie("loginInfo");
                loginCookie.Values["username"] = username;
                Response.SetCookie(loginCookie);
            }

        }

       
    }
}
