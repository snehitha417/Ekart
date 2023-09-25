<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check.aspx.cs" Inherits="Admin.E_cart.check" %>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
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


    <style>
        .productimg {
            width: 100%;
            padding: 20px;
        }

        img {
            width: 100%;
        }


        /*QUANTITY--------*/
        qua {
            width: 300px;
            margin: 0 auto;
            text-align: center;
            padding-top: 50px;
        }

        .value-button1 {
            display: inline-block;
            border: 1px solid #ddd;
            margin: 0px;
            width: 40px;
            height: 4rem;
            text-align: center;
            vertical-align: middle;
            padding: 11px 0;
            background: #eee;
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

            .value-button1:hover {
                cursor: pointer;
            }


        form #decrease {
            margin-right: -4px;
            border-radius: 8px 0 0 8px;
        }

        form #increase {
            margin-left: -4px;
            border-radius: 0 8px 8px 0;
        }

        form #input-wrap {
            margin: 0px;
            padding: 0px;
        }

        input#number {
            text-align: center;
            border: none;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            margin: 0px;
            width: 40px;
            height: 40px;
        }

        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
    </style>

</head>


<body>
    <form runat="server">

        <div class="container">
            <div class="navbar navbar-expand-lg">
                <a href="index1.aspx" class="navbar-brand">
                    <img src="assets/images/demos/demo-2/logo.png" alt="Molla Logo" style="width: 110px;" />
                </a>
                <ul class="menu sf-arrows">
                    <li class="megamenu-container active">
                        <a href="index1.aspx" class="sf-with-ul">Home</a></li>

                    <li><a href="category.aspx" class="sf-with-ul">Product</a> </li>

                    <li>
                        <a href="#" class="sf-with-ul">Pages</a>

                        <ul>
                            <li><a href="about-2.aspx" class="sf-with-ul">About</a></li>
                            <li><a href="contact.aspx" class="sf-with-ul">Contact</a> </li>

                            <li><a href="login.html">Login</a></li>
                            <li><a href="blog.aspx">Blog</a></li>
                            <li><a href="faq.html">FAQs</a></li>

                            <li><a href="coming-soon.html">Coming Soon</a></li>
                        </ul>
                    </li>


                    <li><a href="contact.aspx" class="sf-with-ul">Contact</a>  </li>
                </ul>
            </div>
        </div>

        <!=================================NAV BAR ENDS HERE==================================>

    <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">Checkout<span>Shop</span></h1>
            </div>

        </div>

        <br />
        <br />



        <div class="container">
            <div class="col-lg-12">
                <div class="row">

                    <div class="col-lg-9">
                        <div class="cardb bg-light p-5">
                            <!================================CARD USER PROFILE STARTS HERE ===============================>
                                <div class="row">
                                    <div class="card bg-white shadow p-5" style="width: 82rem;">
                                        <div class="row">
                                            <div class="col-lg-8">

                                                <span><b>LOGIN</b> &nbsp  
                                                   <i class="fa-solid fa-square-check fa-1x" style="color: #146aff;"></i>
                                                </span>
                                                <div style="width: 50rem;">

                                                    <%-- <b>Sweety</b>--%>

                                                    <h4>
                                                        <asp:PlaceHolder ID="userId_label" runat="server">
                                                            <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder>
                                                    </h4>
                                                </div>
                                            </div>


                                            <div class="col-lg-2">
                                                <asp:Button ID="Button_change" runat="server" Class="btn btn-warning " Text="change"
                                                    Style="margin-left: 7rem; color: white; border: none;" OnClick="Button_change_Click" Visible="true" />
                                            </div>

                                        </div>
                                        <div class="row">

                                            <asp:Button ID="logout_login1" runat="server" Class="btn btn-warning text-white" Text="Logout or Sign to another account" OnClick="redirct_lgin" Visible="false" />
                                            &nbsp  &nbsp  &nbsp
                                                <asp:Button ID="cnfrm_checkout" runat="server" Class="btn" Text="Continue to CheckOut"
                                                    Style="background-color: #062b60; color: white;" OnClick="cnfrm_checkout_Click" Visible="false" />
                                        </div>

                                    </div>
                                </div>


                            <!================================CARD USER PROFILE ENDS  HERE ===============================>
                                <br />

                            <!================================CARD DELIVERY ADDRESS STARTS HERE  ===============================>
                                <div class="row">
                                    <div class="card bg-white shadow" style="width: 82rem;">
                                        <div class=" card-head bg-gray p-3">
                                            <h4 class="text-dark">Delivery Address </h4>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-6">
                                                <p class="p-4">

                                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                                                        <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder>

                                                    <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                                                        <%=HttpContext.Current.Session["MobileNo"] %>, </asp:PlaceHolder>

                                                    <asp:PlaceHolder ID="PlaceHolder3" runat="server">
                                                        <%=HttpContext.Current.Session["Address"] %>, </asp:PlaceHolder>

                                                    <asp:PlaceHolder ID="PlaceHolder4" runat="server">
                                                        <%=HttpContext.Current.Session["Pincode"] %>, </asp:PlaceHolder>

                                                    <asp:PlaceHolder ID="PlaceHolder5" runat="server">
                                                        <%=HttpContext.Current.Session["State"] %>, </asp:PlaceHolder>

                                                    <asp:PlaceHolder ID="PlaceHolder6" runat="server">
                                                        <%=HttpContext.Current.Session["City"] %>, </asp:PlaceHolder>
                                                </p>


                                            </div>
                                               
                                               <div class="col-lg-3">
                                                    <asp:Button ID="Edit" runat="server" Class="btn btn-warning" Text="Edit"
                                                        Style="margin-left: 6rem; margin-top: 10px; color: white; border: none;" />
                                                </div>

                                                  <div class="col-lg-3">
                                                      <asp:Button ID="AddNewAddress" runat="server" Class="btn btn-success" Text="Add New Address"
                                                            Style="margin: 15px;"/>
                                                   </div>
                                              </div>
                                            </div>
                                        </div>

                          


                                        <!================================CARD DELIVERY ADDRESS ENDS HERE  ===============================>
                            <br />

                                        <div class="row">
                                            <div class="card  bg-white shadow " style="width: 82rem;">
                                                <div class="card-head bg-gray p-3">
                                                    <h4 class="text-dark">Order Summary </h4>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <asp:Panel ID="prod_checkoutimg" runat="server"></asp:Panel>

                                                    </div>

                                                    <div class="col-lg-8">
                                                        <asp:Panel ID="Prod_chck_label" runat="server"></asp:Panel>
                                                        <div class="qua">
                                                            <div class="value-button1" id="decrease" onclick="decreaseValue()" value="Decrease Value1">-</div>
                                                            <input type="number" id="number" value="0" />
                                                            <div class="value-button1" id="increase" onclick="increaseValue()" value="Increase Value2">+</div>

                                                        </div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>


                            <aside class="col-lg-3">
                                <div class="summary">
                                    <h3 class="summary-title">Your Order</h3>

                                    <table class="table table-summary">
                                        <thead>
                                            <tr>
                                                <th>ProductName</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="panl" runat="server"></asp:Panel>
                                                </td>
                                                <td>
                                                    <asp:Panel ID="pnel" runat="server"></asp:Panel>
                                                </td>
                                            </tr>

                                            <!-- End .summary-subtotal -->
                                            <tr class="summary-subtotal">
                                                <td>Subtotal:</td>
                                                <td>
                                                    <asp:Label ID="Subtotal" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                            <!-- End .summary-subtotal -->
                                            <tr>
                                                <td>GST<br />
                                                    <span>(GST = 6%)</span>
                                                </td>
                                                <td>
                                                    <asp:Label ID="gst" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>DisCount<br />
                                                    <span>(DisCount = 10%)</span>

                                                </td>
                                                <td><span style="color: red">-</span><asp:Label ID="DisC" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Serive Tax:<br />
                                                    <span>(Serive Tax: = 10%)</span></td>
                                                <td>
                                                    <asp:Label ID="tax" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>Delivery Charges</td>
                                                <td>
                                                    <asp:Label ID="Delivery" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                            <tr class="summary-total">
                                                <td>Total:</td>
                                                <td>
                                                    <asp:Label ID="Prc" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                            <!-- End .summary-total -->

                                        </tbody>
                                    </table>
                                    <asp:Button ID="btn_next" runat="server" Text="Next" Style="height: 40px; text-align: center; width: 118px; margin-left: 10rem; margin-top: 2rem; margin-top: 0rem; margin-bottom: 21px; background-color: #f6a21c; color: white; border: none; border-radius: 36px;" />

                                </div>


                                <!=========================order details ============== ends  here =========================>  	
		                	
                            </aside>


                        </div>
                    </div>
                </div>
    </main>
    </form>


</body>

<script>
    function increaseValue() {
        var value = parseInt(document.getElementById('number').value, 10);
        value = isNaN(value) ? 0 : value;
        value++;
        document.getElementById('number').value = value;
    }

    function decreaseValue() {
        var value = parseInt(document.getElementById('number').value, 10);
        value = isNaN(value) ? 0 : value;
        value < 1 ? value = 1 : '';
        value--;
        document.getElementById('number').value = value;
    }
</script>
</html>
