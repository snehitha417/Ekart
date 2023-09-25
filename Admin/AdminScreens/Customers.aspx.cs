using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.AdminScreens
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                BindData();
            }
        }
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        private void BindData()
        {
           

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from tbl_UserRegistration";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    gridview.DataSource = dataTable;
                    gridview.DataBind();

                }
            }
        }


        private void activecustomers()
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "select * from tbl_UserRegistration";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    gridview1.DataSource = dataTable;
                    gridview1.DataBind();
                }
            }
        }


        protected void Active_Click(object sender, EventArgs e)
        {

            activecustomers();
            gridview.Visible = false;
            gridview1.Visible = true;
            labelbtn.Visible = false;
        }

        protected void Inactive_Click(object sender, EventArgs e)
        {

            activecustomers();
            gridview.Visible = false;
            gridview1.Visible = false;
            labelbtn.Visible = true;


        }
    }
}
