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
    public partial class MyBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayData();
        }

        private void DisplayData()
        {
            String UserName = Convert.ToString(Session["User"]);
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229TeamProjectConnectionString"].ToString());
            SqlCommand comm = new SqlCommand("select a.DateStart, a.DateEnd, b.CarModel  from dbo.CarLine a join dbo.Cars b on b.CarID = a.CarID where a.CustomerID = (select CustomerID from dbo.Customer where Username = @UserName)", conn);

            conn.Open();
            comm.Parameters.Add("@UserName", System.Data.SqlDbType.VarChar);
            comm.Parameters["@UserName"].Value = UserName;
            SqlDataReader reader = comm.ExecuteReader();
            BookingList.DataSource = reader;
            BookingList.DataBind();
            reader.Close();
            conn.Close();
        }
    }
}