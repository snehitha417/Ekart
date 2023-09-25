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
    public partial class create_account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            revEmailid.Visible = true;
            setpassword.Visible = false;
            sPassword.Visible = false;

            //mobileno.Visible = false;

            //mobileno.Visible = false;
        }
        protected void setPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string password = txt_password.Text;
            // Implement your password validation rules here
            // Example rules:
            bool isValid =
                password.Length >= 8 &&
                password.Any(char.IsUpper) &&
                password.Any(char.IsLower) &&
                password.Any(char.IsDigit) &&
                password.Any(ch => !char.IsLetterOrDigit(ch));

            args.IsValid = isValid;
        }


        protected void btn_reg_Click(object sender, EventArgs e)
        {
            //    SellerRegestration objpi = new SellerRegestration();

            //    objpi.EmailId = txt_email.Text;
            //    objpi.MobileNumber = txt_mobileno.Text;
            //    objpi.FullName = txt_fulname.Text;
            //    objpi.SetPassword = txt_password.Text;
            //    objpi.CreatedBy = ("");
            //    objpi.CreatedIp = ("");
            //    objpi.modifyBy = ("");
            //    objpi.ModifyIp = ("");
            //    objpi.IsActive = ("");
            //   // objpi.Modifydate = ("DateTime.Now");
            //    emsdal objs = new emsdal();
            //   DataSet ds = objs.VendorRegistration1(objpi);



            //    mobileno.Visible = true;
            //    revEmailid.Visible = true;
            //    sPassword.Visible = true;

            //    ScriptManager.RegisterStartupScript(this, typeof(string), "Send", "alert('successfully Register');", true);

            //    Response.Redirect("SellerLogin.aspx");

        }

    }
}
