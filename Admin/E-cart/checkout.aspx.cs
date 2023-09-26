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
    public partial class checkout : System.Web.UI.Page
    {
        string APID;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString["APID"] != null)
            {
                decimal qnt1 = Convert.ToDecimal(Session["qnt"].ToString());
                APID = Request.QueryString["APID"];

                
                BindData();
            }
            else
            {
                
                BindData1();
            }

        }
        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        
        private void BindData()
        {
            using (SqlConnection conn = new SqlConnection(connectionString1))
            {
                int i = 0;
                emsdal d1a = new emsdal();
                DataSet ds = new DataSet();
                ds = d1a.ProductDetails(APID);

                panl.Controls.Add(new LiteralControl("<tr>"));

                panl.Controls.Add(new LiteralControl("<td>"));
                Label txt = new Label();
                txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                panl.Controls.Add(txt);
                panl.Controls.Add(new LiteralControl("</td>"));

                panl.Controls.Add(new LiteralControl("<td>"));
                Label qnty = new Label();
                qnty.Text = Session["qnt"].ToString();
                qnty.Attributes.Add("style", "margin - left: 30px;");
                panl.Controls.Add(qnty);
                panl.Controls.Add(new LiteralControl("</td>"));

                panl.Controls.Add(new LiteralControl("<td>"));
                Label txt1 = new Label();
                txt1.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                decimal a = Convert.ToDecimal(txt1.Text);
                decimal  b =Convert.ToDecimal(qnty.Text);
                txt1.Text = (a * b).ToString();
                panl.Controls.Add(txt1);
                panl.Controls.Add(new LiteralControl("</td>"));

                panl.Controls.Add(new LiteralControl("</tr>"));
                
                decimal Total, price, Gst, Stax, devch, dicount;

                price = Convert.ToDecimal(txt1.Text);
                Subtotal.Text = price.ToString();
                // discount = Convert.ToDecimal(ds.Tables[0].Rows[i]["Discount"].ToString());
                if (price <= 50000)
                {

                    Gst = (price * 6) / 100;
                    Stax = (price * 10) / 100;
                    dicount = (price * 10) / 100;
                    devch = 0;
                    Total = price + Gst + Stax + devch - dicount;
                    Prc.Text = Total.ToString();
                    gst.Text = Gst.ToString();
                    tax.Text = Stax.ToString();
                    Delivery.Text = devch.ToString();
                    DisC.Text = dicount.ToString();
                }
                else
                {
                    Gst = (price * 12) / 100;
                    Stax = (price * 15) / 100;
                    dicount = (price * 18) / 100;
                    devch = 0;
                    Total = price + Gst + Stax + devch - dicount;
                    DisC.Text = dicount.ToString();
                    Prc.Text = Total.ToString();
                    gst.Text = Gst.ToString();
                    tax.Text = Stax.ToString();
                    Delivery.Text = devch.ToString();
                }
            }

        }
        protected void btnRegister_Click(object sender, EventArgs e)

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
            Response.Redirect("PaymentDetails.aspx");
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
                            //panl.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            //pnel.GroupingText = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            panl.Controls.Add(new LiteralControl("<tr>"));

                            panl.Controls.Add(new LiteralControl("<td>"));
                            Label txt = new Label();
                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            panl.Controls.Add(txt);
                            panl.Controls.Add(new LiteralControl("</td>"));

                            panl.Controls.Add(new LiteralControl("<td>"));
                            Label qnty = new Label();
                            string APID = ds.Tables[0].Rows[i]["APID"].ToString();
                            qnty.Text = Session["qnty"+APID].ToString();
                            panl.Controls.Add(qnty);
                            panl.Controls.Add(new LiteralControl("</td>"));

                            panl.Controls.Add(new LiteralControl("<td>"));
                            Label txt2 = new Label();
                            txt2.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            txt2.ID = "txt2" + ds.Tables[0].Rows[i]["APID"].ToString();
                            decimal a = Convert.ToDecimal(txt2.Text);
                            decimal b = Convert.ToDecimal(qnty.Text);
                            txt2.Text = (a * b).ToString();
                            panl.Controls.Add(txt2);
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
                            string APID = ds.Tables[0].Rows[i]["APID"].ToString();
                            Label txt2 = (Label)panl.FindControl("txt2" + APID);

                            Amount = Convert.ToDouble(txt2.Text);
                            TotalAmount = TotalAmount + Amount;
                           
                        }
                        Subtotal.Text = TotalAmount.ToString();

                        decimal Total, price, Gst, Stax, devch,  dicount;

                        price = Convert.ToDecimal(Subtotal.Text);
                        // discount = Convert.ToDecimal(ds.Tables[0].Rows[i]["Discount"].ToString());
                        if (price <= 50000)
                        {
                            Gst = (price * 6) / 100;
                            Stax = (price * 10) / 100;
                            dicount = (price * 10) / 100;
                            devch = 0;
                            Total = price + Gst + Stax + devch - dicount;
                            DisC.Text = dicount.ToString();
                            Prc.Text = Total.ToString();
                            gst.Text = Gst.ToString();
                            tax.Text = Stax.ToString();
                            Delivery.Text = devch.ToString();
                        }
                        else
                                {
                            Gst = (price * 12) / 100;
                            Stax = (price * 15) / 100;
                            dicount = (price * 18) / 100;
                            devch = 0;
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
    }
    
}

