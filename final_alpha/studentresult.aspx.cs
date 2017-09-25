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
    public partial class studentresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] == null)
            {
                Response.Redirect("login.aspx");
            }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            conn.Open();
            string getid = "select student_id from students where username='" + Session["student"] + "'";
            SqlCommand geti = new SqlCommand(getid, conn);
            int stid = Convert.ToInt32(geti.ExecuteScalar().ToString());
            string getresult = "select sum(marks) from answers where student_id=" + stid + "";
            SqlCommand getres = new SqlCommand(getresult, conn);
            string marks = getres.ExecuteScalar().ToString();

            Label1.Text += marks;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("studenthome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}