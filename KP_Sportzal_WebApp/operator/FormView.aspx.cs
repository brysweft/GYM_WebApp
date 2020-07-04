using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (TextBoxDate.Text == "")
            {
                DateTime myDateTime = DateTime.Now;
                int firstDayOfYear = (int)new DateTime(myDateTime.Year, 1, 1).DayOfWeek;
                int weekNumber = ((myDateTime.DayOfYear + firstDayOfYear) / 7) + 1;
                TextBoxDate.Text = DateTime.Now.Year.ToString() + "-W" + weekNumber.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var date_week = TextBoxDate.Text;
            Response.Redirect("PrintDoc1.aspx?date_week=" + date_week + "&roomNumber=" + DropDownList1.SelectedValue + "&roomName=" + DropDownList1.SelectedItem.Text);
        }

        protected void TextBoxDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}