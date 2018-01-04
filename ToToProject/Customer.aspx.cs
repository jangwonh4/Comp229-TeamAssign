using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

namespace ToToProject
{
    public partial class Customer : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229TeamProjectConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Register_Click(object sender, EventArgs e)
        {
           
            if (Page.IsValid)

            {
                
                SqlCommand CreateUser = new SqlCommand("INSERT INTO Customer(Lname,FName,DateCreated,Username,Email, Password) VALUES(@lastName ,@firstName,GETDATE(),@username,@email, @pwd)", conn);

                String lastName = lastNameTB.Text;
                String firstName = firstNameTB.Text;
                String username = regUsernameTB.Text;
                String email = EmailTB.Text;
                String pass = regPasswordTB.Text;

                try
                {
                    CreateUser.Parameters.AddWithValue("@lastName", lastName);
                    CreateUser.Parameters.AddWithValue("@firstName", firstName);
                    CreateUser.Parameters.AddWithValue("@username", username);
                    CreateUser.Parameters.AddWithValue("@email", email);
                    CreateUser.Parameters.AddWithValue("@pwd", pass);

                    conn.Open();
                    CreateUser.ExecuteNonQuery();
                    WarningLbl.Text = DateTime.Now.ToString("Type This way ( yyyy-MM-dd )");
                }
                
                catch (Exception exception)
                {
                    WarningLbl.Text = exception.Message.ToString();
                }
                finally
                {
                    
                    conn.Close();
                }

            }
        
        
        }
    }
}