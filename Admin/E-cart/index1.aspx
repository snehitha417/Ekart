<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="index1.aspx.cs" Inherits="Admin.E_cart.index1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>GVR-E-CART</title>
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="GVR - eCommerce" />
    <meta name="author" content="p-themes" />
    <!-- Favicon -->
    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />

    <%--<link rel="apple-touch-icon" sizes="180x180" href="assets/images/demos/demo-2/logo.png"/>
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


    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.plugin.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/demos/demo-2.js"></script>

    <script>
        $("#intro-slider-container").slick({
            arrows: false,
            infinite: true,
            slidesToShow: 10,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 1500,
            mobileFirst: true
        });

   </script>

    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;

            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }

            return true;
        }
    </script>

    <style>
        .card-container {
            margin-left: 20px;
            height: 445px;
            margin-top: 24px;
            border: 1px groove;
            border-radius: 4px;
            padding: 10px;
            width: 315px;
            /*box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);*/
        }


            .card-container:hover {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: box-shadow 0.5s ease;
            }


            .card-container ~ card-container {
                margin-left: 410px;
                margin-top: -512px;
            }

        .card1 {
            width: 87rem;
        }

            .card1 ~ card2 {
                margin-left: 410px;
                margin-top: -512px;
            }

        .card-image {
        }

        img {
            vertical-align: middle;
            border-style: none;
            width: 100%;
            height: 100%;
            transition: transform 0.3s ease;
        }


        .card-horizontal .card-image {
            margin-bottom: 10px;
        }

        .card-horizontal .card-content {
            margin: 0;
        }

        <!== HOVER the IMGAE CSS=== > .content {
            width: 600px;
            height: 400px;
            overflow: hidden;
            cursor: pointer;
        }

        .content img {
            max-width: 100%;
            transform-origin: 50% 65%;
            transition: transform 5s, filter 3s ease-in-out;
            filter: brightness(150%);
        }
        /* The Transformation */

        .content:hover img {
            filter: brightness(100%);
            transform: scale(3);
        }

        /*HOVER the IMGAE CSS*/

        .body {
            background-color: snow;
        }

        .icon-user {
            color: #FF9800;
        }

        /*.icon-user:hover {
                color: darkblue;
            }*/


        .icon-heart {
            color: #FF9800;
        }

        /*.icon-heart:hover {
                color: darkblue;
            }*/

        .icon-shopping-cart {
            color: #FF9800;
        }

        /*.icon-shopping-cart:hover {
                color: darkblue;
            }*/


        .carticon {
            position: relative;
        }

        .badge1 {
            position: absolute;
            margin-top: 10px;
            background-color: #082c61;
            color: white;
            margin-left: -11px;
            width: 21px;
            height: 20px;
            border-radius: 84%;
            border: none;
            text-align: center;
            font-size: 11px;
        }

        .carticon {
            position: relative;
        }

        .crt {
            position: absolute;
            margin-top: -19px;
        }



        .thumbnail {
            position: relative;
        }

        .name {
            position: absolute;
            background: rgba(1,1,1,0.8);
            color: #fff;
            width: 100%;
            height: 100%;
            opacity: 0;
            transition: all 0.3s ease;
            line-height: 300px;
            text-align: center;
            font-size: 30px;
            z-index: 2;
        }

        .thumbnail:hover > imagepr {
            transform: scale(1.3);
        }

        .thumbnail:hover > div {
            opacity: 1;
        }

        /*-------modal pop box ----styles------*/
        .modal {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: #cccccc;
            opacity: 0;
            visibility: hidden;
            transform: scale(1.1);
            transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;
        }

        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #eeeeee;
            padding: 1rem 1.5rem;
            width: 24rem;
            border-radius: 0.5rem;
        }

        .close-button {
            float: right;
            width: 1rem;
            line-height: 1.5rem;
            text-align: center;
            cursor: pointer;
            border-radius: 30px;
            background-color: #eeeeee;
        }

            .close-button:hover {
                background-color: #adadad;
            }

        .show-modal {
            opacity: 1;
            visibility: visible;
            transform: scale(1.0);
            transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
        }
    </style>

    <script>
        let modal = document.querySelector(".modal");
        let trigger = document.querySelector(".example");
        let closeButton = document.querySelector(".close-button");
        function toggleModal() {
            modal.classList.toggle("show-modal");
        }
        function windowOnClick(event) {
            if (event.target === modal) {
                toggleModal();
            }
        }
        trigger.addEventListener("click", toggleModal);
        closeButton.addEventListener("click", toggleModal);
        window.addEventListener("click", windowOnClick);
    </script>
