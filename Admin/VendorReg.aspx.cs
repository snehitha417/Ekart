using Admin.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Admin.Models.EMSclass;

namespace Admin
{
    public partial class vendor_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void vendorReg_submitt(object sender, EventArgs e)
        //{
        //    VendorRegistration obj = new VendorRegistration();

        //    obj.FirstName              = txt_fstname.Text;
        //    obj.LastName               = txt_LastName.Text;
        //    obj.BussinessEmailId       = txt_EmailId.Text;
        //    obj.PhoneNumber            = txt_phonenumber.Text;
        //    obj.CompanyName            = txt_cmpyname.Text;
        //    obj.BusinessIndustry       = txt_Industry.Text;
        //    obj.NumberofEmployess      = txt_Employess.Text;
        //    obj.TypesofBusiness        = DropDownList1.SelectedItem.Text;
        //    obj.CompanyAddress         = txt_Address.Text;
        //    obj.State                  = txt_state.Text;
        //    obj.City                   = txt_city.Text;
        //    obj.PinCode                = txt_pin.Text;
        //    obj.Gender                 = Radiobtn.SelectedItem.Text;
        //    obj.InsuranceHoldingType   = txt_insur.Text;
        //    obj.BankName               = txt_bank.Text;
        //    obj.AccountNumber          = txt_account.Text;
        //    obj.IFSCCode               = txt_ifsc.Text;
        //    obj.BankAccountHolderName  = txt_acc_holder.Text;

        //    obj.CreatedBy   = "0";
        //    obj.CreatedIp   = "0";
        //   obj.CreatedDate = DateTime.Now;
        //    obj.IsActive    = "0";




        //    emsdal objs = new emsdal();
        //    DataSet ds = objs.VendorRegistration1(obj);
        //    //pass.Visible = true;
        //    //cvconfirmpassword.Visible = true;
        //    //rfvEmailid.Visible = true;

        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Send", "alert('successfully Register');", true);

        //    Response.Redirect("VendorLogin.aspx");
        //}

    }
   
}