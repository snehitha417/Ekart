<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create account.aspx.cs" Inherits="Admin.seller_login.create_account" %>

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
  
    <title> Seller account</title>
    <style>

 
  .logo1 {
         width: 118px;
     }

           </style>
    </head>
    
<body>
       <script type="text/javascript">

                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : event.keyCode;

                        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                            return false;
                        }

                        return true;
                    }
                </script>

        <nav class="navbar fixed-top navbar-expand-sm bg-white  shadow ">
          <a href="#" class="navbar-brand text-dark">
               <img src="../Images/logo.png"  alt="" class="image-fluid  logo1 " /></a>
           <div class="collapse navbar-collapse  justify-content-end" id="snehith">
               <div class="collapse navbar-collapse justify-content-end" id="snehitha">
                   <ul class="navbar-nav ">
        
                          <li class="nav-item"> <a href="SellerLogin.aspx"    class="nav-link  text-white btn btn-info   ml-lg-5 p-2 "  style="width:95px";  >Login</a></li>
                          <li class="nav-item"> <a href="create account.aspx"  class="nav-link  text-white btn btn-warning   ml-lg-5 p-2" style="width:95px";  >Register</a></li>

<%--   <li class="nav-item"> <a href="../BusinessNeedsForm.aspx"  class="nav-link  text-white btn btn-success   ml-lg-5  " >Add your Business details</a></li>--%>
                      
                   </ul> </div>
            </div>
         </nav>
    <!----------------NAV BAR ENDS HERE------------------------->

    <!-----------------form ------------------------>
    <div class="container">
        <div class="card " style="border: none; text-align: center; margin-left: 292px; margin-top: 74px; width: 30rem;
   height: auto; border-radius: 16px;">

             
            <div class="row mt-3">
                <div class="col-lg-12 mt-2">
                    
                    <h5 class="text-dark ">Create Your Seller Account</h5>
                   
                </div>
            </div> <br />

        <!------------------- EMAIL ID STARTS HERE --------------->

                <form runat="server">
                    <div class="row">
                     <div class="col-lg-6 ">
                           <asp:Label runat="server" ID="email_id" class="emailid" style="margin-left:-1rem;" >Email Id</asp:Label>
                           <asp:TextBox ID="txt_email" runat="server" style="border-radius: 5px; height: 2.2rem;  width: 21.5rem; margin-left: 67px;
                                                   border: solid 1.5px #D3D3D3;" />
                       <div>
                          <asp:RequiredFieldValidator ID="revEmailid" runat="server"  ControlToValidate="txt_email"  ForeColor="Red" ErrorMessage="please enter your Email Id" >
                           </asp:RequiredFieldValidator>
                          <%-- <asp:RegularExpressionValidator ID="Email" runat="server" ControlToValidate="txt_email" ForeColor="Red"  ErrorMessage="Invalid email Format" ></asp:RegularExpressionValidator>--%>
                        </div>
                         </div>
                         </div> 
                      <!--------------- EMAIL ID ENDS HERE --------------->

                    <!---------------- MOBILE NO  STARTS HERE -------------->

                    <div class="row ">
                     <div class="col-lg-6">
                           <asp:Label runat="server" ID="mobile_num" class="mbileno"  style="margin-left: 2rem;" >Mobile Number</asp:Label>
                           <asp:TextBox ID="txt_mobileno" runat="server" max-length="10" onkeypress="return isNumberKey(event)" style="border-radius: 5px; height: 2.2rem;  width: 21.5rem; margin-left: 67px;
                                                   border: solid 1.5px #D3D3D3;" />

                           <asp:RequiredFieldValidator ID="mobileno" runat="server" ControlToValidate="txt_mobileno" ForeColor="Red" ErrorMessage="Please enter your mobileno" > </asp:RequiredFieldValidator>
                         </div>
                        </div>
                  <!---------------- MOBILE NO  ENDS HERE----------------->


                  <!----------------FULL NAME  STARTS HERE -------------->

                 <div class="row ">
                     <div class="col-lg-6 ">
                           <asp:Label runat="server" ID="full_name" class="userid" style="margin-left: 0rem;" >Full Name</asp:Label>
                           <asp:TextBox ID="txt_fulname" runat="server" style="border-radius: 5px; height: 2.2rem;  width: 21.5rem; margin-left: 67px;
                                                  border: solid 1.5px #D3D3D3;" />

                          <asp:RequiredFieldValidator ID="fname" runat="server" ControlToValidate="txt_fulname" ForeColor="Red" ErrorMessage="Please enter your Full Name" ></asp:RequiredFieldValidator>
                
                         </div>
                        </div>
                 <!----------------FULL NAME  ENDS HERE----------------->


                <!---------------PASSWORD PASSWORD   STARTS HERE----------------->

                <div class="row ">
                     <div class="col-lg-6 ">
                           <asp:Label runat="server" ID="set_pass" class="userid" style=" margin-left: 1rem;" >Set Password</asp:Label>
                           <asp:TextBox ID="txt_password" runat="server" TextMode="Password" style="border-radius: 5px; height: 2.2rem;  width: 21.5rem; margin-left: 67px;
                                                   border: solid 1.5px #D3D3D3;" />
                        
                      <asp:RequiredFieldValidator ID="setpassword" runat="server" ControlToValidate="txt_password"  Visible="false" ErrorMessage="Please Enter Password" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="sPassword" runat="server" ControlToValidate="txt_password" ErrorMessage="Password must be at least 8 characters long and contain a combination of uppercase letters, lowercase letters, numbers, and special characters."
                              OnServerValidate="setPassword_ServerValidate"></asp:CustomValidator>
                    </div>
                   </div>

              <!---------------PASSWORD PASSWORD  ENDS HERE----------------->



                      <p>  By filling these form, I agree to 
                          <asp:HyperLink runat="server" ID="SignUp" Text="Terms of use" NavigateUrl="#"></asp:HyperLink></p>
                

               <div class="row ">
                   <div class="col-lg-9 ">
                         <asp:Button ID="btn_reg" runat="server" Text="Sign Up"  Style=" border-radius: 5px; height: 2.2rem;  width: 21.5rem; margin-left: 67px;text-align: center;  
                            background-color: #17a2b8;  color: white;  border: none;  border-radius: 4px;" OnClick="btn_reg_Click"   />
               
              </div>  </div>

                      <p style="margin-right: 9rem;">Already a Seller? 
                        <asp:HyperLink runat="server" ID="HyperLink1" Text="login here" NavigateUrl="SellerLogin.aspx"></asp:HyperLink></p>

   <br />
            </form> 
                
           </div></div>

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
