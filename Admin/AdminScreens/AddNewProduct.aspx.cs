using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin.AdminScreens
{
    public partial class AddNewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["type"] != null)
                {
                    if (Session["date"] != null && !string.IsNullOrWhiteSpace(Session["date"].ToString()))
                    {

                        txt_entrydate.Text = Session["date"].ToString();
                        txt_productName.Text = Session["name"].ToString();
                        txt_productprice.Text = Session["price"].ToString();
                        txt_discount.Text = Session["Discount"].ToString();
                        txt_rating.Text = Session["Rating"].ToString();
                        txt_modal.Text = Session["Model"].ToString();
                        txt_brand.Text = Session["Brand"].ToString();
                        txt_addinf.Text = Session["information"].ToString();
                        txt_descrip.Text = Session["Description"].ToString();
                        FileuploadImage.ToolTip = Session["filePath"].ToString();
                        Button1.Text = "Update";
                    }
                }
            } 
        }

        protected void Product_submitt_Click(object sender, EventArgs e)
        {
            AddProducts objpi = new AddProducts();

            objpi.EntryDate = Convert.ToDateTime(txt_entrydate.Text);
            objpi.ProductName = txt_productName.Text;
            objpi.ProductPrice = txt_productprice.Text;
            objpi.Discount = txt_discount.Text;
            objpi.Rating = txt_rating.Text;
            objpi.Model = txt_modal.Text;
            objpi.Brand = txt_brand.Text;
            objpi.AdditionalInformation = txt_addinf.Text;
            objpi.Description = txt_descrip.Text;
            objpi.UploadImage = Session["filePath"].ToString();
            objpi.CreatedBy = "0";
            objpi.CreatedIp = "0";
            objpi.CreatedDate = DateTime.Now;
            objpi.IsActive = "1";

            if (Button1.Text == "Submitt")
            {
                int result = 0;
                emsdal objDAL = new emsdal();
                DataSet ds = objDAL.AddProduct(objpi);

                try
                {
                    if (result > 0)
                    {
                        Response.Clear();
                    }
                    else
                    {

                    }

                    txt_entrydate.Text = null;
                    txt_productName.Text = null;
                    txt_productprice.Text = null;
                    txt_modal.Text = null;
                    txt_addinf.Text = null;
                    txt_descrip.Text = null;
                    txt_discount.Text = null;
                    txt_rating.Text = null;
                    txt_brand.Text = null;
                }

                catch (Exception ex)
                {

                    throw ex;

                }
            }
            else
            {
                Button1.Text = "Submitt";
                emsdal ds = new emsdal();
                int APID = int.Parse(Request.QueryString["ID"]);
                DataSet ds1 = new DataSet();
                ds1 = ds.update_product(APID, objpi);
            }

            txt_entrydate.Text = null;
            txt_productName.Text = null;
            txt_productprice.Text = null;
            txt_modal.Text = null;
            txt_addinf.Text = null;
            txt_descrip.Text = null;
            txt_discount.Text = null;
            txt_rating.Text = null;
            txt_brand.Text = null;

            //ScriptManager.RegisterStartupScript(this, typeof(string), "Send", "alert('successfully uploadSS');", true);
     
        }

        protected void Product_upl_Click(object sender, EventArgs e)
        {


            if (FileuploadImage.HasFile)
            {
                hdnuploadfilename.Value = FileuploadImage.FileName;
                string fileName = FileuploadImage.FileName;
                string filePath = Server.MapPath("~/banner/") + fileName;
                FileuploadImage.SaveAs(filePath);

                Session["filePath"] = filePath;
                //  Perform any additional processing with the uploaded file
            }

        }

    }
}