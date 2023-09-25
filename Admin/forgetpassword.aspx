<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="Admin.forgetpassword" %>

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
  
    <title> forgetpassword </title>
</head>

<body>
   <div class="container">
        <div class="card bg-light shadow" style="border: none; text-align: center; margin-left: 292px; margin-top: 74px; width: 28rem; height: 29rem; border-radius: 16px;">

            <div class="row mt-3">
                <div class="col-lg-12">
                    <h2><i class="text-info">Reset Password</i></h2>
                    
                </div>
            </div> <br />

                <form runat="server">
                    <div class="row ">
                     <div class="col-lg-6 ">
                           <asp:Label runat="server" ID="userid" class="userid" >User Id</asp:Label>
                           <asp:TextBox ID="TextBox1" runat="server" style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;" ValidationGroup="Forget"/>
                        
                         <asp:RequiredFieldValidator ID="refId" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter User Id " ForeColor="Red" ValidationGroup="Forget"/>
                    
                         </div>
                         </div>
                    

                    <div class="row ">
                     <div class="col-lg-7 ">
                           <asp:Label runat="server" ID="newpassword" class="New Password" >New Password</asp:Label>
                           <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;" ValidationGroup="Forget"/>
                        
                         <asp:RequiredFieldValidator ID="refpass" runat="server" ControlToValidate="TextBox2"  ErrorMessage="Please Enter new Password" ForeColor="Red" ValidationGroup="Forget"/>
                     
                         </div>
                         </div>
                   

                     <div class="row ">
                     <div class="col-lg-9 ">
                           <asp:Label runat="server" ID="confm" class="Conform Password" >Conform New Password</asp:Label>
                           <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"  style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;"  ValidationGroup="Forget"/>
                           <asp:RequiredFieldValidator ID="refconf" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Conform Password" ForeColor="Red"  ValidationGroup="Forget"/>
                         
                         <asp:CompareValidator ID="cconform" runat="server" ControlToValidate="TextBox3" ControlToCompare="TextBox2" ErrorMessage="Password Does not Matching " ForeColor="Red" ValidationGroup="Forget"/>
                         </div>
                         </div>

                 <div class="row ">
                   <div class="col-lg-9 ">
                         <asp:Button ID="btnRegister" runat="server" Text="Reset Password"  Style=" height: 2.2rem;  width: 18.5rem;  text-align: center;  
                   margin-left: 75px;  background-color: #17a2b8;  color: white;  border: none;  border-radius: 4px;" OnClick="btn_Reset" ValidationGroup="Forget" />
                
              </div>  </div> 

    </form>  </div>
       </div>

</body>
</html>
