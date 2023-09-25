using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.E_cart
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            binddataofrp();
            if (!IsPostBack)
            {


            }
            binddataofrp1();


        }


        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        private void binddataofrp()
        {

            using (SqlConnection connection = new SqlConnection(connectionString1))
            {
                string query = @"select APID, EntryDate, ProductName, ProductPrice, Discount, Model, 
                  Brand, AdditionalInformation, Description, Rating,replace(UploadImage, 'C:\Users\K. Snehitha\Documents\ems updated\Admin\Admin', '') UploadImage, CreatedBy, CreatedIp, CreatedDate, 
                     ModifyBy, ModifyIp, ModifyDate, IsActive from tbl_AddProduct";

                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

//rp_SellingProducts1.DataSource = ds;
//rp_SellingProducts1.DataBind();


                }

            }
        }


        string connectionString= ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        private void binddataofrp1()
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {


                SqlCommand command = new SqlCommand(@"pr_get_Banner", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

               //     Repeater_carsousel.DataSource = ds;
//Repeater_carsousel.DataBind();


                }
            }
        }
    }
}


