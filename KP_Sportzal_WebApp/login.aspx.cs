using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KP_Sportzal_WebApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label4.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Label3.Text = "Вы вошли как " + Session["User"].ToString();
                Button1.Visible = false;

                Response.Redirect("Menu.aspx");
            }
            else {
                Button2.Visible = false;
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //вход
            OracleConnection connection = new OracleConnection(SqlDataSource1.ConnectionString);
            string user_name = TextBox1.Text;
            string passwd = TextBox2.Text;
            string Имя = "";
            string userId = "";
            string userRole = null;
            string сессия = "";


            //Создание запроса ID пользователя из таблицы Пользователи

            OracleCommand getUser = new OracleCommand(
                    "SELECT NAME, ID, ROLE FROM  SYSTEM.SPORTUSERS WHERE   (NAME = N'" + user_name + "' AND PASSWORD = N'" + passwd + "')", connection);

                connection.Open();

                OracleDataReader reader = getUser.ExecuteReader();


            while (reader.Read())
            {
                Имя = reader[0].ToString();
                userId = reader[1].ToString();
                userRole = reader[2].ToString();
            }
            reader.Close();


            if (Имя == "")
            {// вход неудачный
                Label1.Text = "Неверный логин или пароль!";
            }
            else 
            {

                //записывается сессия
                OracleCommand addSession = new OracleCommand("INSERT INTO SYSTEM.SPORTSESSIONS (USERID,ACTIV,DATELOGIN, ID, TYPE, IP) VALUES (:userId,:активность,:датавхода, null, :типподключения, :IP)", connection);

                addSession.Parameters.Add("@userId", userId);
                addSession.Parameters.Add("@активность", 1);
                addSession.Parameters.Add(":датавхода", DateTime.Now); 
                addSession.Parameters.Add(":типподключения", "web"); 
                addSession.Parameters.Add(":IP", HttpContext.Current.Request.UserHostAddress);

                addSession.ExecuteNonQuery();

                OracleCommand getSession = new OracleCommand(
                 "SELECT ID FROM  SYSTEM.SPORTSESSIONS WHERE   (USERID = N'" + userId + "')", connection);

                reader = getSession.ExecuteReader();


                while (reader.Read())
                {
                    сессия = reader[0].ToString();
                }
                reader.Close();
                if (сессия == "")
                {
                    Label1.Text = "Не удалось авторизоваться!";
                }
                else
                { // вход успешный
                    Session["user"] = user_name;
                    Session["userRole"] = userRole;
                    Response.Redirect("Menu.aspx?userId=" + сессия);
                }
            }
                connection.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("userRole");
            Response.Redirect("login.aspx");
        }
    }
}