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
    public partial class editquestion : System.Web.UI.Page
    {
        static int i;
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
            i= Convert.ToInt32(quid.Text);
            string findq = "select count(*) from qbank where question_id=" + i + "";
            SqlCommand findqu = new SqlCommand(findq, conn);
            int j = Convert.ToInt32(findqu.ExecuteScalar().ToString());
            if (j == 0)
            {
                Response.Write("id doesn't exits");
                qbox.Text = "";
                abox.Text = "";
                bbox.Text = "";
                cbox.Text = "";
                dbox.Text = "";
                correctbox.Text = "";

            }
            else
            {
                string getq = "select question from qbank where question_id=" + i + "";
                SqlCommand getqu = new SqlCommand(getq, conn);
                string ques = getqu.ExecuteScalar().ToString();
                qbox.Text = ques;

                string geta = "select a from options where question_id=" + i + "";
                SqlCommand getao = new SqlCommand(geta, conn);
                string aop = getao.ExecuteScalar().ToString();
                abox.Text = aop;

                string getb = "select b from options where question_id=" + i + "";
                SqlCommand getbo = new SqlCommand(getb, conn);
                string bop = getbo.ExecuteScalar().ToString();
                bbox.Text = bop;

                string getc = "select c from options where question_id=" + i + "";
                SqlCommand getco = new SqlCommand(getc, conn);
                string cop = getco.ExecuteScalar().ToString();
                cbox.Text = cop;

                string getd = "select d from options where question_id=" + i + "";
                SqlCommand getdo = new SqlCommand(getd, conn);
                string dop = getdo.ExecuteScalar().ToString();
                dbox.Text = dop;

                string getca = "select correct from options where question_id=" + i + "";
                SqlCommand getcao = new SqlCommand(getca, conn);
                string caop = getcao.ExecuteScalar().ToString();
                correctbox.Text = caop;

                

            }
            conn.Close();
        }

   

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["databaseConnectionString"].ConnectionString);
            conn.Open();

            string updateqbank = "update qbank set question='" + qbox.Text + "' where question_id=" + i + "";
            SqlCommand updateqb = new SqlCommand(updateqbank, conn);
            updateqb.ExecuteNonQuery();

            string updateoptions = "update options set a='" + abox.Text + "', b='" + bbox.Text + "',c='" + cbox.Text + "',d='" + dbox.Text + "', correct='"+correctbox.Text+"' where question_id=" + i + "";
            SqlCommand updateop = new SqlCommand(updateoptions, conn);
            updateop.ExecuteNonQuery();

            Response.Write("question updated");
            qbox.Text = "";
            abox.Text = "";
            bbox.Text = "";
            cbox.Text = "";
            dbox.Text = "";
            correctbox.Text = "";
            quid.Text = "";


            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhome.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("adminlogin.aspx");
        }

        protected void abox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void bbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void correctbox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}