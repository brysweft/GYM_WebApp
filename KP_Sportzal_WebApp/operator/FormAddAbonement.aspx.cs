using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("/login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //выбор клиента
            ChoseControl_Klient();
        }

        protected void ChoseControl_Klient()
        {
            //выбор клиента
            GridView2.Visible = !GridView2.Visible;
            var Button1 = DetailsView2.FindControl("Button1") as Button;
            if (GridView2.Visible)
            {
                Button1.Text = "Отмена выбора";
            }
            else
            {
                Button1.Text = "Выбор";
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //выбор клиента
            var DropDownList1 = DetailsView2.FindControl("DropDownList1") as DropDownList;

            DropDownList1.SelectedValue = GridView2.SelectedDataKey.Value.ToString();

            var Button1 = DetailsView2.FindControl("Button1") as Button;
            Button1.Text = "Выбор";

            GridView2.Visible = !GridView2.Visible;
        }

        protected void UpdateStatusControl_after_Cancel()
        {
            var Button1 = DetailsView2.FindControl("Button1") as Button;
            Button1.Text = "Выбор";
            GridView2.Visible = false;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //выбор клиента
            ChoseControl_Klient();
        }
    }
}