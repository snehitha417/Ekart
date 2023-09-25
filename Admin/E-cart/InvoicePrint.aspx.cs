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
    public partial class InvoicePrint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            BindData();
        }


        string connectionString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        private void BindData()
        {
            using (SqlConnection connection = new SqlConnection(connectionString1))
            {
                using (SqlCommand command = new SqlCommand("pr_get_BillingAddress", connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        address.Controls.Add(new LiteralControl("<table>"));
                        address.Controls.Add(new LiteralControl("<tr>"));
                        address.Controls.Add(new LiteralControl("<td>"));

                        int i = 0;
                        {
                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_frst = new Label();
                            txt_frst.Text = ds.Tables[0].Rows[i]["FirstName"].ToString();
                            address.Controls.Add(txt_frst);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));

                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_phono = new Label();
                            txt_phono.Text = ds.Tables[0].Rows[i]["PhoneNumber"].ToString();
                            address.Controls.Add(txt_phono);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));


                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_strt = new Label();
                            txt_strt.Text = ds.Tables[0].Rows[i]["StreetAddress"].ToString();
                            address.Controls.Add(txt_strt);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));



                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_cntry = new Label();
                            txt_cntry.Text = ds.Tables[0].Rows[i]["Country"].ToString();
                            address.Controls.Add(txt_cntry);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));


                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_city = new Label();
                            txt_city.Text = ds.Tables[0].Rows[i]["City"].ToString();
                            address.Controls.Add(txt_city);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));


                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_st = new Label();
                            txt_st.Text = ds.Tables[0].Rows[i]["State"].ToString();
                            address.Controls.Add(txt_st);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));


                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_pin = new Label();
                            txt_pin.Text = ds.Tables[0].Rows[i]["Pincode"].ToString();
                            address.Controls.Add(txt_pin);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));

                            address.Controls.Add(new LiteralControl("<tr>"));
                            address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_ord = new Label();
                            txt_ord.Text = ds.Tables[0].Rows[i]["OrderNotes"].ToString();
                            address.Controls.Add(txt_ord);
                            address.Controls.Add(new LiteralControl("</td>"));
                            address.Controls.Add(new LiteralControl("</tr>"));


                        }
                        address.Controls.Add(new LiteralControl("</td>"));
                        address.Controls.Add(new LiteralControl("</tr>"));
                        address.Controls.Add(new LiteralControl("</table>"));



                    }
                }

            }
        }
    }
    }

