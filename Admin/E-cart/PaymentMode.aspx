<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentMode.aspx.cs" Inherits="Admin.E_cart.PaymentMode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <title>GVR-E-CART</title>
      <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon"/>

    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="GVR - eCommerce" />
    <meta name="author" content="p-themes" />
    <!-- Favicon -->
    <%--<link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png" />
    <link rel="manifest" href="assets/images/icons/site.html" />
    <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666" />
    <link rel="shortcut icon" href="assets/images/logo.png" />--%>
    <meta name="apple-mobile-web-app-title" content="Molla" />
    <meta name="application-name" content="Molla" />
    <meta name="msapplication-TileColor" content="#cc9966" />
    <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml" />
    <meta name="theme-color" content="#ffffff" />
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css" />
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



    <form runat="server">

        <div class="container">
            <div class="row">

           <aside class="col-lg-6">
               <div class="summary">
                   <div class="accordion-summary" id="accordion-payment">
                       <div class="card">
                           <div class="card-header" id="heading-1">
                               <h2 class="card-title">
                                   <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">Net Banking </a>
                               </h2>
                           </div>

                           <div id="collapse-1" class="collapse show" aria-labelledby="heading-1" data-parent="#accordion-payment">
                               <div class="card-body">
                                  
                                   <label>Select Bank *</label>
                                    <%-- <input type="text" id="txtbnk" class="form-control" placeholder="Enter your net banking id"  />
                                          --%>

                                    
                        <select class="form-control" runat="server" id="txt_opt">
                                       <option>Select Bank</option>
                                       <option>HDFC</option>
                                       <option>Andhra bank</option>
                                       <option>SBI</option>
                                       <option>CANERA BANK</option>
                                       <option>BANK OF BARODA</option>
                                       <option>UNION BANK </option>
                                       <option>AXIS BANK</option>
                                       <option>KOTAK BANK</option>
                                   </select>

                           <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txt_opt" ErrorMessage="Please select your bank"></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>


                            <!============================================>

                                      <div class="card">
                              <div class="card-header" id="heading-2">
                                  <h2 class="card-title">
                                      <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">Debit Card
		         </a>
                                  </h2>
                              </div>

                              <div id="collapse-2" class="collapse" aria-labelledby="heading-2" data-parent="#accordion-payment">
                                  <div class="card-body">
                                      <div class="row">


                                          <div class="col-lg-11">
                                              <label>Card No *</label>
                                              <input type="text" id="txt_bank" class="form-control" placeholder="Enter your card number"  runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_bank" ErrorMessage="Please select your payment mode"></asp:RequiredFieldValidator>

                                               </div>
                                      </div>

                                      <div class="row">
                                          <div class="col-lg-3">
                                              <label>CVV *</label>

                                              <input type="text" id="txt_cvv" class="form-control" placeholder="_ _" runat="server" />
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cvv" ErrorMessage="Please select your payment mode"></asp:RequiredFieldValidator>

                                          </div>
                                          <div class="col-lg-3">
                                              <label>MM*</label>

                                              <input type="text" id="txt_mm" class="form-control" placeholder="_ _"  runat="server"/>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_mm" ErrorMessage="Please select your payment mode"></asp:RequiredFieldValidator>

                                          </div>
                                          <div class="col-lg-3">
                                              <label>Year*</label>

                                              <input type="text" id="txt_yy" class="form-control" placeholder="_ _ _ _" runat="server"/>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_yy" ErrorMessage="Please select your payment mode"></asp:RequiredFieldValidator>

                                          </div>
                                      </div>
                                  </div>
                              </div>
             </div>
                          

                           <!============================================>

									   

                                       <div class="card">
                                           <div class="card-header" id="heading-3">
                                               <h2 class="card-title">
                                                   <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">UPI	Payment
							                </a>
                                               </h2>
                                           </div>

                                           <div id="collapse-3" class="collapse" aria-labelledby="heading-3" data-parent="#accordion-payment">
                                               <div class="card-body">
                                                   

                                                   <select class="form-control" runat="server" name="your_center" id="Select3">
                                                       <option>select mode</option>
                                                       <option value="01">GPAY</option>
                                                       <option value="02">Phone phe bank</option>
                                                       <option value="03">Paytm</option>
                                                       <option value="04">Amazon pay</option>
                                                   </select>
                                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Select3" ErrorMessage="Please select your payment mode"></asp:RequiredFieldValidator>

                                               </div>
                                             
                                           </div>
                                       
                                       </div>
                  

               <!============================================>
                                                
                         <div class="card">
                             <div class="card-header" id="heading-5">
                                 <h2 class="card-title">
                                     <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-5" aria-expanded="false" aria-controls="collapse-5">Credit Card 
		         
                                         <img src="assets/images/payments-summary.png" alt="payments cards" />
                                     </a>
                                 </h2>
                             </div>

                             <div id="collapse-5" class="collapse" aria-labelledby="heading-5" data-parent="#accordion-payment">
                                 <div class="card-body">
                                     <div class="row">


                                         <div class="col-lg-11">
                                             <label>Card No *</label>
                                             <input type="text" id="txt_bk" class="form-control" placeholder="Enter your card number" />
                                         </div>
                                     </div>
                                     <div class="row">

                                         <div class="col-lg-3">
                                             <label>CVV *</label>
                                             <input type="text" id="txtcvv" class="form-control" placeholder="_ _" />
                                         </div>

                                         <div class="col-lg-3">
                                             <label>MM*</label>
                                             <input type="text" id="txtmm" class="form-control" placeholder="_ _" />
                                         </div>

                                         <div class="col-lg-3">
                                             <label>Year*</label>
                                             <input type="text" id="txtyy" class="form-control" placeholder="_ _ _ _" />
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>


         <!============================================>
		               			
                        <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block" runat="server">
                            <span class="btn-text">Continue</span>
                            <span class="btn-hover-text">Proceed to Checkout</span>
                        </button>

                </div>
             </div>
         </aside>



                <div class="col-lg-6">
                    <div class="card bg-gray p-5">
                        <div class="card-header" id="heading">
                            <h6>Billing Address </h6>
                            <div class="card-body">
                                <asp:Panel ID="Panel_Address" runat="server"></asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>

    <footer class="footer" style="background-color: #f9f9f9; border: none;">
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
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div>
    <!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>

            <form action="#" method="get" class="mobile-search">
                <label for="mobile-search" class="sr-only">Search</label>
                <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." />
                <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
            </form>
        </div>
    </div>

    <!==============================>
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
    <script src="assets/js/main.js"></script>
</body>
</html>
