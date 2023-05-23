using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class tables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection1"].ConnectionString;
            string query = "INSERT INTO angajati.angajati (Name, Job, Salary) VALUES (@Valoare1, @Valoare2, @Valoare3)";

            

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@Valoare1", TextBox1.Text);
                command.Parameters.AddWithValue("@Valoare2", TextBox2.Text);
                command.Parameters.AddWithValue("@Valoare3", TextBox3.Text);
                connection.Open();

                command.ExecuteNonQuery();

                BindGridView();
            }
        }
        public void BindGridViewData()
        {
            {
                
                    try
                    {
                        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnection1"].ConnectionString);
                        con.Open();
                        string qry = "SELECT * FROM angajati.angajati";
                        

                    MySqlCommand cmd = new MySqlCommand(qry, con);
                        MySqlDataReader sdr = cmd.ExecuteReader();
                        GridView1.DataSource = sdr;
                        GridView1.DataBind();
                    }
                    catch (MySqlException ex)
                    {
                        throw ex;
                    }
                
            }
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string searchQuery = TextBox4.Text.ToLower();
            MySqlConnection connectionString = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnection1"].ConnectionString);
            
            string filteredDataQuery = "SELECT * FROM angajati.angajati WHERE name LIKE CONCAT('%', @SearchQuery, '%')";
            
            using (MySqlConnection connection = connectionString)
            {
                MySqlCommand command = new MySqlCommand(filteredDataQuery, connection);
                command.Parameters.AddWithValue("@SearchQuery", searchQuery);
                connection.Open();

                MySqlDataReader reader = command.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           
            GridView1.PageIndex = e.NewPageIndex;

            BindGridView();
        }
        private void BindGridView()
        {
            // Configure your MySQL connection string
            MySqlConnection connectionString = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnection1"].ConnectionString);

            // Define the page size and current page index
            int pageSize = 10;
            int pageIndex = GridView1.PageIndex;

            // Calculate the starting row index based on the page size and page index
            int startRowIndex = pageIndex * pageSize;

            // Retrieve the data from the database with the desired page size and starting row index
            string query = $"SELECT * FROM angajati.angajati LIMIT {startRowIndex}, {pageSize}";

            using (MySqlConnection connection = connectionString)
            {
                MySqlCommand command = new MySqlCommand(query, connection);
                connection.Open();

                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            int id;
            try
            {
                id = Convert.ToInt32(TextBox5.Text);
            }
            catch (MySqlException ex)
            {
                throw ex;
            }

            MySqlConnection connectionString = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnection1"].ConnectionString);
            string deleteQuery = "DELETE FROM angajati.angajati WHERE Id = @Id";
            

            using (MySqlConnection connection = connectionString)
            {
                MySqlCommand command = new MySqlCommand(deleteQuery, connection);
                command.Parameters.AddWithValue("@Id", id);
                connection.Open();
                command.ExecuteNonQuery();
            }
            BindGridView();
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            if (GridView1.PageIndex < (GridView1.PageCount))
            {
                GridView1.PageIndex++;
                BindGridView();
            }   
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            
            if (GridView1.PageIndex > 0)
            {
                GridView1.PageIndex --;
                BindGridView();
            }
            //test
        }
    }
}