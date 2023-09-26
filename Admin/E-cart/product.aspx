<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Admin.E_cart.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   
    <meta name="keywords" content="HTML5 Template"/>
    <meta name="description" content="GVR - eCommerce"/>
    <meta name="author" content="p-themes"/>
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png"/>
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png"/>
    <link rel="manifest" href="assets/images/icons/site.html"/>
    <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color ="#666666"/>
    <link rel="shortcut icon" href="assets/images/logo.png"/>
    <meta name="apple-mobile-web-app-title" content="Molla"/>
    <meta name="application-name" content="Molla"/>
    <meta name="msapplication-TileColor" content="#cc9966"/>
    <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml"/>
    <meta name="theme-color" content="#ffffff"/>
    <link rel="stylesheet" href="assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css"/>
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css"/>
    <link rel="stylesheet" href="assets/css/plugins/jquery.countdown.css"/>
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/skins/skin-demo-2.css"/>
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
    <title>GVR - eCommerce product</title>

    <style>
   input-spinner{
            background-repeat :no-repeat;
        }
      
            input,
textarea {
  border: 1px solid #eeeeee;
  box-sizing: border-box;
  margin: 0;
  outline: none;
  padding: 10px;
}

input[type="button"] {
  -webkit-appearance: button;
  cursor: pointer;
}

.input-group {
  clear: both;
  margin: 15px 0;
  position: relative;
}

.input-group input[type='button'] {
  background-color: #eeeeee;
  min-width: 38px;
  width: auto;
  transition: all 300ms ease;
}

.input-group .button-minus,
.input-group .button-plus {
  font-weight: bold;
  height: 38px;
  padding: 0;
  width: 38px;
  position: relative;
}

.input-group .quantity-field {
  position: relative;
  height: 38px;
  left: -6px;
  text-align: center;
  width: 62px;
  display: inline-block;
  font-size: 13px;
  margin: 0 0 5px;
  resize: vertical;
}

.button-plus {
  left: -13px;
}

input[type="number"] {
  -moz-appearance: textfield;
  -webkit-appearance: none;
}

.wrapper{
    height:50px;
    min-width:100px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    background:#fff;
    border-radius:12px;
    box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}

.wrapper span {
    width:35%;
    text-align:center;
    font-size:18px;
    font-weight:100;
    cursor:pointer;
}

