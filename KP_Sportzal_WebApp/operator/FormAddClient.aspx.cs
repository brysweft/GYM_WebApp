﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("/login.aspx");
            }
            //else if (Session["userRole"] != "Operator" && Session["userRole"] != "Administrator") {
           //     Response.Redirect("/Default.aspx");
            //}
        }

        protected void DetailsView2_DataBound(object sender, EventArgs e)
        {

        }
    }
}