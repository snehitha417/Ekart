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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btn_log_Click(object sender, EventArgs e)
        {
            emsdal objDal = new emsdal();
            signin objpi = new signin();
            DataSet ds = new DataSet();
            objpi.EmailId = txt_email.Text;
            objpi.Password = txt_psw.Text;
            ds = objDal.get_AdminLogin(objpi);

            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("AdminDashBoard.aspx");
                
            }
            else
            {
                Response.Write("<script> alert ('Invalid Email & Password')</script>");
                //lblErrorMessage.Text = "Invalid";
            }

        }
    }
}