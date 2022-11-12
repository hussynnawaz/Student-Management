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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchByTagButton_Click(object sender, EventArgs e)
        {
            String strConn = @"Data Source=DESKTOP-QGAALUN\SQLEXPRESS;Initial Catalog=clg;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * FROM Course_Tbl WHERE cid=@SearchByTagTB", conn);

            try
            {

                SqlParameter search = new SqlParameter();
                search.ParameterName = "@SearchByTagTB";
                search.Value = SearchByTagTB.Text.Trim();

                cmd.Parameters.Add(search);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                gvPatients.DataSource = dt;
                gvPatients.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                //Connection Object Closed
                conn.Close();
            }
        }
    }
    
}