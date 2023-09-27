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
    public partial class AddNewEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            AddEvents1 objpi = new AddEvents1();

            objpi.EventName = txt_EventName.Text;
            objpi.Eventstartdate = Convert.ToDateTime(txt_StartDate.Text);
            objpi.Eventenddate = Convert.ToDateTime(txt_EndDate.Text);
            objpi.ImgUrl = Session["filePath"].ToString();

            emsdal objDAL = new emsdal();
            DataSet ds = new DataSet();
            ds = objDAL.ins_AddEvents(objpi);

            Response.Write("<script>alert('Successfully submited')</script>");
        }

        protected void upl_Click(object sender, EventArgs e)
        {
            if (FileuploadImage.HasFile)
            {
                hdnuploadfilename.Value = FileuploadImage.FileName;
                string fileName = FileuploadImage.FileName;
                string filePath = Server.MapPath("~/banner/") + fileName;
                FileuploadImage.SaveAs(filePath);

                Session["filePath"] = filePath;

                lblImgStatus.Text = "Image Uploaded";
                lblImgStatus.ForeColor = System.Drawing.Color.ForestGreen;

            }
            else
            {
                lblImgStatus.Text = "Please Select your file";
                lblImgStatus.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}