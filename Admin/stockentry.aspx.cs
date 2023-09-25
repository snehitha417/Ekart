using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.BO;

namespace Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["type"] != null)
                {
                    if (Session["date"] != null && !string.IsNullOrWhiteSpace(Session["date"].ToString()))
                    {
                        txt_date.Text = Session["date"].ToString();


                        txtName.Text = Session["name"].ToString();
                        txtitem.Text = Session["id"].ToString();
                        ddbrand.SelectedItem.Text = Session["brand"].ToString();
                        txtmodel.Text = Session["Model"].ToString();
                        txtqty.Text = Session["Qty"].ToString();
                        txtprice.Text = Session["price"].ToString();
                        txtLadno.Text = Session["loadno"].ToString();
                        txtDes.Text = Session["Description"].ToString();
                        txtrate.Text = Session["Rating"].ToString();
                        txtOff.Text = Session["Offers"].ToString();
                        fileUpload.ToolTip = Session["filePath"].ToString();
                        btnRegister.Text = "Update";
                    }

                    else
                    {

                    }
                }
                else
                {

                }
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {


            if (fileUpload.HasFile)
            {
                hdnuploadfilename.Value = fileUpload.FileName;
                string fileName = fileUpload.FileName;
                string filePath = Server.MapPath("~/Uploads/") + fileName;
                fileUpload.SaveAs(filePath);

                Session["filePath"] = filePath;
                // Perform any additional processing with the uploaded file
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)

        {
            StockEntry objp = new StockEntry();
            objp.SEDate = Convert.ToDateTime(txt_date.Text);
            objp.ItemName = txtName.Text;
            objp.ItemId = txtitem.Text;
            objp.BrandName = ddbrand.SelectedItem.Text;
            objp.Model = txtmodel.Text;
            objp.Quantity = Convert.ToInt32(txtqty.Text);
            objp.Price = Convert.ToInt32(txtprice.Text);
            objp.description = txtDes.Text;
            objp.rating = txtrate.Text;
            objp.offers = txtOff.Text;


            objp.CreatedBy = ("  ");
            objp.CreatedIp = ("  ");
            objp.ModifyBy = (" ");
            objp.ModifyIp = (" ");
            objp.IsActive = (" ");
            objp.Img = Session["filePath"].ToString();
            objp.LoadNo = txtLadno.Text;

            if (btnRegister.Text == "Submit")
            {


                int result = 0;

                Dal objDAL = new Dal();
                DataSet ds = objDAL.ins_tbl_StockEntry(objp);

                try
                {
                    if (result > 0)
                    {


                    }
                    else
                    {

                    }
                    txt_date.Text = null;
                    txtitem.Text = null;
                    txtLadno.Text = null;
                    txtmodel.Text = null;
                    txtName.Text = null;
                    txtqty.Text = null;
                    txtprice.Text = null;
                    ddbrand.Text = null;
                    txtDes.Text = null;
                    txtOff.Text = null;
                    txtrate.Text = null;
                }

                catch (Exception ex)
                {

                    throw ex;

                }
            }
            else
            {
                btnRegister.Text = "Submit";
                Dal dl = new Dal();
                int SEId = int.Parse(Request.QueryString["ID"]);
                DataSet ds = new DataSet();
                ds = dl.Update_Stock(SEId, objp);

            }
            txt_date.Text = null;
            txtitem.Text = null;
            txtLadno.Text = null;
            txtmodel.Text = null;
            txtName.Text = null;
            txtqty.Text = null;
            txtprice.Text = null;
            ddbrand.Text = null;
            txtDes.Text = null;
            txtOff.Text = null;
            txtrate.Text = null;
        }
    }
}



