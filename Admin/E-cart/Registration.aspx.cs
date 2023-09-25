using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin.E_cart
{
    public partial class Registration : System.Web.UI.Page
    {
   

        protected void Page_Load(object sender, EventArgs e)
        {
         
            pass.Visible = true;
            rfvEmailid.Visible = true;

        }

        protected void cvPassword_ServerValidate(object source, ServerValidateEventArgs args)
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


        protected void reg_click_submit(object sender, EventArgs e)
        {
            Registrationk obj = new Registrationk();
            obj.FirstName = txt_firstName.Text;
            obj.LastName = txt_LastName.Text;
            obj.Email = txt_EmailId.Text;
            obj.MobileNo = txt_phonenumber.Text;
            obj.UserId = txt_userid.Text;
            obj.DOB = Convert.ToDateTime(txt_DOB.Text);
            obj.Pincode = txt_pincode.Text;
            obj.Locality = txt_locality.Text;
            obj.Address = txt_add.Text;
            obj.State = txt_state.Text;
            obj.City = txt_city.Text;
            obj.ConfirmPassword = txt_confmpassword.Text;
            obj.Gender = Radiobtn.SelectedItem.Text;
            using (var sha256 = SHA256.Create())
            {
                // Convert the password string to bytes
                byte[] passwordBytes = Encoding.UTF8.GetBytes(txt_password.Text);

                // Compute the hash value of the password bytes
                byte[] hashBytes = sha256.ComputeHash(passwordBytes);

                // Convert the hash bytes to a string representation
                string hashedPassword = Convert.ToBase64String(hashBytes);

                obj.Password_hash = hashedPassword;
            }

            emsdal objs = new emsdal();
            DataSet ds = objs.ins_Registration(obj);


            pass.Visible = true;
          //  cvconfirmpassword.Visible = true;
            rfvEmailid.Visible = true;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Send", "alert('successfully Register');", true);

            Response.Redirect("UserLogin.aspx");
        }
    }
}
