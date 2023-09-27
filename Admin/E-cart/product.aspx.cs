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
using System.Web.UI.WebControls;

namespace Admin.E_cart
{
    public partial class product : System.Web.UI.Page
    {
        string APID;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["APID"] != null)
            {
                APID = Request.QueryString["APID"];

            }

            BindData();
        }

        Label lblnm = new Label();

        private void BindData()
        {

            string connection1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();


            int i = 0;
            //DataTable dataTable = new DataTable();
            emsdal da = new emsdal();
            DataSet ds = new DataSet();
            ds = da.ProductDetails(APID);


            if (ds.Tables[0].Rows.Count > 0)
            {

                Panel_p1.Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = (ds.Tables[0].Rows[i]["UploadImage"].ToString()) });


                Panel_productname.Controls.Add(new LiteralControl("<h1>"));
                Label lblnm11 = new Label();
                Panel_productname.GroupingText = ds.Tables[0].Rows[i]["ProductName"].ToString();
                Panel_productname.Controls.Add(lblnm11);
                Panel_productname.Controls.Add(new LiteralControl("</h1>"));


                Panel_productname.Controls.Add(new LiteralControl("<p>Description:- "));
                Label lblnm1 = new Label();
                lblnm1.Text = ds.Tables[0].Rows[i]["Description"].ToString();
                Panel_productname.Controls.Add(lblnm1);
                Panel_productname.Controls.Add(new LiteralControl("</p>"));


                Panel_productname.Controls.Add(new LiteralControl("<p>AdditionalInformation:- "));
                Label lblnm2 = new Label();
                lblnm2.Text = ds.Tables[0].Rows[i]["AdditionalInformation"].ToString();
                Panel_productname.Controls.Add(lblnm2);
                Panel_productname.Controls.Add(new LiteralControl("</p>"));


                Panel_productname.Controls.Add(new LiteralControl("<h6>Brand:-"));
                Label lblnm4 = new Label();
                lblnm4.Text = ds.Tables[0].Rows[i]["Brand"].ToString();
                Panel_productname.Controls.Add(lblnm4);
                Panel_productname.Controls.Add(new LiteralControl("</h6>"));


                Panel_productname.Controls.Add(new LiteralControl("<h6>Model:-"));
                Label lblnm5 = new Label();
                lblnm5.Text = ds.Tables[0].Rows[i]["Model"].ToString();
                Panel_productname.Controls.Add(lblnm5);
                Panel_productname.Controls.Add(new LiteralControl("</h6>"));


                Panel_productname.Controls.Add(new LiteralControl("<h6>Price:-"));

                lblnm.Text = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                Panel_productname.Controls.Add(lblnm);
                Panel_productname.Controls.Add(new LiteralControl("</h6>"));

                Button linkmemberview1 = new Button()
                {
                    Text = "Buy Now"
                };

                linkmemberview1.Attributes.Add("runat", "server");
                linkmemberview1.Attributes.Add("Style", "background-color:  #f6a21c; color: white; width: 16rem; height: 37px; margin - left: 45px; border: none; border - radius: 6px; height: 4.5rem; font-size:16px; ");
                linkmemberview1.CommandName = "btn_view";
                linkmemberview1.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                linkmemberview1.Click += new EventHandler(this.btn_buy_Click);
                linkmemberview1.CausesValidation = false;
                Panel_productname.Controls.Add(linkmemberview1);

                Button linkmemberview = new Button()
                {
                    Text = "cancel"
                };

                linkmemberview.Attributes.Add("runat", "server");
                linkmemberview.Attributes.Add("Style", "background-color:  #113366; color: white; width: 16rem; height: 37px;  margin-left: 16px;  border: none; border - radius: 6px; height: 4.5rem; font-size:16px;");


                linkmemberview.CommandName = "btn_view";
                linkmemberview.CommandArgument = ds.Tables[0].Rows[i]["APID"].ToString();
                linkmemberview.Click += new EventHandler(this.btn_cancel_Click);
                linkmemberview.CausesValidation = false;
                Panel_productname.Controls.Add(linkmemberview);

            }

            Session["qnt"] = qnty.Text;
        }

        //btn_cancel_Click

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("index1.aspx");

        }

        //btn_buy_Click
        protected void btn_buy_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string apid = btn.CommandArgument;
            Session["Id"] = apid;
            Response.Redirect("check.aspx?APID=" + apid);
        }


        //btnPlus_Click
        protected void btnPlus_Click(object sender, EventArgs e)
        {
            int i = 0;
            emsdal da = new emsdal();
            DataSet ds = new DataSet();
            ds = da.ProductDetails(APID);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["qnt"] = qnty.Text;
                int quantity = int.Parse(qnty.Text);
                if (quantity < 15)
                {
                    quantity++;
                    qnty.Text = quantity.ToString("D2");
                }

                decimal price = Convert.ToDecimal(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                int qnty1 = Convert.ToInt32(qnty.Text);

                lblnm.Text = (price * qnty1).ToString();
            }
        }

        //btnMinus_Click
        protected void btnMinus_Click(object sender, EventArgs e)
        {
            int i = 0;
            emsdal da = new emsdal();
            DataSet ds = new DataSet();
            ds = da.ProductDetails(APID);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int quantity = int.Parse(qnty.Text);
                if (quantity > 1)
                {
                    quantity--;
                    qnty.Text = quantity.ToString("D2"); // Format as "01", "02", etc.

                    decimal price = Convert.ToDecimal(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                    int qnty1 = Convert.ToInt32(qnty.Text);

                    lblnm.Text = (price * qnty1).ToString();
                }
            }
        }
    }
}
