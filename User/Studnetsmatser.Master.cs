using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace college_mangement_system.User
{
    public partial class Usermaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("../students/Home.aspx");
        }
    }
}