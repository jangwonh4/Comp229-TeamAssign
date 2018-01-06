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
            if (Session["User"] == null)
            {
                Response.Redirect("~/Customer.aspx");
            }

        }
        //Add a car button ( in the database )
        protected void addbtn_Click(object sender, EventArgs e)
        {
            Complete.Visible = true;
            //add a car 
            String Name = null;
            String Year = null;
            String Price = null;
            String CarDesc = null;
            

            SqlCommand addCars = new SqlCommand("INSERT INTO Cars(CarModel, CarYear, Price, CarDesc, CarStatus) VALUES(@name, @year, @price, @CarDesc,'In Stock')", conn);

            Name = namebox.Text;
            Year = yearbox.Text;
            Price = pricebox.Text;
            CarDesc = descbox.Text;
            //Date = Convert.ToString(Calendar1.SelectedDate);

   
            addCars.Parameters.AddWithValue("@name", Name);
            addCars.Parameters.AddWithValue("@year", Year);
            addCars.Parameters.AddWithValue("@price", Price);
            addCars.Parameters.AddWithValue("@Cardesc", CarDesc);
            conn.Open();
            addCars.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);

          

            
            conn.Close();
            

      

        }

    }
}