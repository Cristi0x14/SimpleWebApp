using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool IsValidUser(string username, string password)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString);
                con.Open();
                string qry = "SELECT username FROM users.users where username='" + username + "' and password='" + password + "'";
                MySqlCommand cmd = new MySqlCommand(qry, con);
                MySqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    con.Close();

                    return true;
                }
                else
                {
                    con.Close();
                    return false;
                }
            }
            catch (MySqlException ex)
            {
                throw ex;
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;

            if (IsValidUser(username, password))
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Label3.Text = "Invalid username or password.";
            }

        }
    }
}