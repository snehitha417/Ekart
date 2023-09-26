using Admin.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin.E_cart
{
    public partial class index1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                btn_login.Visible = true;
                btn_logout.Visible = false;
                userId_label.Visible = false;
                wishlst_badge.Visible = false;
                //  cart_badge.Visible = false;

            }

            else
            {
                btn_logout.Visible = true;
                btn_login.Visible = false;
                userId_label.Visible = true;
                wishlst_badge.Visible = true;
                // cart_badge.Visible = true;
            }

            binddataofrp1();

            get_CartCount();

            get_wishlistcount();


            if (!IsPostBack)
            {
                //binddataofrp();

            }

            //lbl_username.Text = Session["UserId"].ToString();
        }

        /// FOR CAROUSEL SLIDE VIEW  ========== STARTS HERE ========================== >

        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();

        private void binddataofrp1()
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(@"pr_get_Banner", connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    Repeater_carsousel.DataSource = ds;
                    Repeater_carsousel.DataBind();
                }
            }



            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = @"select APID, EntryDate, ProductName, ProductPrice, Discount, Model, 
                  Brand, AdditionalInformation, Description, Rating,replace(UploadImage, 'C:\Users\K. Snehitha\Documents\ems updated\Admin\Admin', '') UploadImage, CreatedBy, CreatedIp, CreatedDate, 
                     ModifyBy, ModifyIp, ModifyDate, IsActive from tbl_AddProduct";

                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                int i = 0;
                //DataTable dataTable = new DataTable();
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    rp_SellingProducts.DataSource = ds;
                    rp_SellingProducts.DataBind();
                }
            }

            /// FOR CAROUSEL SLIDE VIEW  ========== ENDS HERE ========================== >



            /// ====================GALLERY BANNER IMAGES ===  STARTS HERE ===================>


            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand("Pro_get_BannerOffers", connection);

                connection.Open();


                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    rp_offers.DataSource = ds;
                    rp_offers.DataBind();
                }
            }

            //  Products panel
            using (SqlConnection connection = new SqlConnection(connectionString))

            {

                string query = @"select APID, EntryDate, ProductName, ProductPrice, Discount, Model, 
                  Brand, AdditionalInformation, Description, Rating,replace(UploadImage, 'C:\Users\K. Snehitha\Documents\ems updated\Admin\Admin', '') UploadImage, CreatedBy, CreatedIp, CreatedDate, 
                     ModifyBy, ModifyIp, ModifyDate, IsActive from tbl_AddProduct";
                SqlCommand command = new SqlCommand(query, connection);

                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        Panel_view.Controls.Add(new LiteralControl("<div class='container-fluid'>"));
                        Panel_view.Controls.Add(new LiteralControl("<div class='card2'>"));
                        Panel_view.Controls.Add(new LiteralControl("<div class='row'>"));
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            Panel_view.Controls.Add(new LiteralControl("<div class ='col-mg-12'>"));
                            Panel_view.Controls.Add(new LiteralControl("<div class='col-md-3'>"));
                            Panel_view.Controls.Add(new LiteralControl("<div class='card-container'>"));
                            Panel_view.Controls.Add(new LiteralControl("<div class='card-image'>"));

                            //Panel_view.Controls.Add(new Image { ImageUrl = ds.Tables[0].Rows[i]["UploadImage"].ToString() });

                            Panel_view.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });



                            Panel_view.Controls.Add(new LiteralControl("<p>"));
                            LinkButton lblContentName = new LinkButton();
                            lblContentName.Text = ds.Tables[0].Rows[i]["ProductName"].ToString();
                            lblContentName.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            lblContentName.Attributes.Add("style", "");
                            lblContentName.CommandName = "btn_view";
                            lblContentName.Click += new EventHandler(this.btn_link);
                            Panel_view.Controls.Add(lblContentName);
                            Panel_view.Controls.Add(new LiteralControl("</p>"));



                            Panel_view.Controls.Add(new LiteralControl("<p>"));
                            LinkButton lblDiscription = new LinkButton();
                            lblDiscription.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                            lblContentName.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            lblContentName.Attributes.Add("style", "");
                            lblContentName.CommandName = "btn_view";
                            lblContentName.Click += new EventHandler(this.btn_linkpr);
                            Panel_view.Controls.Add(lblDiscription);
                            Panel_view.Controls.Add(new LiteralControl("</p>"));


                            Button linkmemberview = new Button()
                            {
                                Text = "Add to Cart"
                            };

                            linkmemberview.Attributes.Add("runat", "server");
                            linkmemberview.Attributes.Add("Style", "background-color: #f6a21c; color: white; width: 18rem; height:4rem; font-size: 16px; border-radius: 3.5px; margin-left: 15px; margin - top: 10px;   border: none; ");
                            linkmemberview.CommandName = "btn_view";
                            linkmemberview.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                            // linkmemberview1.PostBackUrl = "Payment.aspx?ID=";
                            linkmemberview.Click += new EventHandler(this.btn_Cart);
                            linkmemberview.CausesValidation = false;
                            Panel_view.Controls.Add(linkmemberview);


                            Panel_view.Controls.Add(new LiteralControl("</div>"));
                            Panel_view.Controls.Add(new LiteralControl("</div>"));
                            Panel_view.Controls.Add(new LiteralControl("</div>"));
                            Panel_view.Controls.Add(new LiteralControl("</div>"));
                        }

                        Panel_view.Controls.Add(new LiteralControl("</div>"));
                        Panel_view.Controls.Add(new LiteralControl("</div>"));
                        Panel_view.Controls.Add(new LiteralControl("</div>"));
                    }
                }
            }
        }

        protected void btn_link(object sender, EventArgs e)
        {
            //if (Session["UserId"] == null)
            //{
            //    Response.Redirect("UserLogin.aspx");

            //}
            //else
            //{
            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }


        protected void btn_linkpr(object sender, EventArgs e)
        {

            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }



        protected void btn_Cart(object sender, EventArgs e)
        {

            string APID = ((Button)sender).CommandArgument;

            emsdal emsdal = new emsdal();
            DataSet ds = new DataSet();
            ds = emsdal.ins_tbl_cart(APID, "", "", "", "", "");

            string script = "<script>$('#myModal').modal('show');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

            binddataofrp1();
        }



        protected string PhotoBase64ImgSrc(string fileNameandPath)
        {
            string base64 = string.Empty;
            try
            {
                if (fileNameandPath == "0" || string.IsNullOrEmpty(fileNameandPath))
                {

                }
                else
                {
                    byte[] byteArray = File.ReadAllBytes(fileNameandPath);
                    base64 = Convert.ToBase64String(byteArray);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return string.Format("data:image/gif;base64,{0}", base64);

        }


        protected void rp_SellingProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Click")
            {
                int APID = Convert.ToInt32(e.CommandArgument);
                emsdal dl = new emsdal();
                DataSet ds = dl.ins_tbl_Product_Cart1(APID);
            }
        }


        /// repeators========================================statrs here =======

        protected void product_link_Click(object sender, EventArgs e)
        {

            string APID = ((LinkButton)sender).CommandArgument;
            emsdal da = new emsdal();

            Response.Redirect("product.aspx?APID=" + APID);
        }



        protected void cart_btn_Click(object sender, EventArgs e)
        {


            string APID = ((Button)sender).CommandArgument;
            emsdal emsdal = new emsdal();
            DataSet ds = new DataSet();
            ds = emsdal.ins_tbl_cart(APID, "", "", "", "", "");


            string script = "<script>$('#myModal').modal('show');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);


            //if (!ClientScript.IsStartupScriptRegistered("show-modal"))
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "myModal", "$('#myModal').modal('show');", true);
            //}
            //ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

            binddataofrp1();
        }

        protected void WishList_Click(object sender, EventArgs e)
        {

            string APID = ((LinkButton)sender).CommandArgument;

            emsdal emsdal = new emsdal();
            DataSet ds = new DataSet();
            ds = emsdal.ins_tbl_wishlist1(APID, "", "");

            string script = "<script>$('#myModal1').modal('show');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

            binddataofrp1();
        }





        public void get_CartCount()
        {

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("pr_CartCount1", con);
                {
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    cartprod.Text = count.ToString();
                    emsdal objdal = new emsdal();
                    DataSet ds = new DataSet();
                    ds = objdal.get_CartCount();
                }
            }
        }




        public void get_wishlistcount()
        {

            using (SqlConnection con = new SqlConnection(connectionString))
            {

                SqlCommand cmd = new SqlCommand("pr_countWishList", con);
                {
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    wishlst.Text = count.ToString();
                    emsdal objdal = new emsdal();
                    DataSet ds = new DataSet();
                    ds = objdal.get_wishlistcount();
                }
            }
        }


        //subscribers
        protected void btn_subscribe_ServerClick(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("UserLogin.aspx");

            }
            else
            {
                subscribe objpi = new subscribe();
                objpi.EmailAddress = txt_email.Value;

                emsdal objdal = new emsdal();
                DataSet ds = new DataSet();
                ds = objdal.ins_subscribe(objpi);

                Response.Write("<script>alert('Successfully Subcribed')</script>");

            }
        }
    }
}

