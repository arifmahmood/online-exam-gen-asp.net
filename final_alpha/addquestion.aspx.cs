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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

            }
            else
            {
                Response.Redirect("adminlogin.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                {
                    

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
                    conn.Open();
                    string insert = "insert into qbank(question_id,question) values (@q_id,@question)";
                    string insert1 = "insert into options(question_id,a,b,c,d,correct) values (@q_id1,@a,@b,@c,@d,@ca)";
                    string count="SELECT count(*) FROM qbank";



                    SqlCommand con = new SqlCommand(insert, conn);
                    SqlCommand con1 = new SqlCommand(insert1, conn);
                    SqlCommand com =new SqlCommand(count, conn);
                    int a = Convert.ToInt32(com.ExecuteScalar().ToString());
                    a += 1;


                    
                    con.Parameters.AddWithValue("@q_id",a);
                    con.Parameters.AddWithValue("@question", q.Text);
                    con1.Parameters.AddWithValue("@q_id1", a);
                    con1.Parameters.AddWithValue("@a", opa.Text);
                    con1.Parameters.AddWithValue("@b", opb.Text);
                    con1.Parameters.AddWithValue("@c", opc.Text);
                    con1.Parameters.AddWithValue("@d", opd.Text);
                    con1.Parameters.AddWithValue("@ca", ca.Text);
                    



                    
                    con.ExecuteNonQuery();
                    con1.ExecuteNonQuery();
                    

                    Response.Write(a);


                   // Response.Redirect("WebForm1.aspx");
                    conn.Close();
                    Response.Redirect("adminhome.aspx");

                }
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        
    }
}