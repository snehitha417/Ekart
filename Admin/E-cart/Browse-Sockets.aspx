<%@ Page Language="C#"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Browse-Sockets.aspx.cs" Inherits="Admin.E_cart.Browse_Sockets" %>

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
    <link rel="stylesheet" href="assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css" />
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="assets/css/plugins/jquery.countdown.css" />
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/skins/skin-demo-2.css" />
    <link rel="stylesheet" href="assets/css/demos/demo-2.css" />

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.plugin.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/demos/demo-2.js"></script>
   
</head>
<body>
    <form runat ="server">

 
      <div class="container">

        <header class="header header-2 header-intro-clearance">

            <!-----1st header ends -------------------->


            <!-------------2nd  header  -logo-header------------------------>

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
                                <li><a href="faq.html">FAQs</a></li>

                                <li><a href="coming-soon.html">Coming Soon</a></li>
                            </ul>
                        </li>


                        <li><a href="contact.aspx" class="sf-with-ul">Contact</a>  </li>


                    </ul>
              

                </div>
            </div>
            </header>
        </div>
            <!------------------->

            <div class="container mt-5">
                <div class="heading heading-center mb-3">
                    <h2 class="title">Top Selling Products</h2>
                    <!-- End .title -->

                    <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="top-all-link" data-toggle="tab" href="#top-all-tab" role="tab" aria-controls="top-all-tab" aria-selected="true">All</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="top-fur-link" data-toggle="tab" href="#top-fur-tab" role="tab" aria-controls="top-fur-tab" aria-selected="false">Furniture</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="top-decor-link" data-toggle="tab" href="#top-decor-tab" role="tab" aria-controls="top-decor-tab" aria-selected="false">Decoration</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="top-light-link" data-toggle="tab" href="#top-light-tab" role="tab" aria-controls="top-light-tab" aria-selected="false">Lighting</a>
                        </li>
                    </ul>
                </div>
                <!-- End .heading -->

                <div class="tab-content">
                    <div class="tab-pane p-0 fade show active" id="top-all-tab" role="tabpanel" aria-labelledby="top-all-link">
                        <div class="products">
                            <div class="row justify-content-center">

                                <asp:Repeater runat="server" ID="rp_socketsproducts">
                                    <ItemTemplate>
                                        <div class="col-6 col-md-4 col-lg-3 col-xl-5col">
                                            <div class="product product-11 text-center">
                                                <figure class="product-media">
                                               

                                                <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image" />
                                            

                                            <div class="product-action-vertical">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>

                                                <%--<a href="#" class="btn-product-icon btn-wishlist "><span>add to wishlist</span></a>--%>
                                            </div>

                                        </figure>

                                        <div class="product-body">

                                            <div class="product-cat">
                                                <a href="#"><%# Eval("Brand") %></a>
                                            </div>

                                            <h3 class="product-title">
                                                <%--   <a href="product.html">--%>

                                                <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_details"> <%# Eval("ProductName") %></asp:LinkButton>

                                            </h3>
                                            <div class="product-price">
                                                <b>Price:</b>  <%# Eval("ProductPrice") %>
                                            </div>

                                        </div>

                                        <div class="product-action">
                                            <asp:Button ID="cart_btn" class="btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="add_cart" />

                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </div>

                        </div>
                    </div>
                </div>

            </div>
    


                <!======================== footer 1 STARTS  HERE  ======================== >

       
 <div class="container-fluid ">
    <footer class="footer footer-2">
        <div class="icon-boxes-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-rocket"></i>
                            </span>
                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Free Shipping</h3>
                                <!-- End .icon-box-title -->
                                <p>orders $50 or more</p>
                            </div>
                            <!-- End .icon-box-content -->
                        </div>
                        <!-- End .icon-box -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-rotate-left"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Free Returns</h3>
                                <!-- End .icon-box-title -->
                                <p>within 30 days</p>
                            </div>
                            <!-- End .icon-box-content -->
                        </div>
                        <!-- End .icon-box -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-info-circle"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Get 20% Off 1 Item</h3>
                                <!-- End .icon-box-title -->
                                <p>When you sign up</p>
                            </div>
                            <!-- End .icon-box-content -->
                        </div>
                        <!-- End .icon-box -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-life-ring"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">We Support</h3>
                                <!-- End .icon-box-title -->
                                <p>24/7 amazing services</p>
                            </div>
                            <!-- End .icon-box-content -->
                        </div>
                        <!-- End .icon-box -->
                    </div>
                    <!-- End .col-sm-6 col-lg-3 -->
                </div>
                <!-- End .row -->
            </div>
            <!-- End .container -->
        </div>
        <!-- End .icon-boxes-container -->


        <!======================== footer 1 ENDS   HERE  ======================== >

       <!======================== footer 2 STARTS   HERE  ======================== >
        
        <div class="footer-newsletter bg-image" style="background-image: url(assets/images/backgrounds/bg-2.jpg)">
            <div class="container">
                <div class="heading text-center">
                    <h3 class="title">Get The Latest Deals</h3>
                    <!-- End .title -->
                    <p class="title-desc">and receive <span>$20 coupon</span> for first shopping</p>
                    <!-- End .title-desc -->
                </div>
                <!-- End .heading -->

                <div class="row">
                    <div class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <form action="#">
                            <div class="input-group">
                                <input type="email" class="form-control" placeholder="Enter your Email Address" aria-label="Email Adress" aria-describedby="newsletter-btn" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit" id="newsletter-btn"><span>Subscribe</span><i class="icon-long-arrow-right"></i></button>
                                </div>
                                <!-- .End .input-group-append -->
                            </div>
                            <!-- .End .input-group -->
                        </form>
                    </div>
                    <!-- End .col-sm-10 offset-sm-1 col-lg-6 offset-lg-3 -->
                </div>
                <!-- End .row -->
            </div>
            <!-- End .container -->
        </div>
        <!-- End .footer-newsletter bg-image -->


        <!======================== footer 2 ENDS HERE  ======================== >
        
            
       


        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-6">
                        <div class="widget widget-about">
                            <img src="assets/images/demos/demo-2/logo.png" class="footer-logo" alt="Footer Logo" style="width: 100px;" />
                            <p>Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus. </p>

                            <div class="widget-about-info">
                                <div class="row">
                                    <div class="col-sm-6 col-md-4">
                                        <span class="widget-about-title">Got Question? Call us 24/7</span>
                                        <a href="tel:123456789">+0123 456 789</a>
                                    </div>
                                    <!-- End .col-sm-6 -->
                                    <div class="col-sm-6 col-md-8">
                                        <span class="widget-about-title">Payment Method</span>
                                        <figure class="footer-payments">
                                            <img src="assets/images/payments.png" alt="Payment methods" width="272" height="20" />
                                        </figure>
                                        <!-- End .footer-payments -->
                                    </div>
                                    <!-- End .col-sm-6 -->
                                </div>
                                <!-- End .row -->
                            </div>
                            <!-- End .widget-about-info -->
                        </div>
                        <!-- End .widget about-widget -->
                    </div>
                    <!-- End .col-sm-12 col-lg-3 -->

                    <div class="col-sm-4 col-lg-2">
                        <div class="widget">
                            <h4 class="widget-title">Information</h4>
                            <!-- End .widget-title -->

                            <ul class="widget-list">
                                <li><a href="about.html">About Molla</a></li>
                                <li><a href="#">How to shop on Molla</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="contact.aspx">Contact us</a></li>
                                <li><a href="login.html">Log in</a></li>
                            </ul>
                            <!-- End .widget-list -->
                        </div>
                        <!-- End .widget -->
                    </div>
                    <!-- End .col-sm-4 col-lg-3 -->

                    <div class="col-sm-4 col-lg-2">
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
                    <!-- End .col-sm-4 col-lg-3 -->

                    <div class="col-sm-4 col-lg-2">
                        <div class="widget">
                            <h4 class="widget-title">My Account</h4>
                            <!-- End .widget-title -->

                            <ul class="widget-list">
                                <li><a href="#">Sign In</a></li>
                                <li><a href="cart.aspx">View Cart</a></li>
                                <li><a href="#">My Wishlist</a></li>
                                <li><a href="#">Track My Order</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                            <!-- End .widget-list -->
                        </div>
                        <!-- End .widget -->
                    </div>
                    <!-- End .col-sm-64 col-lg-3 -->
                </div>
                <!-- End .row -->
            </div>
            <!-- End .container -->
        </div>
        <!-- End .footer-middle -->


        <!======================== SNIPPETS STARTS HERE  ======================== >

	       

        <div class="footer-bottom">
            <div class="container">
                <p class="footer-copyright">Copyright © 2019 Molla Store. All Rights Reserved.</p>
                <!-- End .footer-copyright -->
                <ul class="footer-menu">
                    <li><a href="#">Terms Of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
                <!-- End .footer-menu -->

                <div class="social-icons social-icons-color">
                    <span class="social-label">Social Media</span>
                    <a href="#" class="social-icon social-facebook" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                    <a href="#" class="social-icon social-twitter" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                    <a href="#" class="social-icon social-instagram" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                    <a href="#" class="social-icon social-youtube" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
                    <a href="#" class="social-icon social-pinterest" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                </div>
                <!-- End .soial-icons -->
            </div>
            <!-- End .container -->
        </div>
        <!-- End .footer-bottom -->

        <!======================== SNIPPETS ENDS HERE  ======================== >  

             
    </footer>
            <!-- End .footer -->
            <!-- End .page-wrapper -->
     </div>
           
  
            <!======================== BACK ARROW   STARTS HERE  ======================== >  

   </form>
   
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>
  
</body>
</html>
