using Admin.Models;
using System;
using System.Data;
using static Admin.Models.EMSclass;
using System.Web.Script.Serialization;

namespace Admin
{
    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_login(object sender, EventArgs e)
        {
            signin obj = new signin();

            obj.EmailId = txtname.Text;
            obj.Password = txtpass.Text;

            emsdal objdal = new emsdal();
            DataSet ds = objdal.get_AdminLogin(obj);
            if(ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
               
                Response.Write("<script>alert('Invalid Userid & Password')</script>");

            }
        }
    }
}
