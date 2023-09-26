using Admin.Models;
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
                        //Panel_Offers.Controls.Add(new LiteralControl("<div class='container'>"));
                        //Panel_Offers.Controls.Add(new LiteralControl("<div class='card3'>"));
                        //Panel_Offers.Controls.Add(new LiteralControl("<div class='row'>"));
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {


                            // cart_grid.DataSource = ds;
                            // cart_grid.DataBind();
                            cartimage.Controls.Add(new LiteralControl("<tr>"));
                            cartimage.Controls.Add(new LiteralControl("<td  class='product'>"));
                            cartimage.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });
                            // cartimage.Attributes.Add("style", "width:15%");
                            cartimage.Controls.Add(new LiteralControl("</td>"));


                            cartimage.Controls.Add(new LiteralControl("<td>"));

                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            LinkButton txt = new LinkButton();
                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            txt.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            txt.CommandName = "viwe-btn";
                            txt.Click += new EventHandler(this.btn_linkpr);
                            cartimage.Controls.Add(txt);
                            cartimage.Controls.Add(new LiteralControl("</td>"));


                            cartimage.Controls.Add(new LiteralControl("<td>"));

                            cartimage.Controls.Add(new LiteralControl("</td>"));

                            cartimage.Controls.Add(new LiteralControl("<td class='pr'>"));
                            Label txtpr = new Label();
                            txtpr.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            txtpr.ID = "txtpr_" + ds.Tables[0].Rows[i]["APID"].ToString();
                            cartimage.Controls.Add(txtpr);

                            cartimage.Controls.Add(new LiteralControl("</td>"));



                            cartimage.Controls.Add(new LiteralControl("<td>"));
                            cartimage.Controls.Add(new LiteralControl("<div class='wrapper'>"));

                            Button lblm = new Button();
                            lblm.Text = "-";
                            lblm.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            lblm.Click += new EventHandler(this.m_btn_click);
                            cartimage.Controls.Add(lblm);


                            TextBox lbln = new TextBox();
                            lbln.Text = "01";
                            lbln.Attributes.Add("Style", "width: 31px");
                            lbln.ID = "qnty" + ds.Tables[0].Rows[i]["APID"].ToString();
                            cartimage.Controls.Add(lbln);


                            Button lblp = new Button();
                            lblp.Text = "+";
                            lblp.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            lblp.Click += new EventHandler(this.p_btn_click);
                            cartimage.Controls.Add(lblp);

                            cartimage.Controls.Add(new LiteralControl("</div>"));
                            cartimage.Controls.Add(new LiteralControl("</td>"));


                            //cartimage.Controls.Add(new LiteralControl("<td>"));

                            //cartimage.Controls.Add(new LiteralControl("</td>"));

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
                            string APID = ds.Tables[0].Rows[i]["APID"].ToString();
                            Session["APID"] = APID;
                            Label txtpr = (Label)cartimage.FindControl("txtpr_" + APID);
                            //  Double qnty = Convert.ToDouble((Session["qnty" + APID].ToString()).ToString());
                            // Amount =Convert.ToDouble(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                            Amount = Convert.ToDouble(txtpr.Text);
                            // Amount = (Amount * qnty);
                            TotalAmount = TotalAmount + Amount;
                        }
                        Total.Text = TotalAmount.ToString();
                    }

                }
            }

        }

        protected void m_btn_click(object sender, EventArgs e)
        {
            string APID = ((Button)sender).CommandArgument;
            TextBox lbln = (TextBox)cartimage.FindControl("qnty" + APID);
            Label txtpr = (Label)cartimage.FindControl("txtpr_" + APID);

            int i = 0;
            DataTable dataTable = new DataTable();
            emsdal da = new emsdal();
            DataSet ds = new DataSet();
            ds = da.ProductDetails(APID);

            if (ds.Tables[0].Rows.Count > 0)
            {

                int quantity = int.Parse(lbln.Text);
                if (quantity > 1)
                {
                    quantity--;
                    lbln.Text = quantity.ToString("D2"); // Format as "01", "02", etc.

                    decimal price = Convert.ToDecimal(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                    int qnty1 = Convert.ToInt32(lbln.Text);

                    txtpr.Text = (price * qnty1).ToString();
                }
                Session["qnty" + APID] = lbln.Text;
            }
        }

        protected void btn_remove_Click(object sender, EventArgs e)
        {

            string APID = ((Button)sender).CommandArgument;
            {
                string deleteCommand = "DELETE From tbl_Product_Cart where APID=" + APID;

                using (SqlConnection connection = new SqlConnection(connectionString1))
                {
                    connection.Open();
                    //emsdal d1a = new emsdal();
                    //DataSet ds = new DataSet();
                    //SqlCommand cmd = new SqlCommand();
                    //ds = d1a.Delete_Cart(apid);
                    using (SqlCommand command = new SqlCommand(deleteCommand, connection))
                    {
                        int rowAffected = command.ExecuteNonQuery();

                        if (rowAffected > 0)
                        {
                            ScriptManager.RegisterStartupScript(this, typeof(string), "send", "showModal();", true);

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

            Response.Redirect("checkout.aspx");

        }

        protected void btn_linkpr(object sender, EventArgs e)
        {
            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }

        protected void p_btn_click(object sender, EventArgs e)
        {
            string APID = ((Button)sender).CommandArgument;
            TextBox lbln = (TextBox)cartimage.FindControl("qnty" + APID);
            Label txtpr = (Label)cartimage.FindControl("txtpr_" + APID);
            int i = 0;
            //DataTable dataTable = new DataTable();


            emsdal da = new emsdal();
            DataSet ds = new DataSet();
            ds = da.ProductDetails(APID);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int quantity;
                if (int.TryParse(lbln.Text, out quantity))
                {
                    if (quantity < 15)
                    {

                        quantity++;
                        lbln.Text = quantity.ToString("D2");
                        Session["qnty" + APID] = lbln.Text;
                    }
                    decimal price = Convert.ToDecimal(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                    int qnty1 = Convert.ToInt32(lbln.Text);
                    //lbln.Text = qnty1.ToString();
                    string a = (price * qnty1).ToString();
                    //Label txtpr1 = new Label();
                    txtpr.Text = a.ToString();

                }

            }
        }

    }
}






