<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/AdminScreens/Sign_Up.aspx.cs" Inherits="Admin.AdminScreens.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title> Admin reg </title>
   
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
     .reg {
           margin-left: 91px;
     }
 </style>

</head>

    <body>

    <%--<%-- <div class="container shadow bg-light mt-lg-2">
        <div class="row"  >

          <div class="col-lg-6"   style="margin-top: 190px;" >
              <img src="../Images/logo.png" alt="" class="img-fluid " style="width: 355px; margin-left: 5rem; " />
            
          </div>

          <div class="col-lg-6   mt-lg-2 pr-lg-5 pt-lg-5">
              <h3> <b  class="reg text-info">Registration form</b></h3>

            <form runat="server">

                 <%--<asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>--%>
                
             <%--    
               <div class="row ">
                  <div class="col-sm-6 ">
                     <asp:Label runat="server" ID="fname" class="fname" >First Name</asp:Label>
                     <asp:TextBox ID="TextBox1" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                  
                      <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Please enter your First Name" >
                  </asp:RequiredFieldValidator>
                  </div>

                <div class="col-sm-6">
                     <asp:Label runat="server" ID="lname" class="lname">Last Name</asp:Label>
                     <asp:TextBox ID="TextBox2" runat="server" Class="form-control" style="border-radius: 13px;   width: 14.5rem;  height: 2.2rem;"/>
                  
                    <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="Please enter your Last Name" >
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <!--------------------------line2  ----------------->

            <div class="row">
                <div class="col-sm-6">
                     <asp:Label runat="server" ID="Emailid" class="email">Email Id</asp:Label>
                     <asp:TextBox ID="TextBox3" runat="server" Class="form-control"  style="border-radius: 13px; width: 14.5rem;  height: 2.2rem; " />
                
                    <asp:RequiredFieldValidator ID="rfvEmailid" runat="server"  ControlToValidate="TextBox3"  ForeColor="Red" ErrorMessage="please enter your Email Id" >
                    </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid email Format"></asp:RegularExpressionValidator>

                </div>

                <div class="col-sm-6">
                    <asp:Label runat="server" ID="Phone" class="pn" Text="Phone Number" />
                     <asp:TextBox ID="TextBox4" runat="server" Class="form-control"  max-length="10" onkeypress="return isNumberKey(event)" style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;"/>
                     
                    <asp:RequiredFieldValidator ID="rfvphno" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="Please enter your Phone Number " >
                    </asp:RequiredFieldValidator>
                </div>
            </div>

                 <!--------------------------line3---------------------------->
                
                <div class="row">
                <div class="col-sm-6">
                     <asp:Label runat="server" ID="password" class="pn">Password </asp:Label>
                     <asp:TextBox ID="TextBox5" runat="server" Class="form-control" TextMode="Password"  style="border-radius: 13px; width: 14.5rem;  height: 2.2rem;" />
      
                     <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="TextBox5" ForeColor="Red" ErrorMessage="Please Enter your password">
                     </asp:RequiredFieldValidator>

                    <asp:CustomValidator ID="Password" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password must be at least 8 characters long and contain a combination of uppercase letters, lowercase letters, numbers, and special characters."
                           OnServerValidate="cvPassword_ServerValidate"></asp:CustomValidator>
                </div>

                   <div class="col-sm-6">
                     <asp:Label runat="server" ID="conformpass" class="pn">Confirm Password </asp:Label>
                     <asp:TextBox ID="TextBox6" runat="server" Class="form-control" TextMode="Password" style="border-radius: 13px; width: 14.5rem;  height:2.2rem;" /> 
                  
                     <asp:requiredfieldvalidator id="refpass" runat="server" controltovalidate="textbox6" forecolor="red" errormessage="please confirm your password">
                     </asp:requiredfieldvalidator>
                   <asp:comparevalidator id="confirmpassword" runat="server" controltovalidate="textbox6"
                         controltocompare="textbox5" errormessage="passwords do not match."  ></asp:comparevalidator>
                </div>  

            </div>

                 <!--------------------------line3---------------------------->

                 <div class="row">
                  <div class="col-sm-6">
                      <asp:Label runat="server" ID="num" class="pn">User ID </asp:Label>
                       <asp:TextBox ID="TextBox7" runat="server" Class="form-control" style="border-radius: 13px; width:14.5rem;  height:2.2rem;" />
                   
                       <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="Please Enter your User ID"  >
                      </asp:RequiredFieldValidator>
                  </div>

                  <div class="col-sm-6">
                      <asp:Label runat="server" ID="datebirth" class="pn">DOB </asp:Label><br />
                       <asp:TextBox ID="TextBox8" runat="server" Class="form-control" TextMode="Date" style="border-radius: 13px; width:14.5rem;  height: 2.2rem;" />

                      <asp:RequiredFieldValidator ID="rfvdob" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ErrorMessage="Please Enter your Date of Birth">
                      </asp:RequiredFieldValidator>
                  </div>
                 </div>
            

                 <!--------------------------line4---------------------------->

                
                 <div class="row">
                  <div class="col-sm-6">
                      <asp:Label runat="server" ID="Label1" class="ad">Aadhar </asp:Label>
                       <asp:TextBox ID="TextBox9" runat="server"  Class="form-control" style="border-radius: 13px; width:14.5rem;  height:2.2rem;" />                  
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" onkeypress="return isNumberKey(event)" ControlToValidate="TextBox9" ForeColor="Red" ErrorMessage="Please Enter your Aadhar ID"  >
                      </asp:RequiredFieldValidator>
                  </div>

                  <div class="col-sm-6">
                      <asp:Label runat="server" ID="Label2" class="pn">PAN No </asp:Label><br />
                       <asp:TextBox ID="TextBox10" runat="server"  Class="form-control"  style="border-radius: 13px; width:14.5rem;  height: 2.2rem;" />

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10" ForeColor="Red" ErrorMessage="Please Enter your PAN Number">
                      </asp:RequiredFieldValidator>
                  </div>
                 </div>
            


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
            
                
                   <asp:Button ID="btnRegister" runat="server" Text="Register"  Style="height: 40px; text-align: center; width: 118px; margin-left: 10rem; margin-top: 2rem; margin-top: 0rem;
                      margin-bottom: 21px; background-color: #17a2b8;  color: white;  border: none; border-radius: 36px;" OnClick="btnsubmit"/>         
                </form>
             
              </div>
         </div>
         </div>--%>
  </body>
</html>
