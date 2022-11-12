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
    public partial class WebForm4 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QGAALUN\SQLEXPRESS;Initial Catalog=clg;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int id, id1 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            con.Open();

            if (Panel1.Visible = true)
            {
                string str = "select max(sid) as sid from Students_Tbl"; ;
                da = new SqlDataAdapter(str, con);
                da.Fill(ds);

                id = 1;

                id = int.Parse(ds.Tables[0].Rows[0]["sid"].ToString());

                if (id > 0)
                {
                    id++;
                }
                else
                {
                    id = 1;
                }

                Label1.Text = id.ToString();
            }
            else if(Panel2.Visible=true )
            {
                string str1 = "select max(uid) as uid from User_Tbl";
                da = new SqlDataAdapter(str1, con);
                da.Fill(ds);

                id1 = 1;

                id1 = int.Parse(ds.Tables[0].Rows[0]["uid"].ToString());

                if (id1 > 0)
                {
                    id1++;
                }
                else
                {
                    id1 = 1;
                }

                Label2.Text = id1.ToString();
            }
            else
            {
                id = 1;
                id1 = 1;
            }
          


          
        }

        protected void Button_students_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                string str2 = "insert into Students_Tbl values("+Label1.Text+",'"+TextBox_firstname.Text+"','"+TextBox_lastname.Text+"','"+RadioButtonList1.SelectedValue.ToString()+"',"+TextBox_mobile.Text+",'"+TextBox_email.Text+"','"+TextBox_uname.Text+"','"+TextBox_pas.Text+"','"+TextBox_dates.Text+"','"+DropDownList_course.SelectedValue.ToString()+"','"+TextBox_dates.Text+"','"+TextBox_year.Text+"')";
                cmd = new SqlCommand(str2, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Successfully')</script>");
                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Please check the dedtails')</script>");
            }
        }

        protected void Button_user_submit_Click(object sender, EventArgs e)
        {
            try
            {
                string str2 = "insert into User_Tbl values(" + Label2.Text + ",'" +TextBox_fnm.Text + "','" + TextBox_lnm.Text + "','" + RadioButtonList2.SelectedValue.ToString() + "'," + TextBox3_mob.Text + ",'" + TextBox_eml.Text + "','" + TextBox_unm_othr.Text + "','" + TextBox_pass_othr.Text + "')";
                cmd = new SqlCommand(str2, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Successfully')</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Please check the dedtails')</script>");
            }
        }

        protected void LinkButton_signin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

       
    }
}