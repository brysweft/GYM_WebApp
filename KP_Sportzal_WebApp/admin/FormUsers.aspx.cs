using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class WebForm15 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("/login.aspx");
            }

            if (Session["userRole"].ToString() == "Administrator")
            {
                return;
            }
            Response.Redirect("/login.aspx");
        }
    }
}