.wrapper span.num{
     font-size:18px;
     border-right:2px solid rgba(0,0,0,0.2);
     border-left:2px solid rgba(0,0,0,0.2);
     pointer-events:none;
     
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

                       <li>  <a href="category.aspx" class="sf-with-ul">Product</a> </li>
                    

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
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container d-flex align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Products</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Default</li>
                    </ol>

                   <%-- <nav class="product-pager ml-auto" aria-label="Product">
                        <a class="product-pager-link product-pager-prev" href="#" aria-label="Previous" tabindex="-1">
                            <i class="icon-angle-left"></i>
                            <span>Prev</span>
                        </a>

                        <a class="product-pager-link product-pager-next" href="#" aria-label="Next" tabindex="-1">
                            <span>Next</span>
                            <i class="icon-angle-right"></i>
                        </a>
                    </nav>--%><!-- End .pager-nav -->
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

</main>

<!==================================product image ===========================================>
 <form runat="server">

            <div class="page-content">
                <div class="container">
                    <div class="product-details-top">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="product-gallery product-gallery-vertical">
                                    <div class="row">
                                        <figure class="product-main-image ">
                                            <div class="image-container"  >

                                                <asp:Panel  runat="server" ID="Panel_p1" >

                                                </asp:Panel>

                                            </div>
                                      </figure>

                                    </div>
                                 </div>
                                </div>
<%--<script>
// Initiate zoom effect:
imageZoom("myimage", "myresult");
</script>--%>

                                         
                           <div class="col-md-7">
                                <div class="product-details">
                                    <h1 class="product-title">
                                         <asp:Panel  runat="server" ID="Panel_productname" >
                                              
                                         </asp:Panel>

                                    </h1>
                                   
                                       <div class="wrapper">
    <asp:Button ID="btnMinus" runat="server" Text=" - " OnClientClick="return " OnClick="btnMinus_Click" />
    <asp:Label class="num" ID="qnty" runat="server" style="width:50px;font-size: x-large;
    font-weight: 600;" Text="01">
       
    </asp:Label>
    <asp:Button ID="btnPlus" runat="server" Text=" + " OnClientClick="return " OnClick="btnPlus_Click" />
</div> 
                              <%--   <div class="input-group">

  <input type="button"  value="-" data-type="minus" class="button-minus" data-field="quantity" />

  <input type="number" step="1"   max="10" value="1"  name="quantity" class="quantity-field" />

  <input type="button" value="+"  data-type="plus" class="button-plus" data-field="quantity" />

</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  function incrementValue(e) {
    e.preventDefault();
    var fieldName = $(e.target).data('field');
    var parent = $(e.target).closest('.input-group'); // Use the correct selector '.input-group'
    var currentVal = parseInt(parent.find('input[name="' + fieldName + '"]').val(), 10);

    if (!isNaN(currentVal)) {
      parent.find('input[name="' + fieldName + '"]').val(currentVal + 1);
    } else {
      parent.find('input[name="' + fieldName + '"]').val(0);
    }
  }

  function decrementValue(e) {
    e.preventDefault();

    var fieldName = $(e.target).data('field');
    var parent = $(e.target).closest('.input-group'); // Use the correct selector '.input-group'
    var currentVal = parseInt(parent.find('input[name="' + fieldName + '"]').val(), 10);

    if (!isNaN(currentVal) && currentVal > 0) {
      parent.find('input[name="' + fieldName + '"]').val(currentVal - 1);
    } else {
      parent.find('input[name="' + fieldName + '"]').val(0);
    }
  }

  $('.input-group').on('click', '.button-plus', function (e) {
    incrementValue(e);
  });

  $('.input-group').on('click', '.button-minus', function (e) {
    decrementValue(e);
  });
</script>--%>

                                                </div> 

                                  <%--  <div class="details-filter-row details-row-size">
                                        <label for="qty">Qty:</label>
                                        <div class="product-details-quantity">
                                            <input type="number" id="qty" class="form-control" value="1" min="1" max="10" step="1" data-decimals="0" />
                                        </div><!-- End .product-details-quantity -->
                                    </div>--%>
                                </div>   
                            </div> 
                        </div>
                    </div>
               </div>  
                              </form>    

                <!==================================product ends here====================================>

                   
             

        <footer class="footer">
        	<div class="footer-middle">
	            <div class="container">
	            	<div class="row">
	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget widget-about">
	            				<img src="assets/images/logo.png" class="footer-logo" alt="Footer Logo" width="105" height="25"/>
	            				<p>Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. </p>

	            				<div class="social-icons">
	            					<a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
	            					<a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
	            					<a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
	            					<a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
	            					<a href="#" class="social-icon" target="_blank" title="Pinterest"><i class="icon-pinterest"></i></a>
	            				</div><!-- End .soial-icons -->
	            			</div><!-- End .widget about-widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">Useful Links</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="about.html">About Molla</a></li>
	            					<li><a href="#">How to shop on Molla</a></li>
	            					<li><a href="#">FAQ</a></li>
	            					<li><a href="contact.html">Contact us</a></li>
	            					<li><a href="login.html">Log in</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">Customer Service</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#">Payment Methods</a></li>
	            					<li><a href="#">Money-back guarantee!</a></li>
	            					<li><a href="#">Returns</a></li>
	            					<li><a href="#">Shipping</a></li>
	            					<li><a href="#">Terms and conditions</a></li>
	            					<li><a href="#">Privacy Policy</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">My Account</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#">Sign In</a></li>
	            					<li><a href="cart.html">View Cart</a></li>
	            					<li><a href="#">My Wishlist</a></li>
	            					<li><a href="#">Track My Order</a></li>
	            					<li><a href="#">Help</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->
	            	</div><!-- End .row -->
	            </div><!-- End .container -->
	        </div><!-- End .footer-middle -->

	        <div class="footer-bottom">
	        	<div class="container">
	        		<p class="footer-copyright">Copyright © 2019 Molla Store. All Rights Reserved.</p><!-- End .footer-copyright -->
	        		<figure class="footer-payments">
	        			<img src="assets/images/payments.png" alt="Payment methods" width="272" height="20"/>
	        		</figure>
	        	</div>
	        </div>
        </footer>
    </div>



    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>


    <! ===========================  FORM SIGN IN & SINGN UP  ================== >


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
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="singin-password">Password *</label>
                                            <input type="password" class="form-control" id="singin-password" name="singin-password" />
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>LOG IN</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="signin-remember"/>
                                                <label class="custom-control-label" for="signin-remember">Remember Me</label>
                                            </div><!-- End .custom-checkbox -->

                                            <a href="#" class="forgot-link">Forgot Your Password?</a>
                                        </div><!-- End .form-footer -->
                                    </form>
                                    <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .form-choice -->
                                </div><!-- .End .tab-pane -->
                                <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                    <form action="#">
                                        <div class="form-group">
                                            <label for="register-email">Your email address *</label>
                                            <input type="email" class="form-control" id="register-email" name="register-email" />
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="register-password">Password *</label>
                                            <input type="password" class="form-control" id="register-password" name="register-password" />
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>SIGN UP</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="register-policy" />
                                                <label class="custom-control-label" for="register-policy">I agree to the <a href="#">privacy policy</a> *</label>
                                            </div><!-- End .custom-checkbox -->
                                        </div><!-- End .form-footer -->
                                    </form>
                                    <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login  btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .form-choice -->
                                </div><!-- .End .tab-pane -->
                            </div><!-- End .tab-content -->
                        </div><!-- End .form-tab -->
                    </div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->

    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.elevateZoom.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>

</html>
