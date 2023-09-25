using Admin.Models;
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
    public partial class Admin : System.Web.UI.MasterPage
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            get_contactUs();
            get_countSubscribe();
           

            if (!IsPostBack)
            {
             
            }
        }
    
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        private void get_contactUs()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("pr_getContactUs", connection);
                {
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    message_label.Text = count.ToString();
                   
                }
            }
        }

        private void get_countSubscribe()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("pr_getContactUs", connection);
                {
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    subscribe_label.Text = count.ToString();

                }
            }
        }

        protected void btn_logout_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");

        }
    }
}


