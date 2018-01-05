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
    public partial class CarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Customer.aspx");
            }

            DisplayData(); 
        }

        private void DisplayData()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229TeamProjectConnectionString"].ToString());
            SqlCommand comm = new SqlCommand("SELECT * FROM Cars", conn);

            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            reader.Close();
            conn.Close();
        }


        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow row = GridView2.SelectedRow;
            string CAR = row.Cells[1].Text;
            Response.Redirect("CarDetail.aspx?Name=" + CAR);
        }

    }
}