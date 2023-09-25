<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Admin.E_cart.RegistrationForm" %>

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
  
    <title> user register</title>
   
      <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon"/>

    <style>

      
        .sub{
         width: 80px;
         border:none;
         border-radius:4px
         }  

        .becom{          
          height: 42px; 
         border-radius: 0.4rem;
         width: 152px;   
   
        }
 
     
    </style>


      <script type="text/javascript">
                    function isNumberKey(evt) {
                        var charCode = (evt.which) ? evt.which : event.keyCode;

                        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                            return false;
                        }

                        return true;
                    }
       </script>
</head>

<body>
       <div class="container-fluid" >
      <nav class="navbar fixed-top navbar-expand-sm bg-white  shadow ">
          <a href="#" class="navbar-brand text-dark">
               <img src="../Images/logo.png" alt="" class="image-fluid  logo1 "   style=" width: 156px; height: 50px; margin-left: 75px;" /></a>
           <div class="collapse navbar-collapse  justify-content-end" id="snehith">
               <div class="collapse navbar-collapse justify-content-end" id="snehitha">
                   <ul class="navbar-nav ">
                          <li class="nav-item"> <a href="LoginForm.aspx"  class="nav-link  text-white btn btn-success    ml-lg-5 p-2 "  style="width:95px;  border-radius: 0.4rem; " >Login</a></li>
                          <li class="nav-item"> <a href="RegistrationForm.aspx" class="nav-link  text-white btn btn-warning  bn ml-lg-5 p-2" style="width:95px;   border-radius: 0.4rem; " >Register</a></li>
                      
                   </ul> </div>
            </div>
         </nav>
       </div>

     <div class="container" style=" margin-top: 15px; margin-left: 500px";>
         <div class="card bg-white" style="border: none;  width: 35rem;
                  height: auto; border-radius: 16px;  height:auto; margin-top: 108px;">

           <form id="form1" runat="server"> 
         
                 <div class="col-lg-12 "  style="margin-top: 2px; margin-left: 125px;">                           
                    <%-- <img src="images/EMS.png" style="width: 207px" margin-left: 30px"; />--%>
                    
                 </div>
                 <h3 class="reg text-info" style=" margin-left: 125px;" > <b >Registration form</b></h3>


    


     <!------------------------------form  STARTS HERE--------------------------->
                  
           
             <div id="frm" class="continer p-3">
               <div class="row">
                  <div class="col-sm-6 ">
                     <asp:Label runat="server" ID="fname" class="fname" >First Name</asp:Label>
                     <asp:TextBox ID="txt_firstName" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                     
                      <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txt_firstName" ForeColor="Red" ErrorMessage="Please enter your First Name" >
                  </asp:RequiredFieldValidator>
                  </div>

                <div class="col-sm-6">
                     <asp:Label runat="server" ID="lname" class="lname">Last Name</asp:Label>
                     <asp:TextBox ID="txt_LastName" runat="server" Class="form-control" style="border-radius: 13px;   width: 14.5rem;  height: 2.2rem;"/>
                 
                    <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txt_LastName" ForeColor="Red" ErrorMessage="Please enter your Last Name" >
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <!--------------------------line2  ----------------->

            <div class="row">
                <div class="col-sm-6">
                     <asp:Label runat="server" ID="Emailid" class="email">Email Id</asp:Label>
                     <asp:TextBox ID="txt_EmailId" runat="server" Class="form-control" TextMode="Email" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem; " />
                    
                    <asp:RequiredFieldValidator ID="rfvEmailid" runat="server"  ControlToValidate="txt_EmailId"  ForeColor="Red" ErrorMessage="please enter your Email Id" >
                    </asp:RequiredFieldValidator>

