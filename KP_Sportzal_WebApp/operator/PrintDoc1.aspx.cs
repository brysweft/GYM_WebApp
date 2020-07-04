using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class PrintDoc1 : System.Web.UI.Page
    {

        string date_week;
        string roomNumber;
        string roomName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.AllKeys.Contains("date_week") && Request.QueryString.AllKeys.Contains("roomNumber") && Request.QueryString.AllKeys.Contains("roomName"))
            {
                date_week = Request.QueryString["date_week"];
                roomNumber = Request.QueryString["roomNumber"];
                roomName = Request.QueryString["roomName"];
            }
            else
            {
                Response.Redirect("FormView.aspx?error_parametrs=true");
            }
            int weekNumber = int.Parse(date_week.Substring(6));
            int currentYear = int.Parse(date_week.Substring(0, 4));
            var startDate = new DateTime(currentYear, 1, 4);
            int offsetToFirstMonday = startDate.DayOfWeek == DayOfWeek.Sunday ? 6 : (int)startDate.DayOfWeek - 1;
            int offsetToDemandedMonday = -offsetToFirstMonday + 7 * (weekNumber - 1);
            var mondayOfTheGivenWeek = startDate + new TimeSpan(offsetToDemandedMonday, 0, 0, 0);

            //получение данных
            OracleConnection connection = new OracleConnection(SqlDataSource1.ConnectionString);

            var TextComandSQL = "SELECT TO_CHAR(TBEGIN,  'd') as DAY_WEEK, TBEGIN, TEND, TEXT FROM \"SYSTEM\".\"SPORT_doc_timetable\"  WHERE (ROOM_ID = " + roomNumber + " AND TBEGIN >= TO_DATE('" + mondayOfTheGivenWeek.ToString("d") + "') AND TEND < (TO_DATE('" + mondayOfTheGivenWeek.ToString("d") + "') + 7) ) ORDER BY TBEGIN";
            TextComandSQL = TextComandSQL.Replace("/", "");
            OracleCommand getUser = new OracleCommand(
           TextComandSQL, connection);

            connection.Open();

            OracleDataReader reader = getUser.ExecuteReader();

            //печать документа
            Response.Write("<p>");
            Response.Write("Расписание занятий");
            Response.Write("</p>");

            Response.Write("<p>");
            Response.Write("Зал № " + roomNumber + " - " + roomName + " Неделя № "  + weekNumber + " " + currentYear.ToString());
            Response.Write("</p>");

            var last_day_week = "";
            string str = "";
            while (reader.Read())
            {
                if (last_day_week != reader[0].ToString()) {
                    Response.Write("<p>");
                    str = DateTime.Parse(reader[1].ToString()).ToString("dddd");
                    str = str.Substring(0, 1).ToUpper() + (str.Length > 1 ? str.Substring(1) : "");
                    Response.Write(str);

                    Response.Write("</p>");
                }
                Response.Write("<p>");
                Response.Write(reader[3].ToString());
                Response.Write("</p>");

                last_day_week = reader[0].ToString();
            }
            reader.Close();
        }
    }
}