</head>
<body>

    <form runat="server">

        <div class="container-fluid bd">


            <header class="header header-2 header-intro-clearance">
                <div class="header-top">
                    <div class="container">
                        <div class="header-left">
                            <%--   <p>Special collection already available.</p>--%>
                        </div>

                        <div class="header-right">
                            <ul class="top-menu">

                                <%--   <li>
                                    <a href="DemoPage.aspx">&nbsp;Read more ...</a>
                                    <ul class="float-right">--%>

                                <%--<li><a href="RegistrationForm.aspx">Signup/SignIn</a></li>--%>
                                <%-- <asp:LinkButton ID="signup" runat="server" Text="SignUp/SignIn" OnClick="signlogin" Visible="true"> </asp:LinkButton>
                                        <asp:Button ID="login_btn"    runat="server" class="nav-item  text-white btn btn-success ml-lg-5 p-2" Text="Login"  OnClick="homepage_login_btn"  style="width: 125px; border-radius:0.4rem;" NavigateUrl="userlogin.aspx"/>
                                        <asp:Button ID ="logout_btn"   runat="server" class="nav-item  text-white btn btn-info  ml-lg-5 p-2" Text="Logout" Visible="false" OnClientClick="return confirm ('Are you sure you want to logout')" OnClick="logout_btn_Click"  style="width: 125px; border-radius:0.4rem;"/>
                               <li><a href="#signin-modal" data-toggle="modal">Sign in / Sign up</a></li>
                                    </ul>
                              </li>--%>
                            </ul>
                        </div>
                    </div>
                </div>


                <!---------------- 1st header ends -------------------->

                <!-------------2nd  header  -logo-header------------------------>

                <div class="container header-middle">
                    <div class="navbar navbar-expand-lg">
                        <a href="index1.aspx" class="navbar-brand">
                            <img src="assets/images/demos/demo-2/logo.png" alt="Molla Logo" style="width: 110px;" />
                        </a>

                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#snehitha">
                            <span class="navbar-toggler-icon"><i class="fa-solid fa-bars text-dark"></i></span>
                        </button>

                        <div class="navbar " style="margin-left: 100px;">
                            <div class="header-search header-search-extended header-search-visible header-search-no-radius d-none d-lg-block">
                                <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>

                                <form>
                                    <div class="header-search-wrapper search-wrapper-wide">
                                        <label for="q" class="sr-only">Search</label>
                                        <input type="search" class="form-control" name="q" id="q" placeholder="Search product ..." style="width: 50rem;" />
                                        <button class="btn btn" type="submit"><i class="icon-search"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <div class="collapse navbar-collapse  " style="margin-left: 150px;">
                            <ul class="navbar-nav">

                                <div class="header-right" style="display: flex;">

                                    <%--<asp:Button ID="login_btn" runat="server" class="nav-item  text-white" Text="Login" Style="width: 80px; border-radius: 0.4rem; border: none; background-color: #2b4973; height: 40px;"  OnClick="homepage_login_btn" />--%>

                                    <asp:HyperLink ID="btn_login" runat="server" Class="btnlogin" Text="Login" NavigateUrl="UserLogin.aspx" Style="width: 110px; text-align: center; border-radius: 0.4rem; color: white; border: none; background-color: #2b4973; height: 36px; padding: 5px; margin-top: 13px;"></asp:HyperLink>

                                    &nbsp &nbsp &nbsp 
                                    
                                      
                  
                   <asp:HyperLink ID="btn_logout" runat="server" NavigateUrl="UserLogin.aspx"
                       Style="width: 110px; text-align: center; border-radius: 0.4rem; color: white; border: none; background-color: red; height: 36px; padding: 5px; margin-top: 13px;">Logout</asp:HyperLink>

                                    <div class="account">
                                        <a href="dashboard.aspx" title="My account">
                                            <div class="icon">
                                                <i class="icon-user"></i>
                                            </div>
                                            <p>
                                                <b class="text-info">
                                                    <asp:PlaceHolder ID="userId_label" runat="server">
                                                        <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder>
                                                </b>
                                            </p>
                                        </a>
                                    </div>


                                    <div class="wishlist">
                                        <a href="wishlist.aspx" title="Wishlist">
                                            <div class="icon">
                                                <i class="icon-heart"></i>
                                                <span class="wishlist-count badge" runat="server" id="wishlst_badge" visible="false" style="margin-top: -4px; margin-right: -5px; height: 20px; width: 20px; background-color: #082c61;">
                                                    <asp:Label ID="wishlst" runat="server"></asp:Label>
                                                </span>
                                            </div>
                                            <p>Wishlist</p>
                                        </a>
                                    </div>

                                    <div class="carticon">

                                        <a href="cart.aspx">
                                            <i class="icon-shopping-cart fa-1x" style="color: #FF9800; font-size: 35px; margin-left: 30px;"></i></a>

                                        <p class="crt" style="margin-left: 37px;">Cart </p>
                                        <span class="badge1" runat="server" id="cart_badge" visible="true">
                                            <asp:Label ID="cartprod" runat="server"></asp:Label></span>
                                    </div>
                                </div>

                            </ul>
                        </div>
                    </div>
                </div>

                <!-------------2nd  header  -logo-header----- ends here------------------------>

                <div class="container">
                    <div class="header-bottom sticky-header">

                        <div class="navbar navbar-expand-lg">
                            <div class="header-left">
                                <div class="dropdown category-dropdown">
                                    <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static" title="Browse Categories">Browse Categories</a>
                                    <div class="dropdown-menu">
                                        <nav class="side-nav">
                                            <ul class="menu-vertical sf-arrows" style="width: 27.5rem;">
                                                <li class="item-lead"><a href="Browse-Fans.aspx">Fans</a></li>
                                                <li class="item-lead"><a href="Browse-Switches.aspx">Switches</a></li>
                                                <li class="item-lead"><a href="Browse-Sockets.aspx">Sockets</a></li>
                                                <li class="item-lead"><a href="Browse-LED-Lighting.aspx">LED & Lighting</a></li>
                                                <li class="item-lead"><a href="Browse-MeterBoard.aspx">Meter Board</a></li>
                                                <li class="item-lead"><a href="Browse-Cables-Wires.aspx">Cables & Wires</a></li>
                                                <li class="item-lead"><a href="Browse-Modular-MetalBox.aspx">Modular Metal Box</a></li>
                                                <li class="item-lead"><a href="Browse-Electrical-Pipes.aspx">Electrical Pipes</a></li>
                                                <li class="item-lead"><a href="Browse-MCB-Distribution-box.aspx">MCB Distribution Box</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>


                            <div class="header-center">
                                <nav class="main-nav">
                                    <ul class="menu sf-arrows">
                                        <li class="megamenu-container active"><a href="about-2.aspx" class="sf-with-ul">Home</a></li>
                                        <li><a href="category.aspx">Products</a></li>

                                        <li><a href="#" class="sf-with-ul">Pages</a>
                                            <ul>
                                                <li><a href="about-2.aspx" class="sf-with-ul">About</a></li>
                                                <li><a href="contact.aspx" class="sf-with-ul">Contact</a></li>
                                                <li><a href="LoginForm.aspx">Login</a></li>
                                                <li><a href="blog.aspx">Blog</a></li>
                                                <li><a href="coming-soon.html">Coming Soon</a></li>
                                            </ul>

                                        </li>
                                        <li><a href="contact.aspx" class="sf-with-ul">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>


                            <%--<div class="header-right">
                                <i class="la la-lightbulb-o"></i>
                                <p>Clearance<span class="highlight">&nbsp;Up to 30% Off</span></p>
                            </div>--%>
                        </div>
                    </div>
                </div>

            </header>

            <!====================================================================>
  
       
    <!========================  CAROUSEL STARTS HERE ======================== >

        <main class="main">
          <div class="intro-slider-container">
              <div class="owl-carousel owl-simple owl-light owl-nav-inside carousel-item active" data-toggle="owl" data-owl-options='{"nav": true}' data-bs-interval="100">

                  <asp:Repeater runat="server" ID="Repeater_carsousel">
                      <ItemTemplate>
                          <div class="intro-slide" style="background-color: snow;">
                              <div class=" intro-content">
                                  <img src='<%# Eval("Imageurl") %>' alt="slide">
                              </div>

                          </div>
                      </ItemTemplate>
                  </asp:Repeater>

              </div>
          </div>

      <!=========================ASP REPEATER CODE =========================>   
  

      <!======================== BRANDS STARTS HERE ======================== >
           
     <br />

         <div class="container-fluid">
             <marquee direction="left" roll="listbox" scrollamount="20" behavior="scroll">

                  <div class="brands-border owl-carousel owl-simple" data-toggle="owl"
                       data-owl-options='{
                                    "nav": false, 
                                    "dots": false,
                                    "margin": 0,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "420": {
                                            "items":3
                                        },
                                        "600": {
                                            "items":4
                                        },
                                        "900": {
                                            "items":5
                                        },
                                        "1024": {
                                            "items":6
                                        },
                                        "1360": {
                                            "items":7
                                        }
                                    }
                                }'>


                       <a href="#" class="content">
                           <img src="assets/images/brands/havells_1.jpg" alt="img Brand Name" />
                       </a>&nbsp 
                     
                          <a href="#" class="ba">
                              <img src="assets/images/brands/crompton_1.jpg" alt="img Brand Name" />
                          </a>&nbsp 
                        
                   
                          <a href="#" class="ba">
                              <img src="assets/images/brands/L_T_switchgear_1_1.jpg" alt=" imgBrand Name" />
                          </a>&nbsp
                       
                          <a href="#" class="ba">
                              <img src="assets/images/brands/Syska_LED.jpg" alt="Brand Name" />
                          </a>&nbsp
                   
                          <a href="#" class="&nbsp">
                              <img src="assets/images/brands/anchor.jpg" alt="Brand Name" />
                          </a>&nbsp
                   
                          <a href="#" class="ba">
                              <img src="assets/images/brands/siemens.jpeg" alt="Brand Name" />
                          </a>&nbsp
                      
                          <a href="#" class="ba">
                              <img src="assets/images/brands/v-guard.jpg" alt="Brand Name" />
                          </a>&nbsp

                         <a href="#" class="ba">
                             <img src="assets/images/brands/v-guard.jpg" alt="Brand Name" />
                         </a>&nbsp
                  
                         <a href="#" class="ba">
                             <img src="assets/images/brands/v-guard.jpg" alt="Brand Name" />
                         </a>
                   </div>  

        </marquee>
         </div>

   <div class="mb-3 mb-lg-5"></div>      

    <!======================== BRANDS ENDS HERE ======================== >

      

         <div class="container-fluid">
             <div class="row">
                 <div class="col-lg-10 offset-lg-1">
                     <div class="about-text text-center mt-3">
                         <h2 class="title text-center mb-2">Who We Are</h2>

                         <h4 class="text-info">WE ARE THE LEADERS IN ELECTRICAL PRODUCTS</h4>
                     </div>
                 </div>
             </div>


             <div class="container">
                 <div class="row">
                     <div class="col-lg-3 ">
                         <a href="Browse-Switches.aspx">
                             <div class="thumbnail">
                                 <div class="name">Switches</div>
                                 <img src="../banner/pr1.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>



                     <div class="col-lg-3">
                         <a href="Browse-Fans.aspx">
                             <div class="thumbnail">
                                 <div class="name">Fans</div>
                                 <img src="../banner/pr5.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>

                     <div class="col-lg-3">
                         <a href="Browse-LED-Lighting.aspx">
                             <div class="thumbnail">
                                 <div class="name">Led -Lightings</div>

                                 <img src="../banner/pr4.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>

                     <div class="col-lg-3">
                         <a href="Browse-Cables-Wires.aspx">
                             <div class="thumbnail">
                                 <div class="name">Cables Wires</div>

                                 <img src="../banner/pr3.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>
                 </div>
                 <br />

                 <div class="row">
                     <div class="col-lg-3">
                         <a href="Browse-Sockets.aspx">
                             <div class="thumbnail">
                                 <div class="name">sockets</div>
                                 <img src="../banner/pr2.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>


                     <div class="col-lg-3">
                         <a href="Browse-Sockets.aspx">
                             <div class="thumbnail">
                                 <div class="name">Solar panels</div>
                                 <img src="../banner/pr6.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>

                     <div class="col-lg-3">

                         <a href="Browse-Sockets.aspx">
                             <div class="thumbnail">
                                 <div class="name">Lights</div>
                                 <img src="../banner/pr7.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>

                     <div class="col-lg-3">
                         <a href="Browse-Sockets.aspx">
                             <div class="thumbnail">
                                 <div class="name">Extension Boards</div>
                                 <img src="../banner/pr9.png" class="imagepr" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);" />

                             </div>
                         </a>
                     </div>
                 </div>
             </div>

         </div>


             <!==================== FEATURED  PRODUCTS   ENDS HERE  =======================>
     
       

                    <div class="container-fluid" style="background: radial-gradient(circle at 18.7% 37.8%, rgb(250, 250, 250) 0%, rgb(225, 234, 238) 90%);">

                        <div class="heading heading-center p-3 mt-3 ">
                            <h2 class="title text-info mt-5">Top Selling Products</h2>
                            <div class="container-fluid">
                                <div class="tab-content tab-content-carousel mt-5">
                                    <div class="tab-pane p-0 fade show active" id="products-featured-tab" role="tabpanel" aria-labelledby="products-featured-link">
                                        <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl"
                                            data-owl-options='{
                                "nav": false, 
                                "dots": true,
                                "margin": 20,
                                "loop": false,
                                "responsive": {
                                    "0": {
                                        "items":2
                                    },
                                    "480": {
                                        "items":2
                                    },
                                    "768": {
                                        "items":3
                                    },
                                    "992": {
                                        "items":4
                                    },
                                    "1200": {
                                        "items":5
                                    },
                                    "1600": {
                                        "items":6,
                                        "nav": true
                                    }
                                }
                            }'>

                                            <!-----------------IMG 1------------------->

                                            <%--    abhishek start--%>

                                            <asp:Repeater runat="server" ID="rp_SellingProducts">
                                                <ItemTemplate>
                                                    <div class="product product-11 text-center">
                                                        <figure class="product-media  bg-white">

                                                            <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image">


                                                            <div class="product-action-vertical">
                                                                <asp:LinkButton ID="WishList" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>
                                                            </div>

                                                        </figure>

                                                        <div class="product-body">
                                                            <h3 class="product-title">
                                                                <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_link_Click"> <%# Eval("ProductName") %></asp:LinkButton>
                                                                <br />
                                                                <br />

                                                                <div class="product-price"><b>Price:</b>  <%# Eval("ProductPrice") %>  </div>
                                                        </div>
                                                        <div class="product-action">

                                                            <asp:Button ID="cart_btn" class="example btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="cart_btn_Click" navigateurl="#addcartpop" data-toggle="modal" />

                                                        </div>

                                                        <div class="modal" id="addcartpop">
                                                            <div class="modal-content">
                                                                <span class="close-button">&times;</span>
                                                                <h2>item add to cart </h2>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                            <%-- <button class="example">Click here to see the modal!</button>--%>
                                            <%--  abhishek end--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </main>


            <!========================  BANNERS IMAGE GALLERY 2 ENDS HERE  ======================== >

        

                       <div class="bg-light deal-container pt-5 pb-3 mb-5">
                           <div class="container">
                               <div class="row">

                                   <div class="col-lg-9">
                                       <div class="deal">
                                           <div class="deal-content">
                                               <h4>Limited Products</h4>
                                               <h2>Deal of the Day</h2>

                                               <h3 class="product-title"><a href="#">USHA</a></h3>

                                               <div class="product-price">
                                                   <span class="new-price">Rs:2,849.00</span>
                                                   <span class="old-price">vs Rs:3,240.00</span>
                                               </div>

                                               <div class="deal-countdown" data-until="+10h"></div>

                                               <a href="Browse-Fans.aspx" class="btn btn-primary">
                                                   <span>Shop Now</span><i class="icon-long-arrow-right"></i>
                                               </a>
                                           </div>

                                           <div class="deal-image">
                                               <a href="#">
                                                   <img src="../banner/deals1.jpg" alt="image" />
                                               </a>
                                           </div>

                                       </div>

                                   </div>

                                   <div class="col-lg-3">
                                       <div class="banner">

                                           <img src="../banner/deals.jpg" alt="Banner" style="margin-top: 17px" />


                                           <%--  <div class="banner-content banner-content-top banner-content-center">
                                               <h4 class="banner-subtitle">The Best Choice</h4>

                                               <h3 class="banner-title">AGEN</h3>

                                               <div class="banner-text text-primary">$49.99</div>

                                               <a href="#" class="btn btn-outline-gray banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                                           </div>--%>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>

            <!======================== PRODUCTS TO SALE ENDS HERE ======================== >

       
     
           <!===================== PANNEL OF PRODUCTS   STRATS HERE  =======================>


               <div class="container">

                   <div class="heading heading-center">
                       <h1 class="title text-info"><b>Selling Products</b> </h1>

                       <asp:Panel runat="server" ID="Panel_view"></asp:Panel>
                   </div>
               </div>



   <!===================== PANNEL OF PRODUCTS   ENDS HERE  =======================>

   <!======================== IMAGE GALLERY 1  banners images STARTS HERE ======================== >

                               <div class="container">
                                   <div class="card">
                                       <div class="row">
                                           <div class="col-lg-3">


                                               <asp:Panel runat="server" ID="Panel_Offers"></asp:Panel>
                                           </div>
                                       </div>
                                   </div>

                               </div>

            <br />

            <!========================BANNERS IMAGE GALLERY   ENDS HERE ======================== >
            
            <div class="blog-posts">
                <div class="container">

                    <div class="owl-carousel owl-simple carousel-with-shadow" data-toggle="owl"
                        data-owl-options='{
                            "nav": false, 
                            "dots": true,
                            "items": 3,
                            "margin": 20,
                            "loop": false,
                            "responsive": {
                                "0": {
                                    "items":1
                                },
                                "600": {
                                    "items":2
                                },
                                "992": {
                                    "items":3
                                }
                            }
                        }'>
                        <asp:Repeater runat="server" ID="rp_offers">
                            <ItemTemplate>
                                <article class="entry entry-display">
                                    <figure class="entry-media">
                                        <img src='<%# Eval("Imageurl") %>' alt="Product image" class="product-image">
                                    </figure>
                                </article>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>

            <br />

            <br />


            <!======================== BLOG  STARTS HERE  ======================== >

           

    <div class="container">
        <hr class="mt-1 mb-6" />
    </div>

            <div class="blog-posts">
                <div class="container">
                    <h2 class="title text-center">From Our Blog</h2>
                    <!-- End .title-lg text-center -->

                    <div class="owl-carousel owl-simple carousel-with-shadow" data-toggle="owl"
                        data-owl-options='{
                            "nav": false, 
                            "dots": true,
                            "items": 3,
                            "margin": 20,
                            "loop": false,
                            "responsive": {
                                "0": {
                                    "items":1
                                },
                                "600": {
                                    "items":2
                                },
                                "992": {
                                    "items":3
                                }
                            }
                        }'>
                        <article class="entry entry-display">
                            <figure class="entry-media">
                                <a href="blog.aspx">
                                    <img src="assets/images/demos/demo-2/blog/blog-1.png" alt="image desc" />
                                    <%--  <img src="assets/images/demos/demo-2/blog/post-1.jpg" alt="image desc"/>--%>
                                </a>
                            </figure>
                            <!-- End .entry-media -->

                            <div class="entry-body text-center">
                                <div class="entry-meta">
                                    <a href="blog.aspx">Nov 22, 2018</a>, 0 Comments
                               
                                </div>


                                <h3 class="entry-title">
                                    <a href="blog.aspx">All You Need to Know About Pendant Lighting in Bathroomss</a>
                                </h3>
                            </div>

                        </article>


                        <article class="entry entry-display">
                            <figure class="entry-media">
                                <a href="blog.aspx">
                                    <img src="assets/images/demos/demo-2/blog/blog-3.jpg" alt="image desc" />


                                </a>
                            </figure>


                            <div class="entry-body text-center">
                                <div class="entry-meta">
                                    <a href="blog.aspx">Dec 12, 2018</a>, 0 Comments
                               
                                </div>
                                <!-- End .entry-meta -->

                                <h3 class="entry-title">
                                    <a href="blog.aspx">Understanding the Mechanism of Air Cooler</a>
                                </h3>
                                <!-- End .entry-title -->

                                <%-- <div class="entry-content">
                                    <a href="single.html" class="read-more">Continue Reading</a>
                                </div>--%><!-- End .entry-content -->
                            </div>
                            <!-- End .entry-body -->
                        </article>
                        <!-- End .entry -->

                        <article class="entry entry-display">
                            <figure class="entry-media">
                                <a href="blog.aspx">
                                    <img src="assets/images/demos/demo-2/blog/blog-2.png" alt="image desc" />



                                </a>
                            </figure>
                            <!-- End .entry-media -->

                            <div class="entry-body text-center">
                                <div class="entry-meta">
                                    <a href="blog.aspx">Dec 19, 2018</a>, 2 Comments
                               
                                </div>
                                <!-- End .entry-meta -->

                                <h3 class="entry-title">
                                    <a href="blog.aspx">Why is Lighting Important in Interior Designing?</a>
                                </h3>
                                <!-- End .entry-title -->

                                <%-- <div class="entry-content">
                                    <a href="single.html" class="read-more">Continue Reading</a>
                                </div>  ---%>
                                <!-- End .entry-content -->
                            </div>
                            <!-- End .entry-body -->
                        </article>
                        <!-- End .entry -->
                    </div>
                    <!-- End .owl-carousel -->

                    <div class="more-container text-center mt-2">
                        <a href="blog.aspx" class="btn btn-outline-darker btn-more"><span>View more articles</span><i class="icon-long-arrow-right"></i></a>
                    </div>
                    <!-- End .more-container -->
                </div>
                <!-- End .container -->
            </div>

            <!======================== BLOG  ENDS  HERE  ======================== >

      <!======================== footer 1 STARTS  HERE  ======================== >

       

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
                          
                                <p>orders $50 or more</p>
                            </div>
                      
                        </div>
                     
                    </div>
                  

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-rotate-left"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Free Returns</h3>
                             
                                <p>within 30 days</p>
                            </div>
                        </div>
                    </div>
                  

                    <div class="col-sm-6 col-lg-3">
                        <div class="icon-box icon-box-side">
                            <span class="icon-box-icon text-dark">
                                <i class="icon-info-circle"></i>
                            </span>

                            <div class="icon-box-content">
                                <h3 class="icon-box-title">Get 20% Off 1 Item</h3>
                            
                                <p>When you sign up</p>
                            </div>
                         
                        </div>
                     
                    </div>
                 

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
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!======================== footer 1 ENDS   HERE  ======================== >

       <!======================== footer 2 STARTS   HERE  ======================== >
        
       
        <div class="footer-newsletter bg-image" style="background-image: url(assets/images/backgrounds/bg-2.jpg)">
            <div class="container">
                <div class="heading text-center">
                    <h3 class="title">Get The Latest Deals</h3>
                
                    <p class="title-desc">and receive <span>$20 coupon</span> for first shopping</p>
                  
                </div>
           



                <div class="row">
                    <div class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">

                        <div class="input-group">
                            <input type="email" id="txt_email" runat="server" class="form-control" placeholder="Enter your Email Address" />
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit" id="btn_sub" runat="server" onserverclick="btn_subscribe_ServerClick"><span>Subscribe</span><i class="icon-long-arrow-right"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-4 col-lg-2">
                        <div class="widget">
                            <h4 class="widget-title">Information</h4>

                            <ul class="widget-list">
                                <li><a href="about-2.aspx">About</a></li>
                                <li><a href="category.aspx">shop </a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="contact.aspx">Contact us</a></li>
                                <li><a href="LoginForm.aspx">Log in</a></li>
                            </ul>
                          
                        </div>
                       
                    </div>
                

                    <div class="col-sm-4 col-lg-2">
                        <div class="widget">
                            <h4 class="widget-title">Customer Service</h4>
                          

                            <ul class="widget-list">
                                <li><a href="#">Payment Methods</a></li>
                                <li><a href="#">Money-back guarantee!</a></li>
                                <li><a href="#">Returns</a></li>
                                <li><a href="#">Shipping</a></li>
                                <li><a href="#">Terms and conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                         
                        </div>
                     
                    </div>
                  

                    <div class="col-sm-4 col-lg-2">
                        <div class="widget">
                            <h4 class="widget-title">My Account</h4>
                        

                            <ul class="widget-list">
                                <li><a href="UserLogin.aspx">Sign In</a></li>
                                <li><a href="cart.aspx">View Cart</a></li>
                                <li><a href="wishlist.aspx">My Wishlist</a></li>
                                <li><a href="#">Track My Order</a></li>
                                <li><a href="../AdminScreens/AdminLogin.aspx">AdminLogin</a></li>
                            </ul>
                         
                        </div>
                     
                    </div>
                 
                </div>
            
            </div>
           
        </div>
   

        <!======================== SNIPPETS STARTS HERE  ======================== >

	       

        <div class="footer-bottom">
            <div class="container">
                <p class="footer-copyright">Copyright © 2019 Molla Store. All Rights Reserved.</p>
            
                <ul class="footer-menu">
                    <li><a href="#">Terms Of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
          
                <div class="social-icons social-icons-color">
                    <span class="social-label">Social Media</span>
                    <a href="#" class="social-icon social-facebook" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                    <a href="#" class="social-icon social-twitter" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                    <a href="#" class="social-icon social-instagram" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                    <a href="#" class="social-icon social-youtube" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
                    <a href="#" class="social-icon social-pinterest" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                </div>
            
            </div>
        
        </div>
    </footer>
         

            <!======================== SNIPPETS ENDS HERE  ======================== >  

             
 


            <!======================== BACK ARROW   STARTS HERE  ======================== >  
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

            <!======================== BACK ARROW   ENDS  HERE  ======================== > 
     
   
        </div>
    </form>







</body>



</html>
