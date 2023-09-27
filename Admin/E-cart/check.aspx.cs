using Admin.E_cart;
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
using static Admin.Models.EMSclass;

namespace Admin.E_cart
{
    public partial class check : System.Web.UI.Page
    {


        string APID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
            else
            {

            }

            if (Request.QueryString["APID"] != null)
            {
                APID = Request.QueryString["APID"];
                BindData();
            }
            else
            {
                BindData1();

            }

            if (!IsPostBack)
            {
            }

            BindData_orderSummary();


        }


        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        public Registrationk URID { get; private set; }

        private void BindData()
        {
            using (SqlConnection conn = new SqlConnection(connectionString1))
            {
                int i = 0;
                emsdal d1a = new emsdal();
                DataSet ds = new DataSet();
                ds = d1a.ProductDetails(APID);

                panl.GroupingText = ds.Tables[0].Rows[i]["ProductName"].ToString();
                pnel.GroupingText = ds.Tables[0].Rows[i]["ProductPrice"].ToString();

                decimal Total, price, Gst, Stax, devch, dicount;

                price = Convert.ToDecimal(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                // discount = Convert.ToDecimal(ds.Tables[0].Rows[i]["Discount"].ToString());
                if (price <= 5000)
                {
                    Gst = (price * 6) / 100;
                    Stax = (price * 10) / 100;
                    dicount = (price * 10) / 100;
                    devch = 100;
                    Total = price + Gst + Stax + devch - dicount;
                    Prc.Text = Total.ToString();
                    gst.Text = Gst.ToString();
                    tax.Text = Stax.ToString();
                    Delivery.Text = devch.ToString();
                    DisC.Text = dicount.ToString();
                }
            }

        }

        protected void next_Click1(object sender, EventArgs e)

        {
            Button btn = new Button();
            string apid = btn.CommandArgument;
            Response.Redirect("PaymentDetails.aspx?APID=" + apid);
        }

        private void BindData1()
        {
            using (SqlConnection con = new SqlConnection(connectionString1))
            {
                using (SqlCommand cmd = new SqlCommand("pro_get_AddItemtoCart", con))
                {
                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    ad.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {

                            panl.Controls.Add(new LiteralControl("<tr>"));

                            panl.Controls.Add(new LiteralControl("<td>"));
                            Label txt = new Label();
                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            panl.Controls.Add(txt);
                            panl.Controls.Add(new LiteralControl("</td>"));

                            panl.Controls.Add(new LiteralControl("<td>"));
                            Label txt1 = new Label();
                            txt1.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            panl.Controls.Add(txt1);
                            panl.Controls.Add(new LiteralControl("</td>"));

                            panl.Controls.Add(new LiteralControl("</tr>"));

                        }
                    }
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Double Amount;
                        Double TotalAmount = 0;
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            Amount = Convert.ToDouble(ds.Tables[0].Rows[i]["ProductPrice"]);
                            TotalAmount = TotalAmount + Amount;
                        }
                        Subtotal.Text = TotalAmount.ToString();

                        decimal Total, price, Gst, Stax, devch, discount, dicount;

                        price = Convert.ToDecimal(Subtotal.Text);
                        // discount = Convert.ToDecimal(ds.Tables[0].Rows[i]["Discount"].ToString());
                        if (price <= 50000)
                        {
                            Gst = (price * 6) / 100;
                            Stax = (price * 10) / 100;
                            dicount = (price * 10) / 100;
                            devch = 100;
                            Total = price + Gst + Stax + devch - dicount;
                            DisC.Text = dicount.ToString();
                            Prc.Text = Total.ToString();
                            gst.Text = Gst.ToString();
                            tax.Text = Stax.ToString();
                            Delivery.Text = devch.ToString();
                        }
                    }
                }
            }
        }

        private void BindData_orderSummary()
        {

            string connection1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();


            int i = 0;
            //DataTable dataTable = new DataTable();
            emsdal da = new emsdal();
            DataSet ds = new DataSet();
            ds = da.ProductDetails(APID);
            if (ds.Tables[0].Rows.Count > 0)
            {
                prod_checkoutimg.Controls.Add(new LiteralControl("<div class='productimg'>"));
                prod_checkoutimg.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });
                prod_checkoutimg.Controls.Add(new LiteralControl("</div>"));

                Prod_chck_label.Controls.Add(new LiteralControl("<h1>"));
                Label lblnm11 = new Label();
                Prod_chck_label.GroupingText = ds.Tables[0].Rows[i]["ProductName"].ToString();
                Prod_chck_label.Controls.Add(lblnm11);
                Prod_chck_label.Controls.Add(new LiteralControl("</h1>"));


                Prod_chck_label.Controls.Add(new LiteralControl("<p>"));
                Label lblnm1 = new Label();
                lblnm1.Text = ds.Tables[0].Rows[i]["Description"].ToString();
                Prod_chck_label.Controls.Add(lblnm1);
                Prod_chck_label.Controls.Add(new LiteralControl("</p>"));



                Prod_chck_label.Controls.Add(new LiteralControl("<h6>Price:-"));
                Label lblnm = new Label();
                lblnm.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                Prod_chck_label.Controls.Add(lblnm);
                Prod_chck_label.Controls.Add(new LiteralControl("</h6>"));

            }
        }



        protected void Button_change_Click(object sender, EventArgs e)
        {

            logout_login1.Visible = true;
            cnfrm_checkout.Visible = true;
            Button_change.Visible = false;
        }

        protected void cnfrm_checkout_Click(object sender, EventArgs e)
        {

            logout_login1.Visible = false;
            cnfrm_checkout.Visible = false;
            Button_change.Visible = true;
        }
        protected void redirct_lgin(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");

        }

        protected void AddNewAddress_Click(object sender, EventArgs e)
        {
            billadd.Visible = true;

        }

        protected void address_save_Click(object sender, EventArgs e)

        {
            BillingAddress objpi = new BillingAddress();
            objpi.FirstName = txt_frstname.Text;
            objpi.LastName = txt_lst.Text;
            objpi.EmailId = txt_email.Text;
            objpi.PhoneNumber = txt_phoneno.Text;
            objpi.StreetAddress = txt_strt.Text;
            objpi.Country = txt_country.Text;
            objpi.City = txt_city.Text;
            objpi.State = txt_state.Text;
            objpi.Pincode = txt_zip.Text;
            objpi.OrderNotes = multitxt.Text;



            emsdal objs = new emsdal();
            DataSet ds = objs.insbillingaddress(objpi);


            // Clear TextBoxes
            txt_frstname.Text = "";
            txt_lst.Text = "";
            txt_email.Text = "";
            txt_phoneno.Text = "";
            txt_strt.Text = "";
            txt_country.Text = "";
            txt_city.Text = "";
            txt_state.Text = "";
            txt_zip.Text = "";
            multitxt.Text = "";

            // Redirect to the payment page
            Response.Redirect("PaymentDetails.aspx? APID=" + APID);
        }
      

        protected void deliverhere_Click(object sender, EventArgs e)
        {
            addadd.Visible = false;
        }


    }
}


        //private void login()
        //{
        //    using (SqlConnection con = new SqlConnection(connectionString1))
        //    {
        //        string query = "select * from tbl_Registrationk";
        //        //string query = "select * from tbl_Registrationk  where UserId = @UserId";

        //        using (SqlCommand command = new SqlCommand(query, con))
        //        {
        //            con.Open();

        //            SqlDataAdapter adapter = new SqlDataAdapter(command);
        //            DataTable dataTable = new DataTable();
        //            adapter.Fill(dataTable);
                   


        //                login_grd.DataSource = dataTable;
        //                login_grd.DataBind();
        //            }
              
        //    }

  
                    //using (SqlCommand command = new SqlCommand(query, con))
                    //{
                    //    con.Open();

                      //    SqlDataAdapter adapter = new SqlDataAdapter(command);
                      //    DataTable dataTable = new DataTable();
                      //    adapter.Fill(dataTable);
                      
                      //    login_grd.DataSource = dataTable;
                      //    login_grd.DataBind();
                      //}
                      
                      
                      
                      
                      //protected void editicon_Click(object sender, EventArgs e)
                      //{
                      
                      //    string APID = ((LinkButton)sender).CommandArgument;
                      
                      //    emsdal emsdal = new emsdal();
                      //    DataSet ds = new DataSet();
                      //    //  ds = emsdal.ins_Registration();
                      
                      
                      
                      //    Response.Redirect("Registration.aspx");
                      //    BindData1();
                      //}
                      
                      
                      //protected void editicon_Click1(object source, RepeaterCommandEventArgs e)
                      //{
                      
                      //    if (e.CommandName == "edit")
                      //    {
                      //        int URID = Convert.ToInt32(e.CommandArgument);
                      
                      //        Dal dl = new Dal();
                      //        DataSet ds = dl.editicon_Click1("URID");
                      
                      
                      //        if (ds.Tables[0].Rows.Count > 0)
                      //        {
                      //            int userId = (int)Session["UserId"];
                      //            string mobileNo = Session["MobileNo"].ToString();
                      //            string address = Session["Address"].ToString();
                      //            string pincode = Session["Pincode"].ToString();
                      //            string state = Session["State"].ToString();
                      //            string city = Session["City"].ToString();
                      
                      
                      
                      //            Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
                      //            Session["MobileNo"] = ds.Tables[0].Rows[0]["MobileNo"].ToString();
                      //            Session["Address"] = ds.Tables[0].Rows[0]["Address"].ToString();
                      //            Session["Pincode"] = ds.Tables[0].Rows[0]["Pincode"].ToString();
                      //            Session["State"] = ds.Tables[0].Rows[0]["State"].ToString();
                      //            Session["City"] = ds.Tables[0].Rows[0]["City"].ToString();
                      
                      
                      //            Response.Redirect("Registration.aspx?ID=" + URID + "&type=edit");
                      //        }
                      //    }
                      