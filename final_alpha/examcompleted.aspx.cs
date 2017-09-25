using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_alpha
{
    public partial class examcompleted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("studenthome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["student"] = null;
            Response.Redirect("login.aspx");
        }
    }
}