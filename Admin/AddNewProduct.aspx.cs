﻿using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin
{
    public partial class addnewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Product_submitt_Click(object sender, EventArgs e)
        //{
        //    AddProducts objpi = new AddProducts();

        //    objpi.EntryDate = Convert.ToDateTime(txt_entrydate.Text);
        //    objpi.ProductName = txt_productName.Text;
        //    objpi.ProductPrice = txt_productprice.Text;
        //    objpi.Discount = txt_discount.Text;
        //    objpi.Rating = txt_rating.Text;
        //    objpi.Model = txt_modal.Text;
        //    objpi.Brand = txt_brand.Text;
        //    objpi.AdditionalInformation = txt_addinf.Text;
        //    objpi.Description = txt_descrip.Text;
        //    objpi.UploadImage = Session["filePath"].ToString();
        //    objpi.CreatedBy = "0";
        //    objpi.CreatedIp = "0";
        //    objpi.CreatedDate = DateTime.Now;
        //    objpi.IsActive = "1";

        //    int result = 0;
        //    emsdal objDAL = new emsdal();
        //    DataSet ds = objDAL.AddProduct(objpi);

        //    try
        //    {
        //        if (result > 0)
        //        {
        //            Response.Clear();
        //        }
        //        else
        //        {

        //        }
        //    }

        //    catch (Exception ex)
        //    {

        //        throw ex;

        //    }
        //}
      
        //protected void Product_upl_Click(object sender, EventArgs e)
        //{


        //    if (FileuploadImage.HasFile)
        //    {
        //        hdnuploadfilename.Value = FileuploadImage.FileName;
        //        string fileName = FileuploadImage.FileName;
        //        string filePath = Server.MapPath("~/banner/") + fileName;
        //        FileuploadImage.SaveAs(filePath);

        //        Session["filePath"] = filePath;
        //        //  Perform any additional processing with the uploaded file
        //    }

        //}

    }
}