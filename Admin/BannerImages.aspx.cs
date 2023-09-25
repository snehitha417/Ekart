using Admin.Models;
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
    public partial class BannerImages : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void upl_Click(object sender, EventArgs e)
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


        //protected void submitt_Click_bann(object sender, EventArgs e)
        //{
        //    Banner objp = new Banner();

        //    objp.BannerName = txt_BannerName.Text;
        //    objp.UploadDate = Convert.ToDateTime(txt_UploadDate.Text);
        //    objp.Content = txt_Content.Text;

        //    objp.Imageurl = Session["filePath"].ToString();
          
            
        //        int result = 0;
        //        emsdal objDAL = new emsdal();
        //        DataSet ds = objDAL.Banner(objp);

        //        try
        //        {
        //            if (result > 0)
        //            {
        //                Response.Clear();
        //            }
        //            else
        //            {

        //            }
        //        }

        //        catch (Exception ex)
        //        {

        //            throw ex;

        //        }
        //    }
        
        }
    }
