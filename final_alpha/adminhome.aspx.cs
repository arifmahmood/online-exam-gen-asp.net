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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Label1.Text += Session["admin"].ToString();
            }
            else
            {
                Response.Redirect("adminlogin.aspx");
            }
        }

        protected void setquestion_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("addquestion.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_info.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("marks.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("mainhome.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("editquestion.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("validatestudents.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            conn.Open();

            string validate = "update students set attain=0 ";
            SqlCommand vall = new SqlCommand(validate, conn);
            vall.ExecuteNonQuery();

            string del = "delete from answers";
            SqlCommand delall = new SqlCommand(del, conn);
            delall.ExecuteNonQuery();


            string deleteoption = "delete from options";
            SqlCommand deleteop = new SqlCommand(deleteoption, conn);
            deleteop.ExecuteNonQuery();

            string deleteallq = "delete from qbank";
            SqlCommand deleteq = new SqlCommand(deleteallq, conn);
            deleteq.ExecuteNonQuery();

            

            conn.Close();
        }
    }
}