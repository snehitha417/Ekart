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
    public partial class RegistrationForm : System.Web.UI.Page
    {
        //        protected void Page_Load(object sender, EventArgs e)
        //        {
        //            pass.Visible = true;
        //            cvconfirmpassword.Visible = false;
        //            rfvEmailid.Visible = true;

        //        }

        //        protected void cvPassword_ServerValidate(object source, ServerValidateEventArgs args)
        //        {
        //            string password = txt_password.Text;
        //            // Implement your password validation rules here
        //            // Example rules:
        //            bool isValid =
        //                password.Length >= 8 &&
        //                password.Any(char.IsUpper) &&
        //                password.Any(char.IsLower) &&
        //                password.Any(char.IsDigit) &&
        //                password.Any(ch => !char.IsLetterOrDigit(ch));

        //            args.IsValid = isValid;
        //        }


        //        protected void reg_Click(object sender, EventArgs e)
        //        {
        //            UserRegistration obj = new UserRegistration();
        //            obj.FirstName = txt_firstName.Text;
        //            obj.LastName = txt_LastName.Text;
        //            obj.EmailId = txt_EmailId.Text;
        //            obj.Phone_Number = txt_phonenumber.Text;


        //            using (var sha256 = SHA256.Create())
        //            {
        //                // Convert the password string to bytes
        //                byte[] passwordBytes = Encoding.UTF8.GetBytes(txt_password.Text);

        //                // Compute the hash value of the password bytes
        //                byte[] hashBytes = sha256.ComputeHash(passwordBytes);

        //                // Convert the hash bytes to a string representation
        //                string hashedPassword = Convert.ToBase64String(hashBytes);

        //                obj.Password_hash = hashedPassword;
        //            }

        //            obj.ConfirmPassword = txt_confmpassword.Text;
        //            obj.DOB = Convert.ToDateTime(txt_DOB.Text);
        //            obj.Gender = Radiobtn.SelectedItem.Text;
        //            obj.UserId = txt_userid.Text;

        //            emsdal objs = new emsdal();
        //            DataSet ds = objs.UserRegistration1(obj);


        //            pass.Visible = true;
        //            cvconfirmpassword.Visible = true;
        //            rfvEmailid.Visible = true;

        //            ScriptManager.RegisterStartupScript(this, this.GetType(), "Send", "alert('successfully Register');", true);

        //            Response.Redirect("UserLogin.aspx");
    }
   }

