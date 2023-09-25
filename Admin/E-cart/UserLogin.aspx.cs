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
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ulog(object sender, EventArgs e)
        {
            userlogin obj = new userlogin();

            obj.UserId = txt_Userid.Text;

           using (var sha256 = SHA256.Create())
            {
                // Convert the password string to bytes
                byte[] passwordBytes = Encoding.UTF8.GetBytes(txt_Password.Text);

                // Compute the hash value of the password bytes
                byte[] hashBytes = sha256.ComputeHash(passwordBytes);

                // Convert the hash bytes to a string representation
                string hashedPassword = Convert.ToBase64String(hashBytes);

                obj.Password_hash = hashedPassword;
            }

            emsdal objdal = new emsdal();
            DataSet ds = new DataSet();

            ds = objdal.btn_ulogin(obj);

            if (ds.Tables[0].Rows.Count > 0)
            {

                Session["FirstName"] = ds.Tables[0].Rows[0]["FirstName"].ToString();
                Session["LastName"] = ds.Tables[0].Rows[0]["LastName"].ToString();
                Session["DOB"] = ds.Tables[0].Rows[0]["DOB"].ToString();
                Session["Email"] = ds.Tables[0].Rows[0]["Email"].ToString();
                Session["Password_hash"] = ds.Tables[0].Rows[0]["Password_hash"].ToString();
                Session["ConfirmPassword"] = ds.Tables[0].Rows[0]["ConfirmPassword"].ToString();
                Session["MobileNo"] = ds.Tables[0].Rows[0]["MobileNo"].ToString();
                Session["Pincode"] = ds.Tables[0].Rows[0]["Pincode"].ToString();
                Session["Locality"] = ds.Tables[0].Rows[0]["Locality"].ToString();
                Session["Address"] = ds.Tables[0].Rows[0]["Address"].ToString();
                Session["State"] = ds.Tables[0].Rows[0]["State"].ToString();
                Session["City"] = ds.Tables[0].Rows[0]["City"].ToString();
                Session["UserId"] = ds.Tables[0].Rows[0]["UserId"].ToString();
               

                Response.Redirect("index1.aspx");

            }
            else
            {

                Response.Write("<script>alert('Invalid Userid & Password')</script>");
            }
        }

    }
}
