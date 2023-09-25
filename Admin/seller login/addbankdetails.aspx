<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbankdetails.aspx.cs" Inherits="Admin.seller_login.addbankdetails" %>

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

    <title> add bank details</title>

</head>
   
    <body>

  <div class="container">
         <div class="card bg-info shadow" style="border: none; text-align: center; margin-left: 292px; margin-top: 74px;  width: 32rem; p
                  height: auto; border-radius: 16px;">

           <div class="card "  style="margin: 0.5rem; border: none;border-radius: 6px; height:auto;">
            <div class="row mt-3">
                <div class="col-lg-12 mt-3">
                    <h2><i class="gb ">Give Your Bank Details</i></h2>
                </div>
            </div> <br />
     
    
              <form id="form2" runat="server">  
                <div class="row">
                   <div class="col-lg-12">
                    <asp:RadioButtonList ID="ButtonList" runat="server" AutoPostBack="true">

                              <asp:ListItem   enabled="true"  Text="I have a bank account in my register business name"  style="    margin-right: 95px;" Value="option1" > </asp:ListItem>

                              <asp:ListItem   enabled="true"  Text ="I have applied /will apply for Bank Account in my register business" style="margin-left: 7px;" Value="option2" ></asp:ListItem>
                  </asp:RadioButtonList>
                  <br />
                  <div>
                       <asp:Button ID="Button" runat="server" Text="Submitt" onclick="btn_sbmtt" Style="height: 40px; width: 17.5rem; margin-left: -15px; margin-top: 21px; border-radius:3px; background-color: #17a2b8; border:none;  color: white;" />  
                   </div>
                       <br />
    </div>
                    </div>
    </form>
               </div> </div></div>
</body>
</html>
