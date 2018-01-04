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

        protected void addbtn_Click(object sender, EventArgs e)
        {
            //add a car 
            String Name = null;
            String Description = null;
            String Date = null;
           
            SqlCommand addgame = new SqlCommand("INSERT INTO Cars(CarModel, CarYear, CarDesc,DatePublished) VALUES(@name, @desc, @date)", conn);//not finished yet

            Name = namebx.Text;
            Description = descbx.Text;
            Date = Convert.ToString(Calendar1.SelectedDate);
            try
            {
                //not finished yet
                addgame.Parameters.AddWithValue("@name", Name);
                addgame.Parameters.AddWithValue("@desc", Description);
                addgame.Parameters.AddWithValue("@date", Date);
                conn.Open();
                addgame.ExecuteNonQuery();
                Response.Redirect(Request.RawUrl);
            }

            finally
            {

                conn.Close();


            }
            //    }
            // }

        }

        protected void showdivbtn_Click(object sender, EventArgs e)
        {
            //turn on div to let any user add a game
            editdiv.Visible = true;
            editbtndiv.Visible = false;
        }
    }
}