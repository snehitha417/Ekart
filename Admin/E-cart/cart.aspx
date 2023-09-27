<%@ Page Language="C#" EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Admin.E_cart.cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>GVR - eCommerce</title>
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="GVR - eCommerce" />
    <meta name="author" content="p-themes" />
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png" />
    <link rel="manifest" href="assets/images/icons/site.html" />
    <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666" />
    <link rel="shortcut icon" href="assets/images/logo.png" />
    <meta name="apple-mobile-web-app-title" content="Molla" />
    <meta name="application-name" content="Molla" />
    <meta name="msapplication-TileColor" content="#cc9966" />
    <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml" />
    <meta name="theme-color" content="#ffffff" />
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css" />

    <style>

        .Gridview-header {
            background-color: skyblue;
            color: white;
            margin-left: 5px;
        }

        .product {
            width: 25%;
        }

        img {
            width: 40%;
        }


        .wrapper {
            height: 50px;
            min-width: 100px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.2);
        }

            .wrapper span {
                width: 35%;
                text-align: center;
                font-size: 20px;
                font-weight: 100;
                cursor: pointer;
            }

                .wrapper span.num {
                    font-size: 16px;
                    border-right: 2px solid rgba(0,0,0,0.2);
                    border-left: 2px solid rgba(0,0,0,0.2);
                    pointer-events: none;
                }


        .modal-backdrop {
            opacity: 0; /* Hide the backdrop by making it completely transparent */
            display: none; /* Hide the backdrop by default */
        }

        modal-content {
            height: 300px;
            flex-direction: initial;
            width: 84%;
            border-radius: 0.5rem;
            text-align: center;
            margin-top: 270px;
            background-color: bisque;
        }

        .modal-body {
            font-size: 20px;
            text-align: center;
            color: red;
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
                            <li><a href="faq.html">FAQs</a></li>

                            <li><a href="coming-soon.html">Coming Soon</a></li>
                        </ul>
                    </li>

                    <li><a href="contact.aspx" class="sf-with-ul">Contact</a>  </li>

                </ul>

            </div>

        </div>

        <!======================= NAV BAR  STARTS HERE -===================>

        <main class="main">
            <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
                <div class="container"> 
                    <h1 class="page-title">Shopping Cart<span>Shop</span></h1>
                </div>
                <!-- End .container -->
            </div>
            <!-- End .page-header -->
            <br />

            <!===========================>

              <div class="page-content">
                  <div class="cart">
                      <div class="container">
                          <div class="row">
                              <div class="col-lg-8">
                                  <table class="table table-cart table-mobile">
                                      <thead>
                                          <tr>
                                              <th>Image</th>
                                              <th></th>
                                              <th>Productname</th>
                                              <th></th>
                                              <th>price</th>
                                              
                                              <th>Quantity</th>
                                             
                                              <th>Remove</th>
                                          </tr>
                                      </thead>

                                      <tbody>

                                          <asp:Panel ID="cartimage" runat="server">
                                          </asp:Panel>

                                      </tbody>
                                      
                                  </table>
                              </div>

                           
                              <!=========================== product  price summary ================================>

                            <aside class="col-lg-4">
                                <div class="summary summary-cart">
                                    <h3 class="summary-title">Cart Total</h3>
                                    <!-- End .summary-title -->

                                    <table class="table table-summary">
                                        <tbody>

                                            <tr class="summary-subtotal">
                                                <td>Subtotal:</td>
                                                <td>
                                                    <asp:Panel runat="server" ID="panel_price">
                                                        <asp:Label ID="Total" runat="server"></asp:Label>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                           

                                            <tr class="summary-total">
                                                <td>Total:</td>
                                                <td></td>
                                            </tr>
                                            <!-- End .summary-total -->
                                        </tbody>
                                    </table>
                                    <!-- End .table table-summary -->

                                    <%-- <a href="checkout.aspx" class="btn btn-outline-primary-2 btn-order btn-block">PROCEED TO CHECKOUT</a>--%>
                                    <asp:Button ID="Checkout_id" runat="server" class="btn btn-outline-primary-2 btn-order btn-block" OnClick="Checkout_id_Click" Text="PROCEED TO CHECKOUT" />
                                </div>
                                <!-- End .summary -->

                                <a href="index1.aspx" class="btn btn-outline-dark-2 btn-block mb-3"><span>CONTINUE SHOPPING</span> <i class="icon-refresh"></i></a>
                            </aside>

                              <!-- End .col-lg-3 -->
                          </div>
                          <!-- End .row -->
                      </div>
                      <!-- End .container -->
                  </div>
                  <!-- End .cart -->
              </div>
            <!-- End .page-content -->
        </main><!-- End .main -->



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
                    <!-- End .footer-payments -->
                </div>
                <!-- End .container -->
            </div>
            <!-- End .footer-bottom -->
        </footer>
        <!-- End .footer -->

        <!-- End .page-wrapper -->
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

                <nav class="mobile-nav">
                    <ul class="mobile-menu">
                        <li class="active">
                            <a href="index.html">Home</a>

                            <ul>
                                <li><a href="index-1.html">01 - furniture store</a></li>
                                <li><a href="index-2.html">02 - furniture store</a></li>
                                <li><a href="index-3.html">03 - electronic store</a></li>
                                <li><a href="index-4.html">04 - electronic store</a></li>
                                <li><a href="index-5.html">05 - fashion store</a></li>
                                <li><a href="index-6.html">06 - fashion store</a></li>
                                <li><a href="index-7.html">07 - fashion store</a></li>
                                <li><a href="index-8.html">08 - fashion store</a></li>
                                <li><a href="index-9.html">09 - fashion store</a></li>
                                <li><a href="index-10.html">10 - shoes store</a></li>
                                <li><a href="index-11.html">11 - furniture simple store</a></li>
                                <li><a href="index-12.html">12 - fashion simple store</a></li>
                                <li><a href="index-13.html">13 - market</a></li>
                                <li><a href="index-14.html">14 - market fullwidth</a></li>
                                <li><a href="index-15.html">15 - lookbook 1</a></li>
                                <li><a href="index-16.html">16 - lookbook 2</a></li>
                                <li><a href="index-17.html">17 - fashion store</a></li>
                                <li><a href="index-18.html">18 - fashion store (with sidebar)</a></li>
                                <li><a href="index-19.html">19 - games store</a></li>
                                <li><a href="index-20.html">20 - book store</a></li>
                                <li><a href="index-21.html">21 - sport store</a></li>
                                <li><a href="index-22.html">22 - tools store</a></li>
                                <li><a href="index-23.html">23 - fashion left navigation store</a></li>
                                <li><a href="index-24.html">24 - extreme sport store</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="category.html">Shop</a>
                            <ul>
                                <li><a href="category-list.html">Shop List</a></li>
                                <li><a href="category-2cols.html">Shop Grid 2 Columns</a></li>
                                <li><a href="category.html">Shop Grid 3 Columns</a></li>
                                <li><a href="category-4cols.html">Shop Grid 4 Columns</a></li>
                                <li><a href="category-boxed.html"><span>Shop Boxed No Sidebar<span class="tip tip-hot">Hot</span></span></a></li>
                                <li><a href="category-fullwidth.html">Shop Fullwidth No Sidebar</a></li>
                                <li><a href="product-category-boxed.html">Product Category Boxed</a></li>
                                <li><a href="product-category-fullwidth.html"><span>Product Category Fullwidth<span class="tip tip-new">New</span></span></a></li>
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="#">Lookbook</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="product.html" class="sf-with-ul">Product</a>
                            <ul>
                                <li><a href="product.html">Default</a></li>
                                <li><a href="product-centered.html">Centered</a></li>
                                <li><a href="product-extended.html"><span>Extended Info<span class="tip tip-new">New</span></span></a></li>
                                <li><a href="product-gallery.html">Gallery</a></li>
                                <li><a href="product-sticky.html">Sticky Info</a></li>
                                <li><a href="product-sidebar.html">Boxed With Sidebar</a></li>
                                <li><a href="product-fullwidth.html">Full Width</a></li>
                                <li><a href="product-masonry.html">Masonry Sticky Info</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Pages</a>
                            <ul>
                                <li>
                                    <a href="about.html">About</a>

                                    <ul>
                                        <li><a href="about.html">About 01</a></li>
                                        <li><a href="about-2.html">About 02</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="contact.html">Contact</a>

                                    <ul>
                                        <li><a href="contact.html">Contact 01</a></li>
                                        <li><a href="contact-2.html">Contact 02</a></li>
                                    </ul>
                                </li>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="faq.html">FAQs</a></li>
                                <li><a href="404.html">Error 404</a></li>
                                <li><a href="coming-soon.html">Coming Soon</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="blog.html">Blog</a>

                            <ul>
                                <li><a href="blog.html">Classic</a></li>
                                <li><a href="blog-listing.html">Listing</a></li>
                                <li>
                                    <a href="#">Grid</a>
                                    <ul>
                                        <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                        <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                        <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                        <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Masonry</a>
                                    <ul>
                                        <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                        <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                        <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                        <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Mask</a>
                                    <ul>
                                        <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                        <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Single Post</a>
                                    <ul>
                                        <li><a href="single.html">Default with sidebar</a></li>
                                        <li><a href="single-fullwidth.html">Fullwidth no sidebar</a></li>
                                        <li><a href="single-fullwidth-sidebar.html">Fullwidth with sidebar</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="elements-list.html">Elements</a>
                            <ul>
                                <li><a href="elements-products.html">Products</a></li>
                                <li><a href="elements-typography.html">Typography</a></li>
                                <li><a href="elements-titles.html">Titles</a></li>
                                <li><a href="elements-banners.html">Banners</a></li>
                                <li><a href="elements-product-category.html">Product Category</a></li>
                                <li><a href="elements-video-banners.html">Video Banners</a></li>
                                <li><a href="elements-buttons.html">Buttons</a></li>
                                <li><a href="elements-accordions.html">Accordions</a></li>
                                <li><a href="elements-tabs.html">Tabs</a></li>
                                <li><a href="elements-testimonials.html">Testimonials</a></li>
                                <li><a href="elements-blog-posts.html">Blog Posts</a></li>
                                <li><a href="elements-portfolio.html">Portfolio</a></li>
                                <li><a href="elements-cta.html">Call to Action</a></li>
                                <li><a href="elements-icon-boxes.html">Icon Boxes</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End .mobile-nav -->

                <div class="social-icons">
                    <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                    <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                    <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                    <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
                </div>
                <!-- End .social-icons -->
            </div>
            <!-- End .mobile-menu-wrapper -->
        </div>
        <!-- End .mobile-menu-container -->

        <!-- Sign in / Register Modal -->
        <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"><i class="icon-close"></i></span>
                        </button>

                        <div class="form-box">
                            <div class="form-tab">
                                <ul class="nav nav-pills nav-fill" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                                    </li>
                                </ul>
                                <div class="tab-content" id="tab-content-5">
                                    <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                        <form action="#">
                                            <div class="form-group">
                                                <label for="singin-email">Username or email address *</label>
                                                <input type="text" class="form-control" id="singin-email" name="singin-email" />
                                            </div>
                                            <!-- End .form-group -->

                                            <div class="form-group">
                                                <label for="singin-password">Password<span style="color: red">*</span> </label>
                                                <input type="password" class="form-control" id="singin-password" name="singin-password" />
                                            </div>
                                            <!-- End .form-group -->

                                            <div class="form-footer">
                                                <button type="submit" class="btn btn-outline-primary-2">
                                                    <span>LOG IN</span>
                                                    <i class="icon-long-arrow-right"></i>
                                                </button>

                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="signin-remember" />
                                                    <label class="custom-control-label" for="signin-remember">Remember Me</label>
                                                </div>
                                                <!-- End .custom-checkbox -->

                                                <a href="#" class="forgot-link">Forgot Your Password?</a>
                                            </div>
                                            <!-- End .form-footer -->
                                        </form>
                                        <div class="form-choice">
                                            <p class="text-center">or sign in with</p>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-login btn-g">
                                                        <i class="icon-google"></i>
                                                        Login With Google
                                                    </a>
                                                </div>
                                                <!-- End .col-6 -->
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-login btn-f">
                                                        <i class="icon-facebook-f"></i>
                                                        Login With Facebook
                                                    </a>
                                                </div>
                                                <!-- End .col-6 -->
                                            </div>
                                            <!-- End .row -->
                                        </div>
                                        <!-- End .form-choice -->
                                    </div>
                                    <!-- .End .tab-pane -->
                                    <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                        <form action="#">
                                            <div class="form-group">
                                                <label for="register-email">Your email address *</label>
                                                <input type="email" class="form-control" id="register-email" name="register-email" />
                                            </div>
                                            <!-- End .form-group -->

                                            <div class="form-group">
                                                <label for="register-password">Password *</label>
                                                <input type="password" class="form-control" id="register-password" name="register-password" />
                                            </div>
                                            <!-- End .form-group -->

                                            <div class="form-footer">
                                                <button type="submit" class="btn btn-outline-primary-2">
                                                    <span>SIGN UP</span>
                                                    <i class="icon-long-arrow-right"></i>
                                                </button>

                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="register-policy" />
                                                    <label class="custom-control-label" for="register-policy">I agree to the <a href="#">privacy policy</a> *</label>
                                                </div>
                                                <!-- End .custom-checkbox -->
                                            </div>
                                            <!-- End .form-footer -->
                                        </form>
                                        <div class="form-choice">
                                            <p class="text-center">or sign in with</p>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-login btn-g">
                                                        <i class="icon-google"></i>
                                                        Login With Google
                                                    </a>
                                                </div>
                                                <!-- End .col-6 -->
                                                <div class="col-sm-6">
                                                    <a href="#" class="btn btn-login  btn-f">
                                                        <i class="icon-facebook-f"></i>
                                                        Login With Facebook
                                                    </a>
                                                </div>
                                                <!-- End .col-6 -->
                                            </div>
                                            <!-- End .row -->
                                        </div>
                                        <!-- End .form-choice -->
                                    </div>
                                    <!-- .End .tab-pane -->
                                </div>
                                <!-- End .tab-content -->
                            </div>
                            <!-- End .form-tab -->
                        </div>
                        <!-- End .form-box -->
                    </div>
                    <!-- End .modal-body -->
                </div>
                <!-- End .modal-content -->
            </div>
            <!-- End .modal-dialog -->
        </div>
        <!-- End .modal -->


        <div class="modal fade show" id="myModal1" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content" style="margin-top: 270px; background-color: ghostwhite;">
                    <div class="modal-header">

                        <h4 class="modal-title" id="myModalLabel1" style="text-align: center;">Removed to Cart</h4>
                        &nbsp;&nbsp;
                      <button type="button" class="close" data-dismiss="modal">&times;</button>

                    </div>
                    <br />
                    <div class="modal-body">
                        Item has been Removed to the Cart successfully.
                    </div>
                    <br />
                    <div class="modal-footer">
                        <button type="button" class="btn btn-sm btn-shadow btn-primary" style="width:15px" data-dismiss="modal">Ok</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function showModal() {
                $('#myModal1').modal('show');
            }
        </script>

        <!-- Plugins JS File -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/jquery.hoverIntent.min.js"></script>
        <script src="assets/js/jquery.waypoints.min.js"></script>
        <script src="assets/js/superfish.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/bootstrap-input-spinner.js"></script>
        <!-- Main JS File -->
        <script src="assets/js/main.js"></script>
    </form>


    <%--  <div class="col-lg-9">
                           

                                <asp:GridView ID="cart_grid" runat="server" AutoGenerateColumns="false" Width="95%" >
                                    <HeaderStyle CssClass="Gridview-header" />

                                    <Columns>
                                        

                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>

                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UploadImage") %>' Height="100" Width="100" />

                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="product">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>

                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Price">

                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField >

                                            <ItemTemplate>
                                                <asp:Button ID="btn_remove" runat="server" Text="Remove" OnClick ="btn_remove_Click" />

                                            </ItemTemplate>

                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                                </div>--%>
</body>

</html>
