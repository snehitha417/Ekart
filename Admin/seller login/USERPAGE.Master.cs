using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.seller_login
{
    public partial class USERPAGE : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //protected void homepage_login_btn(object sender, EventArgs e)
        //{
            
        //    Response.Redirect("userlogin.aspx");

        //    //RepeaterItem it = (sender as Button).Parent as RepeaterItem;
        //    //this.ToggleElements(it, true);

        //}

        //protected void logout_btn_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("userlogin.aspx");
        //}


        //private void ToggleElements(RepeaterItem it, bool v)
        //{
        //    it.FindControl("login_btn").Visible = false;
        //    it.FindControl("logout_btn").Visible = true;
        //}

    }
}