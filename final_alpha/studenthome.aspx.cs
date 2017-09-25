using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_alpha
{
    public partial class studenthome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] != null)
            {
                Label1.Text += Session["student"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("exam.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["student"] = null;
            Response.Redirect("login.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentresult.aspx");
        }
    }
}