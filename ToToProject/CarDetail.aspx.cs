using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace ToToProject
{
    public partial class CarDetail : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229TeamProjectConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayData();
        }

        private void DisplayData()
        {
            
            SqlCommand comm = new SqlCommand("SELECT * FROM Cars", conn);

            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            reader.Close();
            conn.Close();
        }

        
        
    }
}