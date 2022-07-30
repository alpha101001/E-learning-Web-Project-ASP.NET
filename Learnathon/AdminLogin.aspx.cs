using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Learnathon
{


    
    public partial class AdminLogin : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void submit_Click1(object sender, EventArgs e)
        {
        Response.Redirect("SPECIAL.aspx");
        }
    }
}