using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.E_cart
{
    public partial class cart : System.Web.UI.Page
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
                using (SqlCommand command = new SqlCommand("pro_get_AddItemtoCart", connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                     
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {

                            cartimage.Controls.Add(new LiteralControl("<tr>"));
                            cartimage.Controls.Add(new LiteralControl("<td class='product'>"));
                            cartimage.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });
                           // cartimage.Attributes.Add("style", "width:15%");
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));
                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            Label txt = new Label();
                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            cartimage.Controls.Add(txt);
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));
                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            Label txtpr = new Label();
                            txtpr.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            cartimage.Controls.Add(txtpr);

                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));
                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            
                            cartimage.Controls.Add(new LiteralControl("<td>"));

                            Button linkmemberview = new Button()
                            {
                                Text = "Remove"
                            };
                            linkmemberview.Attributes.Add("runat", "server");
                            linkmemberview.Attributes.Add("Style", "background-color: #f6a21c; color: white; width: 10rem; height:4rem; font-size: 16px; border-radius: 3.5px; margin-left: 60px; margin - top: 10px;   border: none; ");
                            linkmemberview.CommandName = "btn_view";
                            linkmemberview.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();

                            linkmemberview.Click += new EventHandler(this.btn_remove_Click);
                            linkmemberview.CausesValidation = false;
                            cartimage.Controls.Add(linkmemberview);

                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("</tr>"));

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
                        Total.Text = TotalAmount.ToString();
                    }

                }
            }

        }

        protected void btn_remove_Click(object sender, EventArgs e)
        {
            string APID = ((Button)sender).CommandArgument;
            {
                string deleteCommand = "DELETE FROM tbl_product_Cart where APID=" + APID;

          
             
                using (SqlConnection connection = new SqlConnection(connectionString1))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(deleteCommand, connection))
                    {
                        int rowAffected = command.ExecuteNonQuery();

                        if (rowAffected > 0)
                        {
                            ScriptManager.RegisterStartupScript(this, typeof(string), "send", "alert('successfully Removed');", true);

                        }
                        else
                        {
                            Response.Write("Not Removed");

                        }
                        connection.Close();
                        if (cartimage.Controls.Count > 0)
                        {
                            cartimage.Controls.Clear();
                            BindData();

                        }
                        else
                        {
                            BindData();
                        }
                    }
                }
            }


        }
        protected void Checkout_id_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
            else
            {
                Response.Redirect("checkout.aspx");
            }

        }

    }
}






