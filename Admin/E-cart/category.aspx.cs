using Admin.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.E_cart
{
    public partial class category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            BindData();
            if (!IsPostBack)
            {

            }

        }
      

        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        private void BindData()

        {

            using (SqlConnection connection = new SqlConnection(connectionString1))
            {


                SqlCommand command = new SqlCommand("pro_get_Havells", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_havells_brand.DataSource = ds;
                    rp_havells_brand.DataBind();

                }
            }

            using (SqlConnection connection = new SqlConnection(connectionString1))
            {


                SqlCommand command = new SqlCommand("pro_get_Orient", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_Orient_brand.DataSource = ds;
                    rp_Orient_brand.DataBind();

                }
            }


            using (SqlConnection connection = new SqlConnection(connectionString1))
            {


                SqlCommand command = new SqlCommand("pro_get_syska", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_syska_brand.DataSource = ds;
                    rp_syska_brand.DataBind();

                }
            }


            using (SqlConnection connection = new SqlConnection(connectionString1))
            {


                SqlCommand command = new SqlCommand("pro_get_Wipro", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_wipro_brand.DataSource = ds;
                    rp_wipro_brand.DataBind();

                }
            }
            using (SqlConnection connection = new SqlConnection(connectionString1))
            {


                SqlCommand command = new SqlCommand("pro_get_Bajaj", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_bajaj_brand.DataSource = ds;
                    rp_bajaj_brand.DataBind();

                }
            } 
    }

       

    
        protected void product_link_Category(object sender, EventArgs e)
        {
            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }
        protected void btn_cart_category(object sender, EventArgs e)
        {

            string APID = ((Button)sender).CommandArgument;


            emsdal emsdal = new emsdal();
            DataSet ds = new DataSet();
            ds = emsdal.ins_tbl_cart(APID, "", "", "", "");



            string script = "<script> alert('Item is added to the cart');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

            BindData();
        }


        protected void CheckBox_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox checkBox = (CheckBox)sender;

            if (CheckBox_havells.Checked)
            {    
                rp_havells_brand.Visible = true;
            }
            else
            {
                rp_havells_brand.Visible = false;
            }
          


            if (CheckBox_Orient.Checked)
            {
                rp_Orient_brand.Visible = true;
            }
            else
            {
                rp_Orient_brand.Visible = false;
            }


            if(CheckBox_Wipro.Checked)
            {
                rp_wipro_brand.Visible = true;
            }

            else
            {
                rp_wipro_brand.Visible = false;
            }

            if(CheckBox_syska.Checked)
            {
                rp_syska_brand.Visible = true;
            }
            else
            {
                rp_syska_brand.Visible = false;
            }


            if(CheckBox_Bajaj.Checked)
            {
                rp_bajaj_brand.Visible = true;

            }
            else
            {
                rp_bajaj_brand.Visible = false;
            }
        }

    }
}
















