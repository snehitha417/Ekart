﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.seller_login
{
    public partial class addbankdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_sbmtt(object sender, EventArgs e)
        {
            Response.Redirect("sellerscreen.aspx");
        }
    }
}