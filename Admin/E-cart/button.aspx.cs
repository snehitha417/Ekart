﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.E_cart
{
    public partial class button : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                

            }
        }

        protected void Button_change_Click(object sender, EventArgs e)
        {
           
            btn_cnfrmcheckout.Visible = !btn_cnfrmcheckout.Visible;
        }

    }
}
