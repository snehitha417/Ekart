using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class VendorLogin : System.Web.UI.Page
    {
        public string PhoneNumber { get; private set; }
        public string BussinessEmailId { get; private set; }
        public object CreatedBy { get; internal set; }
        public object CreatedIp { get; internal set; }
        public DateTime CreatedDate { get; internal set; }
        public object IsActive { get; internal set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btn_VendorLogin(object sender, EventArgs e)
        //{

        //    VendorLogin obj = new VendorLogin();
        //    obj.BussinessEmailId = txt_emailid.Text;
        //    obj.PhoneNumber = txt_phonenumber.Text;

        //    emsdal objdal = new emsdal();

        //    DataSet ds = objdal.VendorLogin1(obj);

        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        Response.Redirect("sellerscreen.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Invalid Email Id & Password')</script>");
        //    }
        //}
    }
}

     
