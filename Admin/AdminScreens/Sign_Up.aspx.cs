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
    public partial class Sign_Up : System.Web.UI.Page
    {
     

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    //Password.Visible = false;
        //    //confirmpassword.Visible = true;
        //    //revEmail.Visible = true;

        //}

        //protected void cvPassword_ServerValidate(object source, ServerValidateEventArgs args)
        //{
            //string password = TextBox5.Text;
            // Implement your password validation rules here
            // Example rules:
        //    bool isValid =
        //        password.Length >= 8 &&
        //        password.Any(char.IsUpper) &&
        //        password.Any(char.IsLower) &&
        //        password.Any(char.IsDigit) &&
        //        password.Any(ch => !char.IsLetterOrDigit(ch));

        //    args.IsValid = isValid;
        //}

       // protected void btnsubmit(object sender, EventArgs e)
        //{
        //    AdminReg obj = new AdminReg();

        //    obj.FirstName = TextBox1.Text;
        //    obj.LastName = TextBox2.Text;
        //    obj.EmailId = TextBox3.Text;
        //    obj.PhoneNumber = TextBox4.Text;
        //    obj.Password = TextBox5.Text;
        //    obj.ConfirmPassword = TextBox6.Text;
        //    obj.UserId= TextBox7.Text;
        //    obj.DOB = Convert.ToDateTime(TextBox8.Text);
        //    obj.Aadhar =TextBox9.Text;
        //    obj.PanNo = TextBox10.Text;
        //    obj.Gender = Radiobtn.SelectedItem.Text;
        //    emsdal objdal = new emsdal();
 
        //    DataSet ds = objdal.adminreg(obj);


        //    Password.Visible = true;
        //    confirmpassword.Visible = true;
        //    revEmail.Visible = true;
        //    ScriptManager.RegisterStartupScript(this, typeof(string), "Send","alert('successfully Updated');", true);
        //    Response.Redirect("login.aspx");
        //}
    }
}

