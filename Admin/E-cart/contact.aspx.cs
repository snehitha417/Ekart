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
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rfvfname.Visible = false;
            email.Visible = false;
            phone.Visible = false;
            subj.Visible = false;
            msg.Visible = false;
        }

        protected void sendMessageButton_Click(object sender, EventArgs e)
        {
            contact1 objpi = new contact1();
            objpi.Name = txtname.Text;
            objpi.Email = txt_email.Text;
            objpi.PhoneNumber = txt_phone.Text;
            objpi.Subject = txt_subj.Text;
            objpi.Message = txt_msg.Text;
            objpi.CreatedBy = "0";
            objpi.createdIp = "0";
            objpi.IsActive = "0";


            emsdal objdal = new emsdal();

            DataSet ds = new DataSet();
            ds = objdal.inscontact_page(objpi);

            Response.Write("<script>alert('successfully send a message')</script>");
               
           
        }
    }
}