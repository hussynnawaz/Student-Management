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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP - QGAALUN\SQLEXPRESS; Initial Catalog = clg; Integrated Security = True");
        SqlCommand cmd;
        SqlDataAdapter daa = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {
          if(DropDownList1_login.SelectedValue.ToString()=="Students")
            {
                try
                {
                    string str = "select * from Students_Tbl where username='"+txt_usernam_login.Text+"' and pass='"+txt_pass_login.Text+"'";
                    daa = new SqlDataAdapter(str, con);
                    daa.Fill(dt);

                    if(dt.Rows.Count > 0)
                    {
                        Response.Redirect ("../User/HomeStudents.aspx");
                    }
                }
                catch(Exception ex)
                {

                }
            }
          else if(DropDownList1_login.SelectedValue.ToString()=="User")
            {
                try
                {
                    string str = "select * from User_Tbl where username='" + txt_usernam_login.Text + "' and pass='" + txt_pass_login.Text + "'";
                    daa = new SqlDataAdapter(str, con);
                    daa.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        Response.Redirect("../User/Usersdata.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }
          else
            {

            }
        }
    }
}