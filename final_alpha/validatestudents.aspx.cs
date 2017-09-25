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
    public partial class validatestudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            conn.Open();

            string validate = "update students set attain=0 ";
            SqlCommand vall = new SqlCommand(validate, conn);
            vall.ExecuteNonQuery();

            string del = "delete from answers";
            SqlCommand delall = new SqlCommand(del, conn);
            delall.ExecuteNonQuery();



            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhome.aspx");
        }
    }
}