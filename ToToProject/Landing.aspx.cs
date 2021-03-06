﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ToToProject
{
    public partial class Landing : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229TeamProjectConnectionString"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            bool isAuthenticated = (HttpContext.Current.User != null) && HttpContext.Current.User.Identity.IsAuthenticated;
            SqlCommand comm = new SqlCommand("SELECT * FROM Cars WHERE CarStatus = 'In Stock'", conn);
            SqlCommand com = new SqlCommand("SELECT * FROM Customer", conn);

            
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();
            conn.Close();

            if (Session["User"] != null)
            {
                nologin.Visible = false;
                Username.Text = (string)(Session["User"]);
                login.Visible = true;
            }

            if (isAuthenticated==true)
            {
                nologin.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow row = GridView1.SelectedRow;
            string CAR = row.Cells[1].Text;
            Response.Redirect("CarDetail.aspx?Name=" + CAR);
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            /*Check user credentical and login*/

            SqlCommand checkUser = new SqlCommand("Select Username FROM CarRental.[dbo].Customer WHERE Username = @username", conn);
            SqlCommand checkPassword = new SqlCommand("Select Password FROM CarRental.[dbo].Customer WHERE Username = @username", conn);

            checkUser.Parameters.Add("@username", SqlDbType.NVarChar);
            checkUser.Parameters["@username"].Value = loginUsernameTB.Text;

            checkPassword.Parameters.Add("@username", SqlDbType.NVarChar);
            checkPassword.Parameters["@username"].Value = loginUsernameTB.Text;
            

            try
            {
                conn.Open();
                string username = checkUser.ExecuteScalar().ToString();

                if (username != null && String.Equals(username, loginUsernameTB.Text))
                {
                    string password = checkPassword.ExecuteScalar().ToString();

                    if (password != null && String.Equals(password, loginPasswordTB.Text))
                    {
                        FormsAuthentication.SetAuthCookie(username, false);
                        nologin.Visible = false;
                        Session["User"] = loginUsernameTB.Text;
                        Response.Redirect("~/Landing.aspx");                     

                    }
                    
                }
                else
                {
                    WarningLblLogin.Text = "No username was found";
                }

            }
            catch (Exception exception)
            {
                WarningLblLogin.Text = exception.Message.ToString();
            }
            finally
            {
                conn.Close();
            }


        }
    }
}