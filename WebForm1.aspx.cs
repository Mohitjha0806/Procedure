using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Procedure
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string email = txt_Email.Text;
            string password = txt_Password.Text;
            string firstName = txt_Fname.Text;
            string lastName = txt_Lname.Text;
            string number = txt_Number.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("dbo.employeeData", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@EMAIL", email));
                    cmd.Parameters.Add(new SqlParameter("@PASSWORD", password));
                    cmd.Parameters.Add(new SqlParameter("@FIRST_NAME", firstName));
                    cmd.Parameters.Add(new SqlParameter("@LAST_NAME", lastName));
                    cmd.Parameters.Add(new SqlParameter("@NUMBER", number));

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("Data inserted successfully.");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Error: " + ex.Message);
                    }
                }
            }

        }
    }
}