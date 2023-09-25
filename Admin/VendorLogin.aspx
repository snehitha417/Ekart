<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorLogin.aspx.cs" Inherits="Admin.VendorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
    <title>Vendor login </title>
   </head>

<body>

       <!----------------NAV BAR START HERE------------------------->
   <div class="container-fluid" >
      <nav class="navbar fixed-top navbar-expand-sm bg-white  shadow ">
          <a href="#" class="navbar-brand text-dark">
               <img src="../Images/logo.png" alt="" class="image-fluid  logo1 "   style=" width: 156px; height: 50px; margin-left: 75px;" /></a>
           <div class="collapse navbar-collapse  justify-content-end" id="snehith">
               <div class="collapse navbar-collapse justify-content-end" id="snehitha">
                   <ul class="navbar-nav ">
                          <li class="nav-item"> <a href="VendorLogin.aspx"  class="nav-link  text-white btn btn-success   ml-lg-5 p-2 "  style="width:95px";  >Login</a></li>
                          <li class="nav-item"> <a href="VendorReg.aspx" class="nav-link  text-white btn btn-warning   ml-lg-5 p-2" style="width:95px";  >Register</a></li>
                     
                   </ul> </div>
            </div>
         </nav>
       </div>

       <!----------------NAV BAR ENDS HERE------------------------->

     <!----------------FORM HEADING HERE------------------------->

       <div class="container" style="    margin-top: 105px;">
       <div class="card bg-light " style="border: none; text-align: center; margin-left: 292px; margin-top: 74px; width: 28rem; height: auto; border-radius: 16px;">

            <div class="row mt-3">
                <div class="col-lg-12">
                    <h2 class="text-info">Login</h2>
                    
                </div>
            </div> <br />

                <form runat="server">
                    <div class="row ">
                     <div class="col-lg-6 ">
                           <asp:Label runat="server" ID="emailid" CssClass="emailid1" Style="margin-left: 60px;">BussinessEmailId</asp:Label>
                           <asp:TextBox ID="txt_emailid" runat="server"  Class="form-control" style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;" />
                        
                         <asp:RequiredFieldValidator ID="refId" runat="server" ControlToValidate="txt_emailid" ErrorMessage="Please Enter User Id " ForeColor="Red"/>
                    
                     </div>
                     </div>
                    

                    <div class="row ">
                     <div class="col-lg-7 ">
                           <asp:Label runat="server" ID="phoneno" cssclass=" phoneno" Style="margin-left: 14px;" > Phone Number</asp:Label>
                           <asp:TextBox ID="txt_phonenumber" runat="server"  Class="form-control"   style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;" />
                        
                         <asp:RequiredFieldValidator ID="refpass" runat="server" ControlToValidate="txt_phonenumber"  ErrorMessage="Please Enter new Password" ForeColor="Red" />
                     
                         </div>
                         </div>

               <div class="row">
                    <div class="col-lg-7">
                        <asp:HyperLink runat="server" ID="forget" Text="Forget Password? " NavigateUrl="forgetpassword.aspx" Style="margin-left: 4rem; font-size: large;"> 
                        </asp:HyperLink>

                    </div></div>
                    
                  
                 <div class="row ">
                   <div class="col-lg-9 ">
                         <asp:Button ID="btn_vendor_log" runat="server" Text="Log In"  class= " btn btn-info"  style="width: 295px; margin-left: 76px; height: 35px;" onclick="btn_VendorLogin"  />
                
              </div>  </div> 

                     <br />
                      <p style="margin-left: 1rem;">If You Don't have account Click here   
                     
 
                      <asp:HyperLink runat="server" ID="SignUp" Text="Sign Up" NavigateUrl="sellerscren.aspx"></asp:HyperLink></p>
             <br /> 
    
        </form>     
    
        </div>
   
   </div>




    <!--------------------------snippetts starts here---------------->
                   <div class="container-fluid footer p-lg-5 mt-lg-3 bg-light">
                    <div class="row  text-dark ">
                
                        <div class="col-lg-3">
                            <h4 class="ser text-dark mt-lg-3"> Popular Search</h4>
                           <p>  About us  </p>
                           <p>  Offers </p>
                           <p>  Products</p>
                           <p>  Contact us </p>
                           <P>  Privacy Policy</P>
                           <p>  Terms & Conditions</p>
                       </div>
                          
                        <div class="col-lg-3">
                            <h4 class="ser mt-lg-3 text-dark">Account</h4>
                          
                           
                           <p>  My Account </p>
                           <p>  Orders</p>
                          
                           <p>  Address</p>
                           <P>  Shipping & Delivery</P>
                           
                           <p>  Refund Policy</p>
                      
                        </div>
                
                 
                       
                        <div class="col-lg-3">
                            <img src="media/images/logo bb png.png" alt="" class="img-fluid mt-lg-3 w-25"/>
                            <h6>GVR INFO SYSTEM</h6> 
                             <a href="sellerscreen.aspx" class="btn btn-secondary text-white mt-3p-2" role="button" style="width: 152px;     width: 152px;
                                 height: 42px; border-radius: 3px;">Become a Seller</a>
                            <h4 class="new text-dark">Subscribers</h4>
                            <b>Email</b>
                            <input type="email" placeholder=" Enter Email" id="email" class="form-control corner"/>
                            <button class="btn btn bg-info text-white mt-lg-2" >Submit</button> 
                            <br /> 

</div>

                         <div class="col-lg-3">
                              <img src="../Images/logo.png" alt="" class="image-fluid  logo1 "   style="width: 193px; height: 82px; margin-left: 75px;margin-top: 90px"; /></a>

                            </div>
                         

                    </div>  </div> 
                
                   <div class="container-fluidcpy mt-lg-3 ">
                       <p class="ft text-center bg-dark text-white p-lg-2">© All Rights Reserved by electronic.com </p>
                   </div>

                  
                 <!--------------------------snippetts ends  here---------------->

</body>
</html>
