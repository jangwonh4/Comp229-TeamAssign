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
    public partial class Update : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229TeamProjectConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            //add a car 
            String Name = null;
            String Year = null;
            String CarDesc = null;
            String Date = null;

            SqlCommand addCars = new SqlCommand("INSERT INTO Cars(CarModel, CarYear, NumberOfUsers, CarDesc,DatePublished) VALUES(@name, @year,0, @CarDesc, @date)", conn);//not finished yet

            Name = namebox.Text;
            Year = yearbox.Text;
            CarDesc = descbox.Text;
            Date = Convert.ToString(Calendar1.SelectedDate);

            try
            {
                //not finished yet
                addCars.Parameters.AddWithValue("@name", Name);
                addCars.Parameters.AddWithValue("@year", Year);
                addCars.Parameters.AddWithValue("@date", Date);
                addCars.Parameters.AddWithValue("@Cardesc", CarDesc);
                conn.Open();
                addCars.ExecuteNonQuery();
                Response.Redirect(Request.RawUrl);
            }

            finally
            {

                conn.Close();


            }


        }

    }
}