<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorReg.aspx.cs" Inherits="Admin.vendor_form" %>

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
  
    <title>Vendor</title>

   <script type="text/javascript">
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : event.keyCode;

                        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                            return false;
                        }

                        return true;
                    }
       
        </script>

        <style>

      
         /*.btn1{
               height: 42px; 
               border-radius: 3px;
               width: 152px; 
         }*/
         .logo1{
             
         width: 118px;
         }
         .container1{
                margin-top: 100px;
                margin-left: 187px;
         }

         .becom{
              height: 42px; 
               border-radius: 3px;
               width: 152px;
         }

         .submitt{
             width: 280px;
             margin-left: 400px;
             border-radius:0.4rem;
         }

     </style>
  </head>

    
   <body>

    <nav class="navbar fixed-top navbar-expand-sm bg-white  shadow ">
          <a href="#" class="navbar-brand text-dark">
               <img src="../Images/logo.png"  alt="" class="image-fluid  logo1 " /></a>
           <div class="collapse navbar-collapse  justify-content-end" id="snehith">
               <div class="collapse navbar-collapse justify-content-end" id="snehitha">
                   <ul class="navbar-nav ">
        
                          <li class="nav-item"> <a href="VendorLogin.aspx" class="nav-link  text-white btn btn-info   ml-lg-5 p-2 "  style="width:95px";  >Login</a></li>
                          <li class="nav-item"> <a href="VendorReg.aspx"   class="nav-link  text-white btn btn-warning   ml-lg-5 p-2" style="width:95px";  >Register</a></li>

