using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin.E_cart
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnPay_Click(object sender, EventArgs e)
        {
            PaymentDetails objpi = new PaymentDetails();

            objpi.CardNumber = txt_cardno.Text;
            objpi.CardHolderName = txt_holdr.Text;
            objpi.Month = txt_month.Text;
            objpi.Year = txt_year.Text;
            objpi.CVV = txt_cvv.Text;

            emsdal obj = new emsdal();
            DataSet ds = new DataSet();
            ds = obj.inspaymentdetails(objpi);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Send", "alert('payment sucessfull');", true);

            Response.Redirect("PaymentSuccesfull.aspx");
        }

      protected void cancl_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }
    }

}