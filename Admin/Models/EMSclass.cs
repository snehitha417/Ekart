using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Admin.Models
{
    public class EMSclass
    {

        public class AdminReg
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string EmailId { get; set; }
            public string PhoneNumber { get; set; }
            public string Password { get; set; }
            public string ConfirmPassword { get; set; }
            public string UserId { get; set; }
            public DateTime DOB { get; set; }
            public string Aadhar { get; set; }
            public string PanNo { get; set; }
            public string Gender { get; set; }

        }

        //AdminLogin
        public class signin
        {
            public string EmailId { get; set; }
            public string Password { get; set; }

        }

        //public class UserRegistration
        //{
        //    public string FirstName { get; set; }
        //    public string LastName { get; set; }
        //    public string EmailId { get; set; }
        //    public string Phone_Number { get; set; }
        //    public string Password_hash { get; set; }
        //    public string ConfirmPassword { get; set; }
        //    public DateTime DOB { get; set; }
        //    public string Gender { get; set; }
        //    public string UserId { get; set; }
        //}

        public class Registrationk
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Email { get; set; }
            public string MobileNo { get; set; }
            public DateTime DOB { get; set; }
            public string UserId { get; set; }
            public string Password_hash { get; set; }
            public string ConfirmPassword { get; set; }
            public string Pincode { get; set; }
            public string Locality { get; set; }
            public string Address { get; set; }
            public string State { get; set; }
            public string City { get; set; }
            public string Gender { get; set; }
        
        }

        public class userlogin
        {
            public string UserId { get; set; }
            public string Password_hash { get; set; }
        }

        public class SellerRegestration
        {

            public string EmailId { get; set; }
            public string MobileNumber { get; set; }
            public string FullName { get; set; }
            public string SetPassword { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIp { get; set; }
            public string modifyBy { get; set; }
            public string ModifyIp { get; set; }

            // public string Modifydate { get; set; }
            public string IsActive { get; set; }

        }
        public class sellerlogin
        {

            public string EmailId { get; set; }
            public string Password { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIp { get; set; }
            public DateTime CreatedDate { get; set; }
            public string ModifyBy { get; set; }
            public string ModifyIp { get; set; }
            public DateTime ModifyDate { get; set; }
            public string IsActive { get; set; }

        }

        public class contact1
        {
            public string Name { get; set; }
            public string Email { get; set; }
            public string PhoneNumber { get; set; }
            public string Subject { get; set; }
            public string Message { get; set; }
            public string CreatedBy { get; set; }
            public string createdIp { get; set; }
            public string IsActive { get; set; }

        }


        public class AllCustomerDetails
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string EmailID { get; set; }
            public string UserId { get; set; }
            public string PhoneNo { get; set; }

        }

        public class VendorRegistration
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string BussinessEmailId { get; set; }

            public string PhoneNumber { get; set; }

            public string CompanyName { get; set; }

            public string BusinessIndustry { get; set; }

            public string NumberofEmployess { get; set; }
            public string TypesofBusiness { get; set; }
            public string CompanyAddress { get; set; }
            public string State { get; set; }
            public string City { get; set; }
            public string PinCode { get; set; }
            public string Gender { get; set; }

            public string InsuranceHoldingType { get; set; }
            public string BankName { get; set; }
            public string AccountNumber { get; set; }
            public string IFSCCode { get; set; }

            public string BankAccountHolderName { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIp { get; set; }
            public DateTime CreatedDate { get; set; }

            public string ModifyBy { get; set; }
            public string ModifyIp { get; set; }
            public DateTime ModifyDate { get; set; }
            public string IsActive { get; set; }
        }

        public class VendorLogin
        {

            public string BussinessEmailId { get; set; }
            public string PhoneNumber { get; set; }

            //public string CreatedBy { get; set; }
            //public string CreatedIp { get; set; }
            //public DateTime CreatedDate { get; set; }
            //public string ModifyBy { get; set; }
            //public string ModifyIp { get; set; }
            //public DateTime ModifyDate { get; set; }
            //public string IsActive { get; set; }

        }

        public class Banner
        {
            public string BannerName { get; set; }
            public DateTime UploadDate { get; set; }
            public string Content { get; set; }
            public string Imageurl { get; set; }
        }



        public class AddProducts
        {
            public DateTime EntryDate { get; set; }
            public string ProductName { get; set; }
            public string ProductPrice { get; set; }
            public string Discount { get; set; }
            public string Model { get; set; }
            public string Brand { get; set; }
            public string AdditionalInformation { get; set; }
            public string Description { get; set; }
            public string Rating { get; set; }
            public string UploadImage { get; set; }
            public string CreatedBy { get; set; }
            public string CreatedIp { get; set; }
            public DateTime CreatedDate { get; set; }
            public string IsActive { get; set; }


        }
        public class BillingAddress
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string EmailId { get; set; }
            public string PhoneNumber { get; set; }
            public string StreetAddress { get; set; }
            public string Country { get; set; }
            public string City { get; set; }
            public string State { get; set; }
            public string Pincode { get; set; }
            public string OrderNotes { get; set; }

        }


        public class PaymentDetails
        {
            public string CardNumber { get; set; }
            public string CardHolderName { get; set; }
            public string Month { get; set; }
            public string Year { get; set; }
            public string CVV { get; set; }
        }


        public class price
        {
            public decimal p1 { get; set; }
            public decimal Gst { get; set; }
            public decimal total { get; set; }

            public decimal cst(decimal p1, decimal Gst)
            {
                Gst = (p1 * 6) / 100;
                return Gst;
            }

            public decimal totl(decimal p1, decimal Gst, decimal total)
            {
                total = p1 + Gst;
                return total;
            }
        }


        //subscribe
        public class subscribe
        {
            public string EmailAddress { get; set; }

        }


        //public class insertcart
        //{
        //    public string APID { get; set; }
        //    public string MobileNumber { get; set; }
        //    public string EmailID { get; set; }
        //    public string CreatedBy { get; set; }
        //    public string CreatedIp { get; set; }

        //}

    }
}





