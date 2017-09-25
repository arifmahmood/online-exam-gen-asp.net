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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from moderator where m_username='" + muname.Text + "' and m_password='"+mpass.Text+"'";
            SqlCommand con = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(con.ExecuteScalar().ToString());
            Response.Write(temp);
            if (temp == 1)
            {
                Session["admin"] = muname.Text;
                Response.Redirect("adminhome.aspx"); ;
            }
            
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mainhome.aspx");
        }
    }
}