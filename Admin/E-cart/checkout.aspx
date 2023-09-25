<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Admin.E_cart.checkout" %>

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

    <!-- Plugins JS File -->

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/wNumb.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/nouislider.min.js"></script>
    <!-- Main JS File -->


    <style>
        .cardb {
            background-color: #eee;
            overflow-y: scroll;
        }


            .cardb::-webkit-scrollbar {
                display: none;
            }
    </style>


</head>

<body>
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

        <form runat="server">

            <div class="container">
                <div class="col-lg-12">
                    <div class="row">

                        <div class="col-lg-9">
                            <div class="cardb bg-light p-5">
                                <!================================CARD uSER PROFILE STARTS HERE ===============================>
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

                            <!================================CARD uSER PROFILE ENDS  HERE ===============================>
                                <br />

                            <!================================CARD DELIVERY ADDRESS STARTS HERE  ===============================>
                                <div class="row">
                                    <div class="card bg-white shadow">
                                        <div class=" card-head bg-light p-3">
                                            <h4 class="text-dark">Delivery Address </h4>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-8">
                                                <p class="p-4">
                                                    making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                                </p>
                                            </div>

                                            <div class="col-lg-3">
                                                <button class="btn btn-warning" style="margin-top: 55px;">
                                                    edit
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!================================CARD DELIVERY ADDRESS ENDS HERE  ===============================>
                                <br />

                            <!================================CARD ADD  ++++ ADDRESS STARTS HERE  ===============================>

                                     <div class="row">
                                         <div class="card bg-white shadow" style="width: 82rem;">
                                             <div class="accordion-summary" id="accordion-payment">

                                                 <div class="card p-3">
                                                     <div class="card-body ">
                                                         <h6><a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                                             <i class="fa-solid fa-plus fa-1x" style="color: #005eff;"></i>Add New Address </a></h6>
                                                     </div>
                                                     <div id="collapse-1" class="collapse" aria-labelledby="heading-1" data-parent="#accordion-payment">
                                                         <div class="card-body">
                                                             <div class="col-lg-12">

                                                                 <div class="row">
                                                                     <div class="col-lg-6">
                                                                         <label>First Name *</label>

                                                                         <asp:TextBox ID="txt_frstname" runat="server" type="text" Class="form-control" />

                                                                         <asp:RequiredFieldValidator ID="frstrname" runat="server" ControlToValidate="txt_frstname" ForeColor="Red" ErrorMessage="Please Enter your First Name"> 
                                                                           </asp:RequiredFieldValidator>

                                                                     </div>

                                                                     <div class="col-lg-6">
                                                                         <label>Last Name *</label>
                                                                         <asp:TextBox ID="txt_lst" runat="server" type="text" Class="form-control" />
                                                                         <asp:RequiredFieldValidator ID="lstname" runat="server" ControlToValidate="txt_lst" ForeColor="Red" ErrorMessage="Please Enter your Last Name"> 
                                                                          </asp:RequiredFieldValidator>
                                                                     </div>
                                                                 </div>

                                                                 <div class="row">
                                                                     <div class="col-sm-6">
                                                                         <label>Email address *</label>
                                                                         <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Class="form-control" placeholder="Enter Valid Email Id" />

                                                                         <asp:RequiredFieldValidator ID="email" runat="server" ControlToValidate="txt_email" ForeColor="Red" ErrorMessage=" Please Enter your Email Id"> 
                                                                          </asp:RequiredFieldValidator>

                                                                     </div>



                                                                     <div class="col-sm-6">
                                                                         <label>Phone *</label>
                                                                         <asp:TextBox ID="txt_phoneno" runat="server" type="text" Class="form-control" placeholder="Enter your Phoneno " />

                                                                         <asp:RequiredFieldValidator ID="phoneno" runat="server" ControlToValidate="txt_phoneno" ForeColor="Red" ErrorMessage="Please Enter your Phoneno"> 
                                                                          </asp:RequiredFieldValidator>
                                                                     </div>
                                                                 </div>

                                                                 <div class="row">

                                                                     <div class="col-sm-6">
                                                                         <label style="float: left">Street address *</label>

                                                                         <asp:TextBox ID="txt_strt" runat="server" type="text" Class="form-control" placeholder="Enter your Street Name" />

                                                                         <asp:RequiredFieldValidator ID="strtadd" runat="server" ControlToValidate="txt_strt" ForeColor="Red" ErrorMessage="Please enter your Street name"> 
                                                                            </asp:RequiredFieldValidator>
                                                                     </div>

                                                                     <div class="col-sm-6">
                                                                         <label>Country *</label>

                                                                         <asp:TextBox ID="txt_country" runat="server" type="text" Class="form-control" placeholder="Enter your Country" />
                                                                         <asp:RequiredFieldValidator ID="cntry" runat="server" ControlToValidate="txt_country" ForeColor="Red" ErrorMessage="Please enter your country"> 
                                                                           </asp:RequiredFieldValidator>
                                                                     </div>

                                                                 </div>


                                                                 <div class="row">
                                                                     <div class="col-sm-6">
                                                                         <label>City *</label>

                                                                         <asp:TextBox ID="txt_city" runat="server" type="text" Class="form-control" placeholder="Enter your city Name" />
                                                                         <asp:RequiredFieldValidator ID="cty" runat="server" ControlToValidate="txt_city" ForeColor="Red" ErrorMessage="Please enter your city"> 
                                                                             </asp:RequiredFieldValidator>
                                                                     </div>

                                                                     <div class="col-sm-6">
                                                                         <label>state *</label>
                                                                         <asp:TextBox runat="server" ID="txt_state" Class="form-control" placeholder="Enter your state"></asp:TextBox>
                                                                         <asp:RequiredFieldValidator ID="sta" runat="server" ControlToValidate="txt_state" ForeColor="Red" ErrorMessage="Please enter your State"> 
                                                                          </asp:RequiredFieldValidator>
                                                                     </div>
                                                                 </div>



                                                                 <label>Pincode *</label>
                                                                 <asp:TextBox ID="txt_zip" runat="server" type="text" Class="form-control" placeholder="Enter your Pincode" />

                                                                 <asp:RequiredFieldValidator ID="zip" runat="server" ControlToValidate="txt_zip" ForeColor="Red" ErrorMessage="Please enter your Pincode"> 
                                                                     </asp:RequiredFieldValidator>


                                                                 <label style="float: left">Order notes (optional)</label>
                                                                 <asp:TextBox ID="multitxt" runat="server" TextMode="MultiLine" class="form-control" cols="30" Rows="4" placeholder="Notes about your order,"></asp:TextBox>


                                                                 <asp:Button ID="btn_submitt" runat="server" Text="Save Address and Deliver Here" Style="height: 40px; text-align: center; width: auto; margin-left: 10rem; margin-top: 2rem; margin-top: 0rem; margin-bottom: 21px; background-color: #17a2b8; color: white; border: none;" OnClick="btnsubmitt_Click" />

                                                                 <button runat="server" id="Button3" style="width: 128px; margin-top: 7px; margin-left: 10rem; height: 41px; background-color: white; border-color: #54ccef;">
                                                                     Cancel</button>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>

                            <!================================CARD ADD  ++++ ADDRESS ENDS HERE  ===============================>


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


      


            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </form>

    </main>


    <!============================================>

    <footer class="footer">
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget widget-about">
                            <img src="assets/images/logo.png" class="footer-logo" alt="Footer Logo" width="105" height="25" />
                            <p>Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. </p>

                            <div class="social-icons">
                                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
                                <a href="#" class="social-icon" target="_blank" title="Pinterest"><i class="icon-pinterest"></i></a>
                            </div>
                            <!-- End .soial-icons -->
                        </div>
                        <!-- End .widget about-widget -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="widget">
                            <h4 class="widget-title">Useful Links</h4>
                            <!-- End .widget-title -->

                            <ul class="widget-list">
                                <li><a href="about.html">About Molla</a></li>
                                <li><a href="#">How to shop on Molla</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                                <li><a href="login.html">Log in</a></li>
                            </ul>
                            <!-- End .widget-list -->
                        </div>
                        <!-- End .widget -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="widget">
                            <h4 class="widget-title">Customer Service</h4>
                            <!-- End .widget-title -->

                            <ul class="widget-list">
                                <li><a href="#">Payment Methods</a></li>
                                <li><a href="#">Money-back guarantee!</a></li>
                                <li><a href="#">Returns</a></li>
                                <li><a href="#">Shipping</a></li>
                                <li><a href="#">Terms and conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                            <!-- End .widget-list -->
                        </div>
                        <!-- End .widget -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="widget">
                            <h4 class="widget-title">My Account</h4>
                            <!-- End .widget-title -->

                            <ul class="widget-list">
                                <li><a href="#">Sign In</a></li>
                                <li><a href="cart.html">View Cart</a></li>
                                <li><a href="#">My Wishlist</a></li>
                                <li><a href="#">Track My Order</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                            <!-- End .widget-list -->
                        </div>
                        <!-- End .widget -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->
                </div>
                <!-- End .row -->
            </div>
            <!-- End .container -->
        </div>
        <!-- End .footer-middle -->

        <div class="footer-bottom">
            <div class="container">
                <p class="footer-copyright">Copyright © 2019 Molla Store. All Rights Reserved.</p>
                <!-- End .footer-copyright -->
                <figure class="footer-payments">
                    <img src="assets/images/payments.png" alt="Payment methods" width="272" height="20" />
                </figure>

            </div>

        </div>

    </footer>
</body>

</html>
