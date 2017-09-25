using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace final_alpha
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                conn.Open();
                
                conn.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                {
                    


                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                    conn.Open();
                    string checkuser = "select count(*) from students where username='" + uname.Text + "'";
                    SqlCommand commm = new SqlCommand(checkuser, conn);
                    int temp = Convert.ToInt32(commm.ExecuteScalar().ToString());

                    if (temp != 0)
                    {
                        Response.Write("user already exit");
                    }

                    else
                    {
                        string insert = "insert into students(student_id,username,first_name,last_name,email,institute,country,city,mobile_no,password,attain) values (@id,@uname,@fn,@ln,@email,@institute,@country,@city,@mobile_no,@password,1)";

                        string count = "select count(*) from students";

                        SqlCommand com = new SqlCommand(count, conn);
                        SqlCommand con = new SqlCommand(insert, conn);

                        int a = Convert.ToInt32(com.ExecuteScalar().ToString());
                        a += 1;

                        con.Parameters.AddWithValue("@id", a);
                        con.Parameters.AddWithValue("@uname", uname.Text);
                        con.Parameters.AddWithValue("@fn", fname.Text);
                        con.Parameters.AddWithValue("@ln", lname.Text);
                        con.Parameters.AddWithValue("@email", email.Text);
                        con.Parameters.AddWithValue("@institute", institute.Text);
                        con.Parameters.AddWithValue("@country", country.Text);
                        con.Parameters.AddWithValue("@city", city.Text);
                        con.Parameters.AddWithValue("@mobile_no", mob.Text);
                        con.Parameters.AddWithValue("@password", pass.Text);
                        con.ExecuteNonQuery();
                        Response.Write("registration is successful");
                        Response.Redirect("login.aspx");
                    }
                    conn.Close();

                }
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
           
        }

       
        
    }
}