using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Admin.AdminScreens;
using Admin.E_cart;
using Admin.seller_login;
using static Admin.Models.EMSclass;

namespace Admin.Models
{
    public class emsdal
    {
        string str = string.Empty;

       
        public emsdal()
        {
            str = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        }
        public DataSet adminreg(AdminReg objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_AdminRegistration", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@FirstName", objpi.FirstName);
                    cmdsrc.Parameters.AddWithValue("@LastName", objpi.LastName);
                    cmdsrc.Parameters.AddWithValue("@EmailId", objpi.EmailId);
                    cmdsrc.Parameters.AddWithValue("@PhoneNumber", objpi.PhoneNumber);
                    cmdsrc.Parameters.AddWithValue("@Password", objpi.Password);
                    cmdsrc.Parameters.AddWithValue("@ConfirmPassword", objpi.ConfirmPassword);
                    cmdsrc.Parameters.AddWithValue("@UserId", objpi.UserId);
                    cmdsrc.Parameters.AddWithValue("@DOB", objpi.DOB);
                    cmdsrc.Parameters.AddWithValue("@Aadhar", objpi.Aadhar);
                    cmdsrc.Parameters.AddWithValue("@PanNo", objpi.PanNo);
                    cmdsrc.Parameters.AddWithValue("@Gender", objpi.Gender);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }

        }

    


        //get_AdminLogin
        public DataSet get_AdminLogin(signin objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("Prc_get_login", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@EmailId", objpi.EmailId);
                    cmd.Parameters.AddWithValue("@Password", objpi.Password);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

      

        //public DataSet UserRegistration1(UserRegistration objpi)
        //{
        //    DataSet ds = new DataSet();
        //    using (SqlConnection con = new SqlConnection(str))
        //    {
        //        try
        //        {
        //            SqlCommand cmdsrc = new SqlCommand("pr_UserRegistration", con);
        //            cmdsrc.CommandType = CommandType.StoredProcedure;
        //            cmdsrc.Parameters.AddWithValue("@FirstName", objpi.FirstName);
        //            cmdsrc.Parameters.AddWithValue("@LastName", objpi.LastName);
        //            cmdsrc.Parameters.AddWithValue("@DOB", objpi.DOB);
        //            cmdsrc.Parameters.AddWithValue("@Email", objpi.EmailId);
        //            cmdsrc.Parameters.AddWithValue("@Password_hash", objpi.Password_hash);
        //            cmdsrc.Parameters.AddWithValue("@ConfirmPassword", objpi.ConfirmPassword);
        //            cmdsrc.Parameters.AddWithValue("@MobileNo", objpi.Phone_Number);
        //            cmdsrc.Parameters.AddWithValue("@Gender", objpi.Gender);
        //            cmdsrc.Parameters.AddWithValue("@UserId", objpi.UserId);


        //            SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
        //            da.Fill(ds);
        //            return ds;
        //        }

        //        catch (Exception ex)
        //        {
        //            throw ex;
        //        }
        //        finally
        //        {
        //            con.Close();
        //        }
        //    }
        //}

        public DataSet ins_Registration(Registrationk objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_Registrationk", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@FirstName",objpi.FirstName);
                    cmdsrc.Parameters.AddWithValue("@LastName",objpi.LastName);
                    cmdsrc.Parameters.AddWithValue("@DOB", objpi.DOB);
                    cmdsrc.Parameters.AddWithValue("@Email", objpi.Email);
                    cmdsrc.Parameters.AddWithValue("@Password_hash", objpi.Password_hash);
                    cmdsrc.Parameters.AddWithValue("@ConfirmPassword", objpi.ConfirmPassword);
                    cmdsrc.Parameters.AddWithValue("@MobileNo", objpi.MobileNo);
                    cmdsrc.Parameters.AddWithValue("@UserId", objpi.UserId);
                    cmdsrc.Parameters.AddWithValue("@Pincode", objpi.Pincode);
                    cmdsrc.Parameters.AddWithValue("@Locality", objpi.Locality);
                    cmdsrc.Parameters.AddWithValue("@Address", objpi.Address);
                    cmdsrc.Parameters.AddWithValue("@State", objpi.State);
                    cmdsrc.Parameters.AddWithValue("@City", objpi.City);
                    cmdsrc.Parameters.AddWithValue("@Gender", objpi.Gender);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet btn_ulogin(EMSclass.userlogin obj)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    //   SqlCommand cmd = new SqlCommand("pr_get_userlog", con);

                    SqlCommand cmd = new SqlCommand("Pr_get_loginuserk", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserId", obj.UserId);
                    cmd.Parameters.AddWithValue("@Password_hash",obj.Password_hash);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                }
            }
        }

        public DataSet Banner(Banner objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_BannerImages", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@BannerName", objpi.BannerName);
                    cmdsrc.Parameters.AddWithValue("@Uploaddate", objpi.UploadDate);
                    cmdsrc.Parameters.AddWithValue("@Content", objpi.Content);
                    cmdsrc.Parameters.AddWithValue("@Imageurl", objpi.Imageurl);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }


        public DataSet AddProduct(AddProducts objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("[dbo].[pr_AddProduct]", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@EntryDate", objpi.EntryDate);
                    cmdsrc.Parameters.AddWithValue("@ProductName", objpi.ProductName);
                    cmdsrc.Parameters.AddWithValue("@ProductPrice", objpi.ProductPrice);
                    cmdsrc.Parameters.AddWithValue("@Discount", objpi.Discount);
                    cmdsrc.Parameters.AddWithValue("@Model", objpi.Model);
                    cmdsrc.Parameters.AddWithValue("@Brand", objpi.Brand);
                    cmdsrc.Parameters.AddWithValue("@AdditionalInformation", objpi.AdditionalInformation);
                    cmdsrc.Parameters.AddWithValue("@Description", objpi.Description);
                    cmdsrc.Parameters.AddWithValue("@Rating", objpi.Rating);
                    cmdsrc.Parameters.AddWithValue("@UploadImage", objpi.UploadImage);
                    cmdsrc.Parameters.AddWithValue("@CreatedBy", objpi.CreatedBy);
                    cmdsrc.Parameters.AddWithValue("@CreatedIp", objpi.CreatedIp);
                    cmdsrc.Parameters.AddWithValue("@createdDate", objpi.CreatedDate);
                    cmdsrc.Parameters.AddWithValue("@IsActive", objpi.IsActive);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }

        }

        public DataSet ins_tbl_wishlist1(string APID, String MobileNumber, string EmailID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_wishlist1", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@APID", APID);
                    cmdsrc.Parameters.AddWithValue("@MobileNumber", MobileNumber);
                    cmdsrc.Parameters.AddWithValue("@EmailID", EmailID);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                 
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }



        //public DataSet ins_tbl_cart(insertcart objpi)
        //{
        public DataSet ins_tbl_cart(string APID, string UserId, String MobileNumber, string EmailID, string Quantity ,string IsActive)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_ProductCart", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@APID",APID);
                    cmdsrc.Parameters.AddWithValue("@UserId", UserId);
                    cmdsrc.Parameters.AddWithValue("@EmailID", EmailID);
                    cmdsrc.Parameters.AddWithValue("@MobileNumber",MobileNumber);
                    cmdsrc.Parameters.AddWithValue("@Quantity", Quantity);

                    cmdsrc.Parameters.AddWithValue("@IsActive", IsActive);
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

      

        public DataSet ProductDetails(string APID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                SqlCommand cmd = new SqlCommand("pr_get_Product", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@APID", APID);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                return ds;

            }

        }

        public DataSet inscontact_page(contact1 objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("prco_Contact", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@Name", objpi.Name);
                    cmdsrc.Parameters.AddWithValue("@email", objpi.Email);
                    cmdsrc.Parameters.AddWithValue("@PhoneNumber", objpi.PhoneNumber);

                    cmdsrc.Parameters.AddWithValue("@subject", objpi.Subject);
                    cmdsrc.Parameters.AddWithValue("@Message", objpi.Message);
                    cmdsrc.Parameters.AddWithValue("@CreatedBy", objpi.CreatedBy);
                    cmdsrc.Parameters.AddWithValue("@CreatedIP", objpi.createdIp);
                    cmdsrc.Parameters.AddWithValue("@IsActive", objpi.IsActive);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        internal DataSet ins_tbl_cart(string aPID, string v1, string v2, string v3, string v4)
        {
            throw new NotImplementedException();
        }

        public DataSet get_addItemCart()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pro_get_AddItemtoCart", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }

        public DataSet ins_tbl_Product_Cart1(int aPID)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
                try
                {
                    SqlCommand cmd = new SqlCommand("proc_Product_Cart");
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@APID", aPID);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            return ds;
        }

        //insbillingaddress

        public DataSet insbillingaddress(BillingAddress objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("Pr_BillingAddress", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@FirstName", objpi.FirstName);
                    cmdsrc.Parameters.AddWithValue("@LastName", objpi.LastName);
                    cmdsrc.Parameters.AddWithValue("@EmailId", objpi.EmailId);
                    cmdsrc.Parameters.AddWithValue("@PhoneNumber", objpi.PhoneNumber);
                    cmdsrc.Parameters.AddWithValue("@StreetAddress", objpi.StreetAddress);
                    cmdsrc.Parameters.AddWithValue("@Country", objpi.Country);
                    cmdsrc.Parameters.AddWithValue("@City", objpi.City);
                    cmdsrc.Parameters.AddWithValue("@State", objpi.State);
                    cmdsrc.Parameters.AddWithValue("@Pincode", objpi.Pincode);
                    cmdsrc.Parameters.AddWithValue("@OrderNotes", objpi.OrderNotes);

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        // get the cart count 
        public DataSet get_CartCount()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_CartCount1", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }

        // get the wishlist count
        public DataSet get_wishlistcount()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_countWishList", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }

        // payment details form ------
        public DataSet inspaymentdetails(PaymentDetails objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_PaymentDetails", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    cmdsrc.Parameters.AddWithValue("@CardNumber", objpi.CardNumber);
                    cmdsrc.Parameters.AddWithValue("@CardHolderName", objpi.CardNumber);
                    cmdsrc.Parameters.AddWithValue("@Month", objpi.Month);
                    cmdsrc.Parameters.AddWithValue("@Year", objpi.Year);
                    cmdsrc.Parameters.AddWithValue("@CVV", objpi.CVV);


                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }



        ///get_contactUs

        public DataSet get_contactUs(Contact_Us objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getContactUs", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }

        ///get_count for subscribe

        public DataSet get_countSubscribe(Contact_Us objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getSubscribers", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);
                    return ds;
                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
        }



        //get_MessagesCount

        public DataSet get_AllCount()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getAllCount", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);

                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }




        //ins_subscribe
        public DataSet ins_subscribe(subscribe objpi)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("pr_Subscribe", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@EmailAddress", objpi.EmailAddress);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }


        //get_SubscribersCount

        public DataSet get_SubscribersCount()
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(str))
            {
                try
                {
                    SqlCommand cmdsrc = new SqlCommand("pr_getSubscribers", con);
                    cmdsrc.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmdsrc);
                    da.Fill(ds);

                }

                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            return ds;
        }
    }
}













