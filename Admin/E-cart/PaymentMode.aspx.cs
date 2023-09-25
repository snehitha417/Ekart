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
    public partial class PaymentMode : System.Web.UI.Page
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

                        Panel_Address.Controls.Add(new LiteralControl("<table>"));
                        Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                        Panel_Address.Controls.Add(new LiteralControl("<td>"));

                        int i = 0;
                        {


                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_frst = new Label();
                            txt_frst.Text = ds.Tables[0].Rows[i]["FirstName"].ToString();
                            Panel_Address.Controls.Add(txt_frst);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));



                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_lst = new Label();
                            txt_lst.Text = ds.Tables[0].Rows[i]["LastName"].ToString();
                            Panel_Address.Controls.Add(txt_lst);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));

                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_eml = new Label();
                            txt_eml.Text = ds.Tables[0].Rows[i]["EmailId"].ToString();
                            Panel_Address.Controls.Add(txt_eml);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));


                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_phono = new Label();
                            txt_phono.Text = ds.Tables[0].Rows[i]["PhoneNumber"].ToString();
                            Panel_Address.Controls.Add(txt_phono);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));


                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));

                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_strt = new Label();
                            txt_strt.Text = ds.Tables[0].Rows[i]["StreetAddress"].ToString();
                            Panel_Address.Controls.Add(txt_strt);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));

                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));

                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_cntry = new Label();
                            txt_cntry.Text = ds.Tables[0].Rows[i]["Country"].ToString();
                            Panel_Address.Controls.Add(txt_cntry);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));


                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_city = new Label();
                            txt_city.Text = ds.Tables[0].Rows[i]["City"].ToString();
                            Panel_Address.Controls.Add(txt_city);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));


                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_st = new Label();
                            txt_st.Text = ds.Tables[0].Rows[i]["State"].ToString();
                            Panel_Address.Controls.Add(txt_st);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));


                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_pin = new Label();
                            txt_pin.Text = ds.Tables[0].Rows[i]["Pincode"].ToString();
                            Panel_Address.Controls.Add(txt_pin);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));

                            Panel_Address.Controls.Add(new LiteralControl("<tr>"));
                            Panel_Address.Controls.Add(new LiteralControl("<td>"));
                            Label txt_ord = new Label();
                            txt_ord.Text = ds.Tables[0].Rows[i]["OrderNotes"].ToString();
                            Panel_Address.Controls.Add(txt_ord);
                            Panel_Address.Controls.Add(new LiteralControl("</td>"));
                            Panel_Address.Controls.Add(new LiteralControl("</tr>"));


                        }
                        Panel_Address.Controls.Add(new LiteralControl("</td>"));
                        Panel_Address.Controls.Add(new LiteralControl("</tr>"));
                        Panel_Address.Controls.Add(new LiteralControl("</table>"));



                    }
                }

            }
        }
    }
}

