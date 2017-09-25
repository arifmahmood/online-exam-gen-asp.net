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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from students where username='" + loginusername.Text + "'";
            SqlCommand con = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(con.ExecuteScalar().ToString());
            Response.Write(temp);
            if (temp !=0)
            {
                string checkpassword = "select password from students where username='" + loginusername.Text + "'";
                SqlCommand com = new SqlCommand(checkpassword, conn);
                string pass = com.ExecuteScalar().ToString().Replace(" ","");
                if (pass == loginpass.Text)
                {
                    Session["student"] = loginusername.Text;
                    Response.Redirect("studenthome.aspx");
                }
                else
                {
                    Response.Write("wrong password");
                }
            }
            else
            {
                Response.Write("user name doesn't exit");
            }

            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainhome.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}