<%--                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid email Format"></asp:RegularExpressionValidator>--%>

                </div>

               <div class="col-sm-6">
                    <asp:Label runat="server" ID="Phone" class="pn">Phone Number </asp:Label>
                     <asp:TextBox ID="txt_phonenumber" runat="server" Class="form-control" max-length="10" onkeypress="return isNumberKey(event)" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;"/>
                     
                    <asp:RequiredFieldValidator ID="rfvphno" runat="server" ControlToValidate="txt_phonenumber" ForeColor="Red" ErrorMessage="Please enter your Phone Number " >
                    </asp:RequiredFieldValidator>
                </div>
            </div>

                 <!--------------------------line3---------------------------->
           
                <div class="row">
                <div class="col-sm-6">
                     <asp:Label runat="server" ID="password" class="pn">Password </asp:Label>
                     <asp:TextBox ID="txt_password" runat="server" Class="form-control" TextMode="Password"  style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;" />
      
                     <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="txt_password"    ForeColor="Red" ErrorMessage="Please Enter your password">
                     </asp:RequiredFieldValidator>
                    
                    <%--<asp:CustomValidator ID="cvPassword" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password must be at least 8 characters long and contain a combination of uppercase letters, lowercase letters, numbers, and special characters."
                        OnServerValidate="cvPassword_ServerValidate"></asp:CustomValidator>--%>
              </div>

                   <div class="col-sm-6">
                     <asp:Label runat="server" ID="conformpass" class="pn">Confirm Password </asp:Label>
                     <asp:TextBox ID="txt_confmpassword" runat="server"  Class="form-control" TextMode="Password" style="border-radius: 13px; width: 14.5rem;  height:2.2rem;" /> 
                  
                     <asp:requiredfieldvalidator id="refpass" runat="server" controltovalidate="txt_confmpassword" forecolor="red" errormessage="please confirm your password">
                     </asp:requiredfieldvalidator>
                 <asp:comparevalidator id="cvconfirmpassword" runat="server" controltovalidate="txt_confmpassword"
                         controltocompare="txt_password" errormessage="passwords do not match."  ></asp:comparevalidator>
                </div>  
            </div>

                 <!--------------------------line3---------------------------->

                 <div class="row">
                   <div class="col-sm-6">
                      <asp:Label runat="server" ID="num" class="pn">User ID </asp:Label>
                       <asp:TextBox ID="txt_userid" runat="server"  Class="form-control" style="border-radius: 13px; width:14.5rem;  height:2.2rem;" />
                   
                       <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txt_userid" ForeColor="Red" ErrorMessage="Please Enter your User ID"  >
                       </asp:RequiredFieldValidator>
                  </div>

                  <div class="col-sm-6">
                      <asp:Label runat="server" ID="datebirth" class="pn">DOB </asp:Label><br />
                       <asp:TextBox ID="txt_DOB" runat="server" Class="form-control" TextMode="Date" style="border-radius: 13px; width:14.5rem;  height: 2.2rem;" />

                      <asp:RequiredFieldValidator ID="rfvdob" runat="server" ControlToValidate="txt_DOB" ForeColor="Red" ErrorMessage="Please Enter your Date of Birth">
                      </asp:RequiredFieldValidator>
                  </div>
                 </div>
            

                 <!--------------------------line4---------------------------->


                   <div class="row">
                   <div class="col-sm-6">
                     <asp:Label ID="Gender" runat="server" Text="Gender"></asp:Label>
                     <br />
                      <asp:RadioButtonList ID="Radiobtn" runat="server" RepeatDirection="Horizontal">
                      <asp:ListItem ID="RadioButton1"  runat="server" Text="Male"  GroupName="gender" /> 
                      <asp:ListItem ID="RadioButton2"  runat="server" Text="Female" GroupName="gender" /> 
                      <asp:ListItem ID="RadioButton3"  runat="server" Text="other"  GroupName="gender" /> 
                   </asp:RadioButtonList>
                  <asp:RequiredFieldValidator ID="rfvgender" runat="server" ControlToValidate="Radiobtn" ForeColor="Red" ErrorMessage="Please select your Gender "></asp:RequiredFieldValidator>
                  </div>   
                </div>
              
             
      <%-- <asp:Button ID="btn" runat="server" CssClass="btn btn-info" Text="Register"  OnClick="reg_Click" style="
            width: 165px; margin-left:147px; border-radius: 0.4rem;" />--%>
               
                    </div>
                </form>
              </div>
            </div>
</body>
</html>
