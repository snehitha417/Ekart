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

namespace Admin.E_cart
{
    public partial class wishlist : System.Web.UI.Page
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


                using (SqlCommand command = new SqlCommand("pr_get_Wishlist1", connection))
                {
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {


                            panl_wishlist.Controls.Add(new LiteralControl("<tr class='Rows'>"));

                            panl_wishlist.Controls.Add(new LiteralControl("<td  class='wish'>"));

                            panl_wishlist.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });
                         

                            panl_wishlist.Controls.Add(new LiteralControl("</td>"));


                            panl_wishlist.Controls.Add(new LiteralControl("<td>"));
                            LinkButton txt = new LinkButton();
                            txt.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            txt.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            txt.CommandName = "view-btn";
                            txt.Click += new EventHandler(this.btn_linkpr);
                            panl_wishlist.Controls.Add(txt);
                            panl_wishlist.Controls.Add(new LiteralControl("</td>"));


                            panl_wishlist.Controls.Add(new LiteralControl("<td>"));
                            Label txtpric = new Label();
                            txtpric.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            panl_wishlist.Controls.Add(txtpric);
                            panl_wishlist.Controls.Add(new LiteralControl("</td>"));


                            panl_wishlist.Controls.Add(new LiteralControl("<td>"));
                            panl_wishlist.Controls.Add(new LiteralControl("</td>"));

                            panl_wishlist.Controls.Add(new LiteralControl("<td>"));

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
                            panl_wishlist.Controls.Add(linkmemberview);

                            panl_wishlist.Controls.Add(new LiteralControl("</td>"));

                            panl_wishlist.Controls.Add(new LiteralControl("</tr>"));

                        }
                    }
                }
            }
        }


        //btn_linkpr
        protected void btn_linkpr(object sender, EventArgs e)
        {
            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }


        //btn_remove_Click
        protected void btn_remove_Click(object sender, EventArgs e)
        {
            string APID = ((Button)sender).CommandArgument;
            {
                string deleteCommand = "DELETE From tbl_Wishlist1 where APID=" + APID;

                using (SqlConnection connection = new SqlConnection(connectionString1))
                {
                    connection.Open();
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

                        if (panl_wishlist.Controls.Count > 0)

                        {
                            panl_wishlist.Controls.Clear();
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
    }
}