//protected void loginvisblitity(object sender, EventArgs e)
//{

//    if (Request.QueryString.Count != 0)
//    {
//        Button btnlogout = this.Master.FindControl("logout_btn") as Button;
//        btnlogout.Visible = true;
//        Button btnlogin = this.Master.FindControl("login_btn") as Button;
//        btnlogin.Visible = false;
//    }

//    else
//    {
//        Button btnlogout = this.Master.FindControl("logout_btn") as Button;
//        btnlogout.Visible = false;
//        Button btnlogin = this.Master.FindControl("login_btn") as Button;
//        btnlogin.Visible = true;

//    }
//}











/// repeators========================================statrs here =======


//    protected void Unnamed_ServerClick(object sender, EventArgs e)
//    {

//        HtmlAnchor myAnchor = (HtmlAnchor)myAnchorElement; // Correct


//        emsdal emsdal = new emsdal();
//        DataSet ds = new DataSet();
//        ds = emsdal.ins_tbl_Product_Cart(APID, "", "", "", "");
//        string script = "<script> alert('Item is Add To Cart');</script>";
//        ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);
//    }
//}


//if (ds.Tables[0].Rows.Count > 0)
//{
//    Panel_Offers.Controls.Add(new LiteralControl("<div class='container'>"));
//    Panel_Offers.Controls.Add(new LiteralControl("<div class='card'>"));
//    Panel_Offers.Controls.Add(new LiteralControl("<div class='row'>"));
//    Panel_Offers.Controls.Add(new LiteralControl("<div class='col-lg-3'>"));

