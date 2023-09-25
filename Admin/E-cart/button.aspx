<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="button.aspx.cs" Inherits="Admin.E_cart.button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>GVR-E-CART</title>
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="GVR - eCommerce" />
    <meta name="author" content="p-themes" />

    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />

    <!-- Plugins CSS File -->

    
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="assets/css/plugins/jquery.countdown.css" />

    <!-- Main CSS File -->

    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/skins/skin-demo-2.css" />
    <link rel="stylesheet" href="assets/css/demos/demo-2.css" />

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form  runat="server">
    <div>
       <div class="row">
                                    <div class="card bg-white shadow p-5">
                                        <div class="row">
                                            <div class="col-lg-8">

                                                <span><b>LOGIN</b> &nbsp  
                                                   <i class="fa-solid fa-square-check fa-1x" style="color: #146aff;"></i>
                                                </span>
                                                <div style="width: 50rem;">

                                                    <%-- <b>Sweety</b>--%>

                                                    <asp:PlaceHolder ID="userId_label" runat="server">
                                                        <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder>
                                                </div>
                                            </div>


                                            <div class="col-lg-2">
                                                <asp:Button ID="Button_change" runat="server" Text="change"
                                                    Style="margin-left: 7rem; background-color: #17a2b8; color: white; border: none;"
                                                    OnClick="Button_change_Click" />
                                            </div>

                                        </div>
                                    </div>


                                    <div id="continuecheckout">
                                        <asp:Button ID="btn_cnfrmcheckout" runat="server" Class="btn" Text="Continue to CheckOut"
                                            Visible="false" Style="background-color:#062b60; color:white;" />
                                    </div>
                                </div>
                            </div>

  
    </form>
</body>
</html>
