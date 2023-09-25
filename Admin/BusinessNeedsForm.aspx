<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusinessNeedsForm.aspx.cs" Inherits="Admin.BusinessNeedsForm" %>

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
  
    <title> Business Form</title>

    
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

         .btn  {

           margin-left: 24rem;
            width: 20rem;
            border-radius: 38px;

       }

     </style>
    </head>
   
<body style=" margin-top: 15px;">

      <div class="container">
         <div class="card shadow" style="border: none;  width: 70rem;
                  height: auto; border-radius: 16px;  height:auto;">

           <form id="form2" runat="server"> 
         
               <div class="header bg-info" >

                      <h3 class="reg text-white p-3" style=" margin-left: 125px; margin-left: 300px;  height: 80px; " ><b> Business Details and Banking Form</b></h3>
               </div> 
     <!------------------------------form--------------------------->
                  
           
             <div id="frm" class="continer p-3">
               
                   <asp:Label runat="server" ID="fname" class="fname ml-4" >Bussiness Owner</asp:Label>
            
                   <div class="row ml-1">
                  
                  <div class="col-sm-3 ">
                     <asp:TextBox ID="Text_fstname" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                      <asp:Label runat="server" ID="Label5" class="fname" >First Name</asp:Label>
                     <br />
                        <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="Text_fstname" ForeColor="Red" ErrorMessage="Please Enter your First Name" >
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
                      <asp:Label runat="server" ID="buss" class="pn">Type of Business</asp:Label>
                       <asp:TextBox ID="txt_type" runat="server"  Class="form-control" style="border-radius: 13px; width:14.5rem;  height:2.2rem;" />
                   
                       <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txt_type" ForeColor="Red" ErrorMessage="Please Enter your User ID"  >
                       </asp:RequiredFieldValidator>
                  </div>

                    </div>

         <!--------------------------ROW -2 ENDS here  ----------------->
                 <br />

       <!-------------------------------ROW -3  STARTS----HERE----------->



                <div class="row ml-1">
               
                       <div class="col-sm-3 ">
                     
                                <asp:Label runat="server" ID="Label4" >Types of Business </asp:Label>
                               
                                <asp:DropDownList runat="server" ID="DropDownList1" class="form-control"  style="border-radius: 13px;" >
                                    <asp:ListItem Text="" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Store" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Manufature" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Others" Value="3"></asp:ListItem>
                              </asp:DropDownList>
                           <br />
                           <asp:RequiredFieldValidator ID="req121" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1"     ValidationGroup="Save"   InitialValue="0" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
             
                        </div>
           <!-------------------------->


                  <div class="col-sm-3">
                     <asp:Label runat="server" ID="add" class="pn">Company Address </asp:Label>
                     <asp:TextBox ID="txt_Address" runat="server"  Class="form-control"  TextMode="MultiLine" Height="7" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;" />
      
                     <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="txt_Address"    ForeColor="Red" ErrorMessage="Please Enter your password">
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
               <div class="col-sm-6 ">
                       <asp:Label runat="server" ID="Label8" class="fname" >Insurance Holding Type</asp:Label>
                       <asp:TextBox ID="txt_insur" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem;     width: 31.5rem;" />
      

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_insur" ForeColor="Red" ErrorMessage="Please enter your Insurance Name" >
                      </asp:RequiredFieldValidator>
                  </div> 
                    
                     
            <div class="col-sm-5">
               <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
                     <br />
                     <asp:RadioButtonList ID="Radiobtn"     runat="server" RepeatDirection="Horizontal">
                         <asp:ListItem ID="RadioButton1"    runat="server" Text="Male"  GroupName="gender" /> 
                         <asp:ListItem ID="RadioButton2"     runat="server" Text="Female" GroupName="gender" /> 
                         <asp:ListItem ID="RadioButton3"     runat="server" Text="other"  GroupName="gender" /> 
                   </asp:RadioButtonList>
                  
                  <asp:RequiredFieldValidator ID="rfvgender" runat="server" ControlToValidate="Radiobtn" ForeColor="Red" ErrorMessage="Please select your Gender "></asp:RequiredFieldValidator>
                  </div>  
                    
            </div>      
                  
                    

        <!-------------------------- -----  ROW 4 ENDS HERE    ---------------------------->

        <hr />

      <!--------------------------  BANKING DETAILS  STARTS  HERE    ---------------------------->

        <h3 class="reg text-dark " style=" margin-left: 125px; margin-left: 427px;  height: 80px; " > Banking Details </h3>

               <div class="row ml-1">
                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="Label3" class="fname" >Bank Name</asp:Label>
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
                       <asp:Label runat="server" ID="Label10" class="fname" >IFSC Code</asp:Label>
                     <asp:TextBox ID="TextBox1" runat="server" Class="form-control"  text-mode="number" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_account" ForeColor="Red" ErrorMessage="Please enter your IFSC Code" >
                  </asp:RequiredFieldValidator>
                  </div>

                   

                    <div class="col-sm-3 ">
                       <asp:Label runat="server" ID="Label11" class="fname" > Bank Account Holder Name </asp:Label>
                     <asp:TextBox ID="TextBox2" runat="server" Class="form-control"  text-mode="number" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                   
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_account" ForeColor="Red" ErrorMessage="Please enter your Holder Name" >
                  </asp:RequiredFieldValidator>
                  </div>
              </div>
                 <br />

     <!---------------------------  BANKING DETAILS  ENDS  HERE    ---------------------------->
          
                    <div class="row">
                   
                        <asp:Button runat="server" ID="submitt" Text="Submitt" Class="btn btn-info text-white"  />
                    </div>
                 
                 </div>
              

              </form>
              </div>
            </div>

          
</body>
</html>