//    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)

//    {

//      //  Panel_Offers.Controls.Add(new LiteralControl("<tr>"));
//      //  Panel_Offers.Controls.Add(new LiteralControl("<td>"));

//        Panel_Offers.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["Imageurl"].ToString()) });
//      //  Panel_Offers.Attributes.Add("style", " width: 50%;");
//      //  Panel_Offers.Controls.Add(new LiteralControl("<td>"));
//      //  Panel_Offers.Controls.Add(new LiteralControl("</tr>"));
//    }

//    //Panel_Offers.Controls.Add(new LiteralControl("</td>"));
//    //Panel_Offers.Controls.Add(new LiteralControl("</tr>"));
//    //Panel_Offers.Controls.Add(new LiteralControl("</table>"));

//    Panel_Offers.Controls.Add(new LiteralControl("</div>"));
//    Panel_Offers.Controls.Add(new LiteralControl("</div>"));
//    Panel_Offers.Controls.Add(new LiteralControl("</div>"));
//    Panel_Offers.Controls.Add(new LiteralControl("</div>"));



/// ====================GALLERY BANNER IMAGES ====  ENDS HERE ===================>


/// ====================TOP SELLING PRODUCTS IMAGES  STARTS HERE ===================>



//protected void cart_btn_ServerClick(object sender, EventArgs e)
//{
//    //string APID = ((Button)sender).CommandArgument;
//    //emsdal emsdal = new emsdal();
//    //DataSet ds = new DataSet();
//    //ds = emsdal.ins_tbl_Product_Cart(APID, "", "", "", "");
//    //string script = "<script> alert('Item is Add To Cart');</script>";
//    //ClientScript.RegisterStartupScript(this.GetType(), "popupscript", script);

//    Button btn = (sender as Button);
//    RepeaterItem item = btn.NamingContainer as RepeaterItem;
//    int index = item.ItemIndex;
//    Label hdn = item.FindControl("Card") as Label;
//    int APID = Convert.ToInt32(hdn.Text);

//}




