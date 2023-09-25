using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin.seller_login
{
    public partial class SellerLogin : System.Web.UI.Page
    {
        public string UserId { get; private set; }
        public string Password { get; private set; }
    

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btn_Seller_log_Click1(object sender, EventArgs e)
        //{
        //    sellerlogin obj = new sellerlogin();
        //    obj.EmailId = txt_userid.Text;
        //    obj.Password = txt_password.Text;

        //    emsdal objdal = new emsdal();

        //    DataSet ds = objdal.sellerlogin1(obj);

        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        Response.Redirect("sellerscreen.aspx");
                   
        //    }
        //    else
        //    {
        //        //Response.Write("<script>alert('Invalid Email Id & Password')</script>");


        //    }
        //}
    }
}