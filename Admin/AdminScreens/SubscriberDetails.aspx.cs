using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.AdminScreens
{
    public partial class SubscriberDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }
        public void GetData()
        {
            emsdal objdal = new emsdal();
            DataSet ds = new DataSet();
            ds = objdal.get_Subscriberdetails();
            grdsubscribersdetails.DataSource = ds;
            grdsubscribersdetails.DataBind();

        }

    }

}