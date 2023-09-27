﻿using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.E_cart
{
    public partial class Browse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
     
            //  binddataofrp1();

            BindData();
            if (!IsPostBack)
            {

            }
        }



        string connectionString1 = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        private void BindData()

        {

            using (SqlConnection connection = new SqlConnection(connectionString1))
            {


                SqlCommand command = new SqlCommand("pro_get_FiltersLight", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_LEdProducts.DataSource = ds;
                    rp_LEdProducts.DataBind();



                }
            }
        }
        protected void product_details(object sender, EventArgs e)
        {
            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }


        protected void add_cart(object sender, EventArgs e)
        {

            string APID = ((Button)sender).CommandArgument;


            emsdal emsdal = new emsdal();
            DataSet ds = new DataSet();
            ds = emsdal.ins_tbl_cart(APID, "", "", "", "");

            string script = "<script>$('#myModal').modal('show');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

            BindData();
        }


        protected void WishList_Click(object sender, EventArgs e)
        {
            string APID = ((LinkButton)sender).CommandArgument;


            emsdal emsdal = new emsdal();
            DataSet ds = new DataSet();
            ds = emsdal.ins_tbl_wishlist1(APID, "", "");

            string script = "<script>$('#myModal1').modal('show');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

            BindData();
        }
    }
}
