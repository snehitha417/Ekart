using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.seller_login
{
    public partial class businessdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //option1.visible = false;
        }
        protected void radioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radioButtonList.SelectedValue == "option1")
            {
                Label1.Visible = true;
                input1.Visible = true;
                Button1.Visible = true;

            }
            else
            {
                input1.Visible = false;
                Label1.Visible = false;
                Button1.Visible = false;

            }
            if (radioButtonList.SelectedValue == "option2")
            {
                myDiv.Visible = true;
                
            }
            else
            {
                myDiv.Visible = false;
            }
            if (radioButtonList.SelectedValue == "option3")
            {
                Label3.Visible = true;
                input3.Visible = true;
                Button3.Visible = true;
            }
            else
            {
                Label3.Visible = false;
                input3.Visible = false;
                Button3.Visible = false;
            }
            
        }
        protected void btncontinue(object sender, EventArgs e)
        {
            Response.Redirect("addbankdetails.aspx");
        }
    }
}