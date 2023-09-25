<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="Admin.E_cart.blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
   <title>GVR-E-CART</title>
      <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon"/>

    <meta name="keywords" content="HTML5 Template"/>
    <meta name="description" content="GVR - eCommerce"/>
    <meta name="author" content="p-themes"/>
    <!-- Favicon -->
   <%-- <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
    <link rel="manifest" href="assets/images/icons/site.html">
    <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="assets/images/logo.png">--%>

    <meta name="apple-mobile-web-app-title" content="Molla"/>
    <meta name="application-name" content="Molla"/>
    <meta name="msapplication-TileColor" content="#cc9966"/>
    <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml"/>
    <meta name="theme-color" content="#ffffff"/>
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css"/>
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css"/>
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
   

            <!======================= NAV BAR  STARTS HERE -===================>
    <main class="main">
        	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container">
        			<h1 class="page-title">Blog Masonry 4 Columns<span>Blog</span></h1>
        		</div><!-- End .container -->
        	</div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Blog</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Masonry 4 Columns</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container">
                    <nav class="blog-nav">
                        <ul class="menu-cat entry-filter justify-content-center">
                            <li class="active"><a href="#" data-filter="*">All Blog Posts<span>12</span></a></li>
                            <li><a href="#" data-filter=".lifestyle">Lifestyle<span>3</span></a></li>
                            <li><a href="#" data-filter=".shopping">Shopping<span>1</span></a></li>
                            <li><a href="#" data-filter=".fashion">Fashion<span>3</span></a></li>
                            <li><a href="#" data-filter=".travel">Travel<span>6</span></a></li>
                            <li><a href="#" data-filter=".hobbies">Hobbies<span>2</span></a></li>
                        </ul><!-- End .blog-menu -->
                    </nav><!-- End .blog-nav -->

                    <div class="entry-container max-col-4">
                        <div class="entry-item lifestyle shopping col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-1.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 22, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">2 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Cras ornare tristique elit.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Lifestyle</a>,
                                        <a href="#">Shopping</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item lifestyle col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-2.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 21, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">0 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Aenean dignissim pellente squefelis.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Lifestyle</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item fashion lifestyle col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <div class="owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl">
                                        <a href="single.html">
                                            <img src="assets/images/blog/masonry/4cols/post-3.jpg" alt="image desc">
                                        </a>
                                        <a href="single.html">
                                            <img src="assets/images/blog/masonry/4cols/post-3-2.jpg" alt="image desc">
                                        </a>
                                    </div><!-- End .owl-carousel -->
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 18, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">3 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Utaliquam sollicitudin leo.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Fashion</a>,
                                        <a href="#">Lifestyle</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-4.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 15, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">4 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Quisque volutpat mattiseros.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Travel</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item travel hobbies col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media entry-video">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-5.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 11, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">2 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Vivamus vestibulum ntulla necante.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Travel</a>,
                                        <a href="#">Hobbies</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item hobbies col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-6.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 10, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">4 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Quisque a lectus. </a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Hobbies</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-7.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 11, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">3 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Fusce pellentesque suscipit.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Travel</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item fashion col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <div class="owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl">
                                        <a href="single.html">
                                            <img src="assets/images/blog/masonry/4cols/post-8.jpg" alt="image desc">
                                        </a>
                                        <a href="single.html">
                                            <img src="assets/images/blog/masonry/4cols/post-8-2.jpg" alt="image desc">
                                        </a>
                                    </div><!-- End .owl-carousel -->
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 08, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">0 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Utaliquam sollicitudin leo.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Fashion</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-9.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 07, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">5 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Quisque volutpat mattiseros.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Travel</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-10.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 07, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">1 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Donec quis duidolor tempor interdum.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Travel</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-11.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 06, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">3 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Aliquam erat volutpat.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Travel</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item fashion col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="single.html">
                                        <img src="assets/images/blog/masonry/4cols/post-12.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <a href="#">Nov 05, 2018</a>
                                        <span class="meta-separator">|</span>
                                        <a href="#">0 Comments</a>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="single.html">Cras ornare tristique elit.</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        in <a href="#">Shopping</a>
                                    </div><!-- End .entry-cats -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->
                    </div><!-- End .entry-container -->

                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled">
                                <a class="page-link page-link-prev" href="#" aria-label="Previous" tabindex="-1" aria-disabled="true">
                                    <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>Prev
                                </a>
                            </li>
                            <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item">
                                <a class="page-link page-link-next" href="#" aria-label="Next">
                                    Next <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->

        <footer class="footer">
        	<div class="footer-middle">
	            <div class="container">
	            	<div class="row">
	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget widget-about">
	            				<img src="assets/images/logo.png" class="footer-logo" alt="Footer Logo" width="105" height="25">
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
	        			<img src="assets/images/payments.png" alt="Payment methods" width="272" height="20">
	        		</figure><!-- End .footer-payments -->
	        	</div><!-- End .container -->
	        </div><!-- End .footer-bottom -->
        </footer><!-- End .footer -->
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>

            <form action="#" method="get" class="mobile-search">
                <label for="mobile-search" class="sr-only">Search</label>
                <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." required>
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
            </nav><!-- End .mobile-nav -->

            <div class="social-icons">
                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .mobile-menu-wrapper -->
    </div><!-- End .mobile-menu-container -->

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
                                            <input type="text" class="form-control" id="singin-email" name="singin-email" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="singin-password">Password *</label>
                                            <input type="password" class="form-control" id="singin-password" name="singin-password" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>LOG IN</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="signin-remember">
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
                                            <input type="email" class="form-control" id="register-email" name="register-email" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="register-password">Password *</label>
                                            <input type="password" class="form-control" id="register-password" name="register-password" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>SIGN UP</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="register-policy" required>
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
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>


<!-- molla/blog-masonry-4cols.html  22 Nov 2019 10:04:36 GMT -->
</html>
