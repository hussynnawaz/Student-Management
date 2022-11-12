using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace college_mangement_system.students
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QGAALUN\SQLEXPRESS;Initial Catalog=clg;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                string strr = "insert into Feedbacl_Tbl values('"+txt_name_contact.Text+"','"+txt_email_contact.Text+"',"+txt_phone_contact.Text+",'"+txt_subject_conatct.Text+"','"+txt_msg_contact.Text+"')";
                cmd = new SqlCommand(strr, con);
                cmd.ExecuteNonQuery();

                Response.Write("<scirpt>alert('Feedback Send Successfully')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Please fill All field')</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}