using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                LinkButton2.Visible = true;
            }
            else
            {
                LinkButton2.Visible = false;
            }
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("userRole");
            Response.Redirect("/login.aspx");
        }
    }
}