<%--   <li class="nav-item"> <a href="../BusinessNeedsForm.aspx"  class="nav-link  text-white btn btn-success   ml-lg-5  " >Add your Business details</a></li>--%>
                      
                   </ul> </div>
            </div>
         </nav>

       <!----------------------nav bar ---- end here ------------------->


      <div class="container1"  >
         <div class="card shadow" style="border: none;  width: 70rem;
                  height: auto; border-radius: 16px;  height:auto;">

           <form id="form2" runat="server"> 
         
               <div class="header bg-info"  >

                    <h1 class="reg text-white p-3" style=" margin-left: 125px; margin-left: 300px;  height: 80px; "><b style="margin-left: 45px;"> Vendor Registration </b></h1>
               </div> 
     <!------------------------------form--------------------------->
                  
           
             <div id="frm" class="continer p-3">
               
                   <asp:Label runat="server" ID="fname" class="fname ml-4" >Bussiness Owner</asp:Label>
            
                   <div class="row ml-1">
                  
                  <div class="col-sm-3 ">
                     <asp:TextBox ID="txt_fstname" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                      <asp:Label runat="server" ID="Label5" class="fname" >First Name</asp:Label>
                     <br />
                        <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txt_fstname" ForeColor="Red" ErrorMessage="Please Enter your First Name" >
                  </asp:RequiredFieldValidator>
                  </div>

      <!------------------->

                <div class="col-sm-3 ">
                     <asp:TextBox ID="txt_LastName" runat="server" Class="form-control" style="border-radius: 13px;   width: 14.5rem;  height: 2.2rem;"/>
                      <asp:Label runat="server" ID="Label6" class="lname">Last Name</asp:Label>
                    <br />
                     <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txt_LastName" ForeColor="Red" ErrorMessage="Please enter your Last Name" >
                    </asp:RequiredFieldValidator>
                </div>
          
       <!-------------------> 

              <div class="col-sm-3 ">
                  
                   <asp:TextBox ID="txt_EmailId" runat="server" Class="form-control" TextMode="Email" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem; /*margin-top: -23px;*/ " />
                    <asp:Label runat="server" ID="Emailid" class="email" > Bussiness Email Id </asp:Label>
                 <br />
                    <asp:RequiredFieldValidator ID="rfvEmailid" runat="server"  ControlToValidate="txt_EmailId"  ForeColor="Red" ErrorMessage="please enter your Email Id" >
                    </asp:RequiredFieldValidator>
                </div>

 <!-------------------> 
                <div class="col-sm-3 ">
                   
                     <asp:TextBox ID="txt_phonenumber" runat="server" Class="form-control" max-length="10" onkeypress="return isNumberKey(event)" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;"/>
                      <asp:Label runat="server" ID="Phone" class="pn">Phone Number </asp:Label>
                     <br />
                    <asp:RequiredFieldValidator ID="rfvphno" runat="server" ControlToValidate="txt_phonenumber" ForeColor="Red" ErrorMessage="Please enter your Phone Number " >
                    </asp:RequiredFieldValidator>
                </div>
                   </div>

            <!--------------------------ROW -1 ends here ----------------->
                 <br />
            <!--------------------------ROW -2 starts here  ----------------->

            <div class="row ml-1 ">
            
                  <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="Label2" class="fname" >Company Name</asp:Label>
                     <asp:TextBox ID="txt_cmpyname" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cmpyname" ForeColor="Red" ErrorMessage="Please enter your Company Name" >
                  </asp:RequiredFieldValidator>
                  </div>


                <!------------------------->


               <div class="col-sm-3 ">
                      <asp:Label runat="server" ID="ind" class="lname">Business Industry</asp:Label>
                     <asp:TextBox ID="txt_Industry" runat="server" Class="form-control" style="border-radius: 13px;   width: 14.5rem;  height: 2.2rem;"/>
                

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Industry" ForeColor="Red" ErrorMessage="Please enter your industry" >
                    </asp:RequiredFieldValidator>
                </div>
           
                
               <div class="col-sm-3 ">
                     <asp:Label runat="server" ID="Employess" class="pn">Number of Employess </asp:Label>
                     <asp:TextBox ID="txt_Employess" runat="server"  Class="form-control"  style="border-radius: 13px; width: 14.5rem;  height:2.2rem;" /> 
                  
                     <asp:requiredfieldvalidator id="refpass" runat="server" controltovalidate="txt_Employess" forecolor="red" errormessage="please confirm your password">
                     </asp:requiredfieldvalidator>
                
                </div> 
                      <!------------------------->
                 
                        <div class="col-sm-3 ">
                     
                          <asp:Label runat="server" ID="txt_typebusiness" >Types of Business </asp:Label>
                               
                                <asp:DropDownList runat="server" ID="DropDownList1" class="form-control"  style="border-radius: 13px;" >
                                    <asp:ListItem Text="select" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Store" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Manufature" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Others" Value="3"></asp:ListItem>
                              </asp:DropDownList>
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1"     ValidationGroup="Save"   InitialValue="0" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
        
                        </div>

         <!--------------------------ROW -2 ENDS here  ----------------->
                 <br />

       <!-------------------------------ROW -3  STARTS----HERE----------->



                <div class="row ml-1">
               
                       <div class="col-sm-3">
                     <asp:Label runat="server" ID="add" class="pn">Company Address </asp:Label>
                     <asp:TextBox ID="txt_Address" runat="server"  Class="form-control"  TextMode="MultiLine" Height="7" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;" />
      
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txt_Address"    ForeColor="Red" ErrorMessage="Please Enter your password">
                     </asp:RequiredFieldValidator>
                 </div>  
           <!-------------------------->


                  <div class="col-sm-3">
                     <asp:Label runat="server" ID="state" class="pn">State </asp:Label>
                     <asp:TextBox ID="txt_state" runat="server"  Class="form-control"   style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;" />
      
                     <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="txt_state"    ForeColor="Red" ErrorMessage="Please Enter your password">
                     </asp:RequiredFieldValidator>
                 </div>  
                 
                
         <!------------------------->

                       <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="Label1" class="fname" >City</asp:Label>
                     <asp:TextBox ID="txt_city" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_city" ForeColor="Red" ErrorMessage="Please enter your City" >
                  </asp:RequiredFieldValidator>
                  </div>

            <!------------------------->

                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="Label7" class="fname" >Pin Code</asp:Label>
                       <asp:TextBox ID="txt_pin" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pin" ForeColor="Red" ErrorMessage="Please enter your Pincode" >
                      </asp:RequiredFieldValidator>
                  </div> </div>

    <!-------------------------------ROW -3  ENDS----HERE----------->
                 <br />
   <!-------------------------- -----  ROW 4 STARTS HERE    ---------------------------->
                 
           <div class="row ml-1">

                  <div class="col-lg-6">
               <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
                     <br />
                     <asp:RadioButtonList ID="Radiobtn"     runat="server" RepeatDirection="Horizontal">
                         <asp:ListItem ID="RadioButton1"    runat="server"  Text="Male"  GroupName="gender" /> 
                         <asp:ListItem ID="RadioButton2"     runat="server" Text="Female" GroupName="gender" /> 
                         <asp:ListItem ID="RadioButton3"     runat="server" Text="other"  GroupName="gender" /> 
                   </asp:RadioButtonList>
                  
                  <asp:RequiredFieldValidator ID="rfvgender" runat="server" ControlToValidate="Radiobtn" ForeColor="Red" ErrorMessage="Please select your Gender "></asp:RequiredFieldValidator>
                  </div>  
                    
                  


               <div class="col-lg-6 ">
                       <asp:Label runat="server" ID="Label8" class="fname" >Aadhar Number</asp:Label>
                       <asp:TextBox ID="txt_insur" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem;     width: 31.5rem;" />
      

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_insur" ForeColor="Red" ErrorMessage="Please enter your Insurance Name" >
                      </asp:RequiredFieldValidator>
                  </div> 
                    
                  </div>

             
                  
                    

        <!-------------------------- -----  ROW 4 ENDS HERE    ---------------------------->

        <hr />

      <!--------------------------  BANKING DETAILS  STARTS  HERE    ---------------------------->

        <h3 class="reg text-dark " style=" margin-left: 125px; margin-left: 427px;  height: 80px; " > Banking Details </h3>

               <div class="row ml-1">
                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="bank" class="fname" >Bank Name</asp:Label>
                     <asp:TextBox ID="txt_bank" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_bank" ForeColor="Red" ErrorMessage="Please enter your Bank Name" >
                  </asp:RequiredFieldValidator>
                  </div>

        <!------------------------->

                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="Label9" class="fname" >Account Number</asp:Label>
                     <asp:TextBox ID="txt_account" runat="server" Class="form-control"  text-mode="number" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_account" ForeColor="Red" ErrorMessage="Please enter your Account Name" >
                  </asp:RequiredFieldValidator>
                  </div>


                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="ifsc" class="fname" >IFSC Code</asp:Label>
                     <asp:TextBox ID="txt_ifsc" runat="server" Class="form-control"   style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_ifsc" ForeColor="Red" ErrorMessage="Please enter your IFSC Code" >
                  </asp:RequiredFieldValidator>
                  </div>

                   

                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="accountholder" class="fname" > Bank Account Holder Name </asp:Label>
                       <asp:TextBox ID="txt_acc_holder" runat="server" Class="form-control"  style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                   
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_acc_holder" ForeColor="Red" ErrorMessage="Please enter your Holder Name" >
                  </asp:RequiredFieldValidator>
                  </div>                 
              </div>  <br />



     <!---------------------------  BANKING DETAILS  ENDS  HERE    ---------------------------->

          
                    <div class="row">
                        <asp:Button runat="server" ID="submitt" Text="Submitt" Class="btn btn-info text-white submitt" OnClick="vendorReg_submitt"  />
                    </div>
                 
         </div>
                 <br />
                 </div>
        </form>  </div> </div>
               <br />
          
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
                             <a href="sellerscreen.aspx" class="btn btn-secondary text-white mt-3p-2 becom" role="button" >Become a Seller</a>
                            <h4 class="new text-dark">Subscribers</h4>
                            <b>Email</b>
                            <input type="email" placeholder=" Enter Email" id="email" class="form-control corner"/>
                            <button class="btn btn bg-info text-white mt-lg-2" >Submit</button> 
                           

</div>

                         <div class="col-lg-3">
                              <img src="../Images/logo.png" alt="" class="image-fluid  logo1 "   style="width: 193px; height: 82px; margin-left: 75px;margin-top: 90px"; />

                            </div>
                         

                    </div>  </div> 
                
                   <div class="container-fluidcpy mt-lg-3 ">
                       <p class="ft text-center bg-dark text-white p-lg-2">© All Rights Reserved by electronic.com </p>
                   </div>

                  
                 <!--------------------------snippetts ends  here---------------->
</body>

</html>
