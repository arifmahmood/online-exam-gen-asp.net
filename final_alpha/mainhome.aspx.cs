using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_alpha
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["student"]!=null)
            {
                Response.Redirect("studenthome.aspx");
            }
            if (Session["admin"] != null)
            {
                Response.Redirect("adminhome.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}