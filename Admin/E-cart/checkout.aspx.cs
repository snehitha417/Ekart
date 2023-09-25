//using Admin.Models;
//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using static Admin.Models.EMSclass;

//namespace Admin.E_cart
//{
//    public partial class checkout : System.Web.UI.Page
//    {
//        string APID;
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (Request.QueryString["APID"] != null)
//            {
//                APID = Request.QueryString["APID"];
//                BindData();
//            }
//            else
//            {
//                BindData1();
//            }

//            if (!IsPostBack)
//            {


//            }
//        }


//        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();


//        private void BindData()
//        {
//            using (SqlConnection conn = new SqlConnection(connectionString1))
//            {
//                int i = 0;
//                emsdal d1a = new emsdal();
//                DataSet ds = new DataSet();
//                ds = d1a.ProductDetails(APID);

//                panl.GroupingText = ds.Tables[0].Rows[i]["ProductName"].ToString();
//                pnel.GroupingText = ds.Tables[0].Rows[i]["ProductPrice"].ToString();

//                decimal Total, price, Gst, Stax, devch, dicount;

//                price = Convert.ToDecimal(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
//                // discount = Convert.ToDecimal(ds.Tables[0].Rows[i]["Discount"].ToString());
//                if (price <= 5000)
//                {
//                    Gst = (price * 6) / 100;
//                    Stax = (price * 10) / 100;
//                    dicount = (price * 10) / 100;
//                    devch = 100;
//                    Total = price + Gst + Stax + devch - dicount;
//                    Prc.Text = Total.ToString();
//                    gst.Text = Gst.ToString();
//                    tax.Text = Stax.ToString();
//                    Delivery.Text = devch.ToString();
//                    DisC.Text = dicount.ToString();
//                }
//            }

//        }
//        protected void btnsubmitt_Click(object sender, EventArgs e)

//        {
//            BillingAddress objpi = new BillingAddress();

//            objpi.FirstName = txt_frstname.Text;
//            objpi.LastName = txt_lst.Text;
//            objpi.EmailId = txt_email.Text;
//            objpi.PhoneNumber = txt_phoneno.Text;
//            objpi.StreetAddress = txt_strt.Text;
//            objpi.Country = txt_country.Text;
//            objpi.City = txt_city.Text;
//            objpi.State = txt_state.Text;
//            objpi.Pincode = txt_zip.Text;
//            objpi.OrderNotes = multitxt.Text;



//            emsdal objs = new emsdal();
//            DataSet ds = objs.insbillingaddress(objpi);

//            Response.Redirect("PaymentDetails.aspx");
//            // Clear TextBoxes
//            //txt_frstname.Text = "";
//            //txt_lst.Text = "";
//            //txt_email.Text = "";
//            //txt_phoneno.Text = "";
//            //txt_strt.Text = "";
//            //txt_country.Text = "";
//            //txt_city.Text = "";
//            //txt_state.Text = "";
//            //txt_zip.Text = "";
//            //multitxt.Text = "";

//            // Redirect to the payment page

//        }


//        protected void next_Click1(object sender, EventArgs e)

//        {
//            Button btn = new Button();
//            string apid = btn.CommandArgument;
//            Response.Redirect("PaymentDetails.aspx?APID=" + apid);
//        }

//        private void BindData1()
//        {
//            using (SqlConnection con = new SqlConnection(connectionString1))
//            {
//                using (SqlCommand cmd = new SqlCommand("pro_get_AddItemtoCart", con))
//                {
//                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
//                    DataSet ds = new DataSet();
//                    ad.Fill(ds);
//                    if (ds.Tables[0].Rows.Count > 0)
//                    {
//                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
//                        {
//                            //panl.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
//                            //pnel.GroupingText = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
//                            panl.Controls.Add(new LiteralControl("<tr>"));

//                            panl.Controls.Add(new LiteralControl("<td>"));
//                            Label txt = new Label();
//                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
//                            panl.Controls.Add(txt);
//                            panl.Controls.Add(new LiteralControl("</td>"));

//                            panl.Controls.Add(new LiteralControl("<td>"));
//                            Label txt1 = new Label();
//                            txt1.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
//                            panl.Controls.Add(txt1);
//                            panl.Controls.Add(new LiteralControl("</td>"));

//                            panl.Controls.Add(new LiteralControl("</tr>"));

//                        }
//                    }
//                    if (ds.Tables[0].Rows.Count > 0)
//                    {
//                        Double Amount;
//                        Double TotalAmount = 0;
//                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
//                        {
//                            Amount = Convert.ToDouble(ds.Tables[0].Rows[i]["ProductPrice"]);
//                            TotalAmount = TotalAmount + Amount;
//                        }
//                        Subtotal.Text = TotalAmount.ToString();

//                        decimal Total, price, Gst, Stax, devch, discount, dicount;

//                        price = Convert.ToDecimal(Subtotal.Text);
//                        // discount = Convert.ToDecimal(ds.Tables[0].Rows[i]["Discount"].ToString());
//                        if (price <= 50000)
//                        {
//                            Gst = (price * 6) / 100;
//                            Stax = (price * 10) / 100;
//                            dicount = (price * 10) / 100;
//                            devch = 100;
//                            Total = price + Gst + Stax + devch - dicount;
//                            DisC.Text = dicount.ToString();
//                            Prc.Text = Total.ToString();
//                            gst.Text = Gst.ToString();
//                            tax.Text = Stax.ToString();
//                            Delivery.Text = devch.ToString();
//                        }
//                    }
//                }
//            }
//        }

//        protected void Button_change_Click(object sender, EventArgs e)
//        {
//            // Toggle the visibility of btn_cnfrmcheckout
//            btn_cnfrmcheckout.Visible = !btn_cnfrmcheckout.Visible;
//        }

//    }
//      }
    
    


