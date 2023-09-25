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


                Panel_productname.Controls.Add(new LiteralControl("<h6> Discount:-"));
                Label lblnm3 = new Label();
                lblnm3.Text = ds.Tables[0].Rows[i]["Discount"].ToString();
                Panel_productname.Controls.Add(lblnm3);
                Panel_productname.Controls.Add(new LiteralControl("</h6> "));


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
                Label lblnm = new Label();
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
                //linkmemberview1.PostBackUrl="Payment.aspx?ID="
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
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("index1.aspx");

        }

        protected void btn_buy_Click(object sender, EventArgs e)
        {

            // Get the APID from the CommandArgument
            Button btn = (Button)sender;
            string apid = btn.CommandArgument;

                Response.Redirect("check.aspx?APID=" + apid);
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

    }
}
