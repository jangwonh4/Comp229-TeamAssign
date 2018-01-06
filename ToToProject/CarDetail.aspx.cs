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
            if (Session["User"] == null)
            {
                Response.Redirect("~/Customer.aspx");
            }

            //Empty field should should be hidden
            if (String.IsNullOrEmpty(Request["Name"]))
            {
                Response.Write("Wrong request");
                Response.End();
            }
            else
            {
                DisplayData();

            }

        }

        private void DisplayData()
        {
            int CarID = Convert.ToInt32(Request.QueryString["Name"]);

            SqlCommand comm = new SqlCommand("SELECT * FROM Cars where CarID = @CarID", conn);
            comm.Parameters.Add("@CarID", System.Data.SqlDbType.Int);
            comm.Parameters["@CarID"].Value = CarID;
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            reader.Close();
            conn.Close();
        }


        // Rent a Car button
        protected void Rent_Click(object sender, EventArgs e)
        {
            int CarID = Convert.ToInt32(Request.QueryString["Name"]);

            SqlCommand comm = new SqlCommand("SELECT * FROM Cars where CarID = @CarID", conn);
            comm.Parameters.Add("@CarID", System.Data.SqlDbType.Int);
            comm.Parameters["@CarID"].Value = CarID;
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            reader.Close();
            conn.Close();


            String DateS = null;
            String DateE = null;
            String UserName = Convert.ToString(Session["User"]);
            SqlCommand RentACar = new SqlCommand(
                "INSERT INTO CarLine(DateStart, DateEnd, CustomerID,CarID) VALUES(@dateS, @dateE,(select CustomerID from dbo.Customer where Username=@UserName),@CarID)"
                , conn);


            //select date in the tables

            DateS = Convert.ToString(Calendar1.SelectedDate);
            DateE = Convert.ToString(Calendar2.SelectedDate);

            try
            {
                RentACar.Parameters.AddWithValue("@dateS", DateS);
                RentACar.Parameters.AddWithValue("@dateE", DateE);
                RentACar.Parameters.Add("@CarID", System.Data.SqlDbType.Int);
                RentACar.Parameters.Add("@UserName", System.Data.SqlDbType.VarChar);
                RentACar.Parameters["@CarID"].Value = CarID;
                RentACar.Parameters["@UserName"].Value = UserName;
                conn.Open();
                RentACar.ExecuteNonQuery();
                Response.Redirect(Request.RawUrl);
            }

            finally
            {

                conn.Close();
                Response.Redirect("~/MyBooking.aspx");

            }
        }
    }
}