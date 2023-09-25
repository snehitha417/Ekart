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
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime date = DateTime.Now;

                lbldate.Text = date.ToString("dd/MM/yyyy");
                lblTime.Text = date.ToString(" HH:mm:ss");
            }
            BindData();
        }
        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();


        private void BindData()
        {

            using (SqlConnection connection = new SqlConnection(connectionString1))
            {
                using (SqlCommand command = new SqlCommand("pro_get_AddItemtoCart", connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //Panel_Offers.Controls.Add(new LiteralControl("<div class='container'>"));
                        //Panel_Offers.Controls.Add(new LiteralControl("<div class='card3'>"));
                        //Panel_Offers.Controls.Add(new LiteralControl("<div class='row'>"));
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            // cart_grid.DataSource = ds;
                            // cart_grid.DataBind();

                            invoice_panel.Controls.Add(new LiteralControl("<tr class='Rows'>"));

                            invoice_panel.Controls.Add(new LiteralControl("<td class='wish'>"));
                            Label txtsl = new Label();
                            //txtsl.Text = ds.Tables[0].Rows[i]["Index"].ToString();
                            invoice_panel.Controls.Add(txtsl);
                            //invoice_panel.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });
                            //  panl_wishlist.Attributes.Add("style", " height:105px");

                            invoice_panel.Controls.Add(new LiteralControl("</td>"));


                            invoice_panel.Controls.Add(new LiteralControl("<td>"));
                            Label txt = new Label();
                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            invoice_panel.Controls.Add(txt);
                            invoice_panel.Controls.Add(new LiteralControl("</td>"));


                            invoice_panel.Controls.Add(new LiteralControl("<td>"));
                            Label txtpric = new Label();
                            txtpric.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            invoice_panel.Controls.Add(txtpric);
                            invoice_panel.Controls.Add(new LiteralControl("</td>"));

                            invoice_panel.Controls.Add(new LiteralControl("<td>"));

                            invoice_panel.Controls.Add(new LiteralControl("</td>"));

                            invoice_panel.Controls.Add(new LiteralControl("<td>"));
                            Label gst = new Label();
                            price pr = new price();
                            pr.p1 = Convert.ToDecimal(txtpric.Text);
                            decimal cost = pr.cst(pr.p1, pr.Gst);
                            gst.Text = cost.ToString();
                            decimal ds1 = Convert.ToDecimal(Gst_Total.Text);
                            Gst_Total.Text = (ds1 + cost).ToString();
                            invoice_panel.Controls.Add(gst);
                            invoice_panel.Controls.Add(new LiteralControl("</td>"));

                            invoice_panel.Controls.Add(new LiteralControl("<td>"));

                            invoice_panel.Controls.Add(new LiteralControl("</td>"));

                            invoice_panel.Controls.Add(new LiteralControl("<td>"));
                            Label Total1 = new Label();
                            pr.Gst = Convert.ToDecimal(gst.Text);
                            decimal cs = pr.totl(pr.p1, pr.Gst, pr.total);
                            Total1.Text = cs.ToString();
                            decimal ds2 = Convert.ToDecimal(Total.Text);
                            Total.Text = (ds2 + cs).ToString();
                            invoice_panel.Controls.Add(Total1);
                            invoice_panel.Controls.Add(new LiteralControl("</td>"));
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
                        Sub_Total.Text = TotalAmount.ToString();

                    }
                }

                }
            }
        }
    }



