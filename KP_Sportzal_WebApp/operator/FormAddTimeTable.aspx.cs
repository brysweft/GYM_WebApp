using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("/login.aspx");
            }
        }

        protected void UpdateStatusControl_after_Cancel()
        {
            var Button1 = DetailsView2.FindControl("Button1") as Button;
            Button1.Text = "Выбор";
            GridView2.Visible = false;

            var Button2 = DetailsView2.FindControl("Button2") as Button;
            Button2.Text = "Выбор";
            GridView3.Visible = false;

            var Button3 = DetailsView2.FindControl("Button3") as Button;
            Button3.Text = "Выбор";
            GridView4.Visible = false;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //выбор тренера
            var DropDownList3 = DetailsView2.FindControl("DropDownList3") as DropDownList;

            DropDownList3.SelectedValue = GridView2.SelectedDataKey.Value.ToString();

            var Button1 = DetailsView2.FindControl("Button1") as Button;
            Button1.Text = "Выбор";

            GridView2.Visible = !GridView2.Visible;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //выбор секции
            var DropDownList1 = DetailsView2.FindControl("DropDownList1") as DropDownList;

            DropDownList1.SelectedValue = GridView3.SelectedDataKey.Value.ToString();

            var Button2 = DetailsView2.FindControl("Button2") as Button;
            Button2.Text = "Выбор";

            GridView3.Visible = !GridView3.Visible;
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            //выбор помещения
            var DropDownList2 = DetailsView2.FindControl("DropDownList2") as DropDownList;

            DropDownList2.SelectedValue = GridView4.SelectedDataKey.Value.ToString();

            var Button3 = DetailsView2.FindControl("Button3") as Button;
            Button3.Text = "Выбор";

            GridView4.Visible = !GridView4.Visible;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //выбор тренера
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            UpdateStatusControl_after_Cancel();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //выбор секции
            GridView3.Visible = !GridView3.Visible;
            var Button2 = DetailsView2.FindControl("Button2") as Button;
            if (GridView3.Visible)
            {
                Button2.Text = "Отмена выбора";
            }
            else
            {
                Button2.Text = "Выбор";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //выбор помещения
            GridView4.Visible = !GridView4.Visible;
            var Button3 = DetailsView2.FindControl("Button3") as Button;
            if (GridView4.Visible)
            {
                Button3.Text = "Отмена выбора";
            }
            else
            {
                Button3.Text = "Выбор";
            }
        }
    }
}