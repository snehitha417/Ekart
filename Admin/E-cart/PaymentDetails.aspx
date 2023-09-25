<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="Admin.E_cart.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>GVR-E-CART</title>
    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />

    <link href="StyleSheet1.css" rel="stylesheet" />

    <script>
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
    <!----------------- Content for Tab 1-------------- -->

    <form runat="server">

        <div class="container p-3">
            <div class="card  shadow" style="border: none; text-align: center; margin-left: 292px; margin-top: 95px; width: 38rem; height: auto; border-radius: 16px;">

                <div id="ca">
                    <div class="row mt-3">
                        <div class="col-lg-12 mt-2">
                            <h2><b class="sell ">Payment Details </b></h2>
                        </div>
                    </div>

                    <!-------------------  cards  payment STARTS HERE --------------->


                    <div class="row ">
                        <asp:Label runat="server" ID="cardno" class="cardname" Style="margin-left: 70px; font-weight:bold;">Card Number:</asp:Label>
                        <asp:TextBox ID="txt_cardno" runat="server" class="form-control" placeholder="Enter Card Number" Style="border-radius: 5px; height: 45px; width: 28.5rem; margin-left: 67px;"  ValidationGroup=" pay" />
                        <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txt_cardno" ForeColor="Red" ErrorMessage="Please enter your CardNo"  ValidationGroup=" pay">
                        </asp:RequiredFieldValidator>
                    </div>


                    <div class=" row">

                        <asp:Label runat="server" ID="cardhldrname" class="hldr" Style="margin-left: 70px; font-weight:bold;">Card Holder Name:</asp:Label>
                        <asp:TextBox ID="txt_holdr" runat="server" class="form-control" placeholder="Enter Full Name" Style="border-radius: 5px; height: 45px; width: 28.5rem; margin-left: 67px;"  ValidationGroup=" pay" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_holdr" ForeColor="Red" ErrorMessage="Please enter your name"  ValidationGroup=" pay">
                        </asp:RequiredFieldValidator>
                    </div>

                    <div class=" row">
                        <div class="col-sm-3">
                            <asp:Label runat="server" ID="mm" class="mm" Style="margin-left: 42px; font-weight:bold;">Mm</asp:Label>
                            <asp:TextBox ID="txt_month" runat="server" class="form-control" placeholder="MM" Style="border-radius: 5px; height: 2.2rem; width: 125px; margin-left: 67px;"   ValidationGroup=" pay"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_month" ForeColor="Red" ErrorMessage="Please enter your month"  ValidationGroup=" pay">
                            </asp:RequiredFieldValidator>
                        </div>


                        <div class="col-sm-3">
                            <asp:Label runat="server" ID="year" class="yr" Style="margin-left: 28px; font-weight:bold;">Yr</asp:Label>
                            <asp:TextBox ID="txt_year" runat="server" class="form-control" placeholder="YYYY" Style="border-radius: 5px; height: 2.2rem; width: 125px; margin-left: 67px;" ValidationGroup=" pay" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_year" ForeColor="Red" ErrorMessage="Please enter your Year"  ValidationGroup=" pay">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="col-sm-4">
                            <asp:Label runat="server" ID="cv" class="cvv" Style="margin-left: -10px; font-weight:bold;">CVV</asp:Label>
                            <asp:TextBox ID="txt_cvv" runat="server" class="form-control" placeholder="CVV" Style="border-radius: 5px; height: 2.2rem; width: 125px; margin-left: 67px;" ValidationGroup=" pay" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_cvv" ForeColor="Red" ErrorMessage="Please enter your cvv" ValidationGroup=" pay">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <asp:Button ID="btnPay" runat="server" Text="Pay Now"  Style="width: 18rem; height: 41px; margin-left: 66px; color: white; border: none; background-color: #54ccef; font-size: 20px; border-radius: 5px;" OnClick="btnPay_Click" />
                        </div>


              <div class="col-sm-6">
                   <button runat="server"  id="btn_cancel" onserverclick="cancl_Click" style="width:128px; margin-left:31px; height:41px; background-color:white; border-color:#54ccef; margin-right:41px; "> Cancel</button>
               </div>
                    <br />
                    <br />
                    <br />

                </div>
            </div>
        </div>
      </div>
    </form>

    <!-------------------  cards  payment STARTS ends  HERE --------------->


</body>
</html>
