using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class _Default : Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //string сессия = "";
        string имя = "";
        //string userId = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //OracleConnection connection = new OracleConnection();
            //connection.ConnectionString = connectionstring;
            //connection.Open();

            //if (!IsPostBack)
            //{
            //LabelUserId.Text = Request.QueryString["userId"];
            //сессия = Request.QueryString["userId"];

            // OracleCommand getSession = new OracleCommand(
            //  "SELECT SYSTEM.SPORTUSERS.NAME FROM  SYSTEM.SPORTSESSIONS, SYSTEM.SPORTUSERS WHERE   (SYSTEM.SPORTSESSIONS.ID = :сессия AND SYSTEM.SPORTUSERS.ID = SYSTEM.SPORTSESSIONS.USERID)", connection);

            //getSession.Parameters.Add(":сессия", Request.QueryString["userId"]);
            //OracleDataReader reader = getSession.ExecuteReader();

            //while (reader.Read())
            //{
            //     имя = reader[0].ToString();
            //}
            //reader.Close();
            //if (имя == "")
            //{
            //    LabelUserId.Text = "Не удалось авторизоваться!";
            // }

            if (Session["user"] != null)
            {
                имя = Session["user"].ToString();
            }
                Label1.Text = "Добро пожаловать! " + имя;

                //connection.Close();
            //}
        }
    }
}