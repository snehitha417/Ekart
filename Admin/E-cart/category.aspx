<%@ Page Language="C#" EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Admin.E_cart.category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="GVR - eCommerce" />
    <meta name="author" content="p-themes" />
    <!-- Favicon -->
      <title>GVR-E-CART</title>
      <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon"/>

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
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="assets/css/plugins/nouislider/nouislider.css" />

    <%-- <style>
        .product product-7 text-center {
            width: 300px;
            height: 300px;
        }
    </style>--%>
    <style>
        body {
            font-family: "Lato", sans-serif;
        }

        .sidenav {
            width: 178px;
            position: fixed;
            z-index: 1;
            top: 20px;
            left: 10px;
            background: #eee;
            overflow-x: hidden;
            padding: 8px 0;
        }

            .sidenav a {
                padding: 6px 8px 6px 16px;
                text-decoration: none;
                font-size: 25px;
                color: #2196F3;
                display: block;
            }

        /*.sidenav a:hover {
                    color: #064579;
                }*/

        .main {
            margin-left: 200px; /* Same width as the sidebar + left position in px */
            /*font-size: 28px; /* Increased text to enable scrolling */ */ padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
        }
    </style>

</head>

<body>

    <div class="container">
        <div class="navbar navbar-expand-lg Position-fixed ">

            <a href="index1.aspx" class="navbar-brand">
                <img src="assets/images/demos/demo-2/logo.png" alt="Molla Logo" style="width: 110px;" />
            </a>
            <ul class="menu sf-arrows">
                <li class="megamenu-container active">
                    <a href="index1.aspx" class="sf-with-ul">Home</a></li>

                <li><a href="category.aspx" class="sf-with-ul">Product</a> </li>
                <li><a href="#" class="sf-with-ul">Pages</a>

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

    <!=======================page content starts here ========================>

 
      <form runat="server">


          <div class="toolbox-right">
         <%--     <div class="toolbox-sort">
                  <label for="sortby">Sort by:</label>
                  <div class="select-custom">
                      <select name="sortby" id="sortby" class="form-control">
                          <option value="popularity" selected="selected">Most Popular</option>
                          <option value="rating">Most Rated</option>
                          <option value="date">Date</option>
                      </select>
                  </div>
              </div>--%>

          </div>
          <!=======================================================================>

     <!=============================filters starts here=======================>

                 

                           <div class="sidenav bg-gray" style="margin-top: 85px;">
                               <div class="chx" style="margin-left: 10px;">

                                   <label><b>Filters:</b></label>
                                   <br />
                                   <h3 class="widget-title">Category </h3>


                                   <h3 class="widget-title">Brands   </h3>
                                   <asp:CheckBox ID="CheckBox_havells" runat="server" AutoPostBack="true" Text="Havells" OnCheckedChanged="CheckBox_CheckedChanged" />
                                   <br />

                                   <asp:CheckBox ID="CheckBox_Orient" runat="server" AutoPostBack="true" Text="Orient" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_Wipro" runat="server" AutoPostBack="true" Text="Wipro" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_syska" runat="server" AutoPostBack="true" Text="syska" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_Bajaj" runat="server" AutoPostBack="true" Text="Bajaj" OnCheckedChanged="CheckBox_CheckedChanged" />

                                   <hr />

                                   <h3 class="widget-title">Price </h3>

                                   <asp:CheckBox ID="CheckBox_price" runat="server" AutoPostBack="true" Text="Rs:100-500" OnCheckedChanged="CheckBox_CheckedChanged" />
                                   <br />
                                   <asp:CheckBox ID="CheckBox_pr1" runat="server" AutoPostBack="true" Text="Rs: 500-1000" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_pr2" runat="server" AutoPostBack="true" Text=" Rs: 1000-2000" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_pr3" runat="server" AutoPostBack="true" Text="Rs: 2000-3000" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_pr4" runat="server" AutoPostBack="true" Text="Rs: 4000-5000" OnCheckedChanged="CheckBox_CheckedChanged" /><br />
                                   <asp:CheckBox ID="CheckBox_pr5" runat="server" AutoPostBack="true" Text="Rs: 5000-10000" OnCheckedChanged="CheckBox_CheckedChanged" />


                               </div>
                           </div>


          <!==========================SIDE bar starts here =========================>

                    
    <!==============================SIDE BAR ends here==============================>

              
             <div class="main">
                 <div class="row">
                     <asp:Repeater runat="server" ID="rp_havells_brand" Visible="false">
                         <ItemTemplate>

                             <div class="col-lg-2">

                                 <div class="product product-7 text-center">
                                     <figure class="product-media">
                                         <span class="product-label label-new">New</span>


                                         <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image" />

                                         <div class="product-action-vertical">
                                             <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>


                                             <%--   <asp:LinkButton ID="WishList" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>--%>

                                             <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                             <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                         </div>


                                         <div class="product-action">

                                             <asp:Button ID="cart_btn" class="btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="btn_cart_category" Style="border: none;" />

                                         </div>

                                     </figure>


                                     <div class="product-body">
                                         <div class="product-cat"><%# Eval("Brand") %>   </div>

                                         <h3 class="product-title">
                                             <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_link_Category">
                                        <%# Eval("ProductName") %></asp:LinkButton>

                                         </h3>

                                         <div class="product-price"><%# Eval("ProductPrice") %>     </div>

                                         <div class="ratings-container">
                                             <div class="ratings">

                                                 <div class="ratings-val" style="width: 20%;">
                                             </div>

                                             </div>

                                             <span class="ratings-text">( 2 Reviews )</span>
                                         </div>

                                     </div>

                                 </div>

                             </div>

                         </ItemTemplate>
                     </asp:Repeater>
                   
                  </div>
                   <!=====================>

                  <div class="row">
                   <asp:Repeater runat="server" ID="rp_Orient_brand" Visible="false">
                         <ItemTemplate>

                             <div class="col-lg-2">

                                 <div class="product product-7 text-center">
                                     <figure class="product-media">
                                         <span class="product-label label-new">New</span>
                                         <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image" />

                                         <div class="product-action-vertical">
                                             <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>

                                             <%--   <asp:LinkButton ID="WishList" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>--%>

                                             <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                             <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                         </div>
                                         <div class="product-action">

                                             <asp:Button ID="cart_btn" class="btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="btn_cart_category" Style="border: none;" />

                                         </div>
                                     </figure>


                                     <div class="product-body">
                                         <div class="product-cat"><%# Eval("Brand") %>   </div>
                                         <h3 class="product-title">
                                             <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_link_Category">
                                        <%# Eval("ProductName") %></asp:LinkButton>

                                         </h3>

                                         <div class="product-price"><%# Eval("ProductPrice") %>     </div>

                                         <div class="ratings-container">
                                             <div class="ratings">
                                                 <div class="ratings-val" style="width: 20%;">
                                             </div>
                                             </div>
                                             <span class="ratings-text">( 2 Reviews )</span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </ItemTemplate>
                     </asp:Repeater>
               </div>

               <!=====================>

                   <div class="row">
                   <asp:Repeater runat="server" ID="rp_syska_brand" Visible="false">
                         <ItemTemplate>

                             <div class="col-lg-2">

                                 <div class="product product-7 text-center">
                                     <figure class="product-media">
                                         <span class="product-label label-new">New</span>


                                         <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image" />

                                         <div class="product-action-vertical">
                                             <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>


                                             <%--   <asp:LinkButton ID="WishList" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>--%>

                                             <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                             <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                         </div>


                                         <div class="product-action">

                                             <asp:Button ID="cart_btn" class="btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="btn_cart_category" Style="border: none;" />

                                         </div>

                                     </figure>


                                     <div class="product-body">
                                         <div class="product-cat"><%# Eval("Brand") %>   </div>

                                         <h3 class="product-title">
                                             <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_link_Category">
                                        <%# Eval("ProductName") %></asp:LinkButton>

                                         </h3>

                                         <div class="product-price"><%# Eval("ProductPrice") %>     </div>

                                         <div class="ratings-container">
                                             <div class="ratings">

                                                 <div class="ratings-val" style="width: 20%;">
                                             </div>

                                             </div>

                                             <span class="ratings-text">( 2 Reviews )</span>
                                         </div>

                                     </div>

                                 </div>

                             </div>

                         </ItemTemplate>
                     </asp:Repeater>
               </div>



             <div class="row">
                   <asp:Repeater runat="server" ID="rp_wipro_brand" Visible="false">
                         <ItemTemplate>

                             <div class="col-lg-2">

                                 <div class="product product-7 text-center">
                                     <figure class="product-media">
                                         <span class="product-label label-new">New</span>


                                         <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image" />

                                         <div class="product-action-vertical">
                                             <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>


                                             <%--   <asp:LinkButton ID="WishList" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>--%>

                                             <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                             <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                         </div>


                                         <div class="product-action">

                                             <asp:Button ID="cart_btn" class="btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="btn_cart_category" Style="border: none;" />

                                         </div>

                                     </figure>


                                     <div class="product-body">
                                         <div class="product-cat"><%# Eval("Brand") %>   </div>

                                         <h3 class="product-title">
                                             <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_link_Category">
                                        <%# Eval("ProductName") %></asp:LinkButton>

                                         </h3>

                                         <div class="product-price"><%# Eval("ProductPrice") %>     </div>

                                         <div class="ratings-container">
                                             <div class="ratings">

                                                 <div class="ratings-val" style="width: 20%;">
                                             </div>

                                             </div>

                                             <span class="ratings-text">( 2 Reviews )</span>
                                         </div>

                                     </div>

                                 </div>

                             </div>

                         </ItemTemplate>
                     </asp:Repeater>
                </div>



                     <div class="row">
                       <asp:Repeater runat="server" ID="rp_bajaj_brand" Visible="false">
                         <ItemTemplate>

                             <div class="col-lg-2">

                                 <div class="product product-7 text-center">
                                     <figure class="product-media">
                                         <span class="product-label label-new">New</span>


                                         <img src='<%# Eval("UploadImage") %>' alt="Product image" class="product-image" />

                                         <div class="product-action-vertical">
                                             <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>


                                             <%--   <asp:LinkButton ID="WishList" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="WishList_Click" class="btn-product-icon btn-wishlist"><span>add to wishlist</span></asp:LinkButton>--%>

                                             <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                             <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                         </div>


                                         <div class="product-action">

                                             <asp:Button ID="cart_btn" class="btn-product btn-cart" runat="server" CommandArgument='<%# Eval("APID") %>' Text="Add to Cart" OnClick="btn_cart_category" Style="border: none;" />

                                         </div>

                                     </figure>


                                     <div class="product-body">
                                         <div class="product-cat"><%# Eval("Brand") %>   </div>

                                         <h3 class="product-title">
                                             <asp:LinkButton ID="product_link" runat="server" CommandArgument='<%# Eval("APID") %>' OnClick="product_link_Category">
                                        <%# Eval("ProductName") %></asp:LinkButton>

                                         </h3>

                                         <div class="product-price"><%# Eval("ProductPrice") %>     </div>

                                         <div class="ratings-container">
                                             <div class="ratings">

                                                 <div class="ratings-val" style="width: 20%;">
                                             </div>

                                             </div>

                                             <span class="ratings-text">( 2 Reviews )</span>
                                         </div>

                                     </div>

                                 </div>

                             </div>

                         </ItemTemplate>
                     </asp:Repeater>
                </div>


                     <%--                     <div class="col-lg-2">
                         <div class="product product-7 text-center">
                             <figure class="product-media">
                                 <a href="product.html">
                                     <img src="assets/images/products/product-5.jpg" alt="Product image" class="product-image">
                                 </a>

                                 <div class="product-action-vertical">
                                     <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                     <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                     <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                 </div>
                                 <!-- End .product-action-vertical -->

                                 <div class="product-action">
                                     <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                 </div>
                                 <!-- End .product-action -->
                             </figure>
                             <!-- End .product-media -->

                             <div class="product-body">
                                 <div class="product-cat">
                                     <a href="#">Dresses</a>
                                 </div>
                                 <!-- End .product-cat -->
                                 <h3 class="product-title"><a href="product.html">Dark yellow lace cut out swing dress</a></h3>
                                 <!-- End .product-title -->
                                 <div class="product-price">
                                     $84.00
                                               
                                 </div>
                                 <!-- End .product-price -->
                                 <div class="ratings-container">
                                     <div class="ratings">
                                         <div class="ratings-val" style="width: 0%;"></div>
                                         <!-- End .ratings-val -->
                                     </div>
                                     <!-- End .ratings -->
                                     <span class="ratings-text">( 0 Reviews )</span>
                                 </div>
                                 <!-- End .rating-container -->

                                 <div class="product-nav product-nav-thumbs">
                                     <a href="#" class="active">
                                         <img src="assets/images/products/product-5-thumb.jpg" alt="product desc">
                                     </a>
                                     <a href="#">
                                         <img src="assets/images/products/product-5-2-thumb.jpg" alt="product desc">
                                     </a>
                                 </div>
                                 <!-- End .product-nav -->
                             </div>
                             <!-- End .product-body -->
                         </div>

                     </div>
                     <div class="col-lg-2">
                         <div class="product product-7 text-center">
                             <figure class="product-media">
                                 <span class="product-label label-out">Out of Stock</span>
                                 <a href="product.html">
                                     <img src="assets/images/products/product-6.jpg" alt="Product image" class="product-image">
                                 </a>

                                 <div class="product-action-vertical">
                                     <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                     <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                     <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                 </div>
                                 <!-- End .product-action-vertical -->

                                 <div class="product-action">
                                     <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                 </div>
                                 <!-- End .product-action -->
                             </figure>
                             <!-- End .product-media -->

                             <div class="product-body">
                                 <div class="product-cat">
                                     <a href="#">Jackets</a>
                                 </div>
                                 <!-- End .product-cat -->
                                 <h3 class="product-title"><a href="product.html">Khaki utility boiler jumpsuit</a></h3>
                                 <!-- End .product-title -->
                                 <div class="product-price">
                                     <span class="out-price">$120.00</span>
                                 </div>
                                 <!-- End .product-price -->
                                 <div class="ratings-container">
                                     <div class="ratings">
                                         <div class="ratings-val" style="width: 80%;"></div>
                                         <!-- End .ratings-val -->
                                     </div>
                                     <!-- End .ratings -->
                                     <span class="ratings-text">( 6 Reviews )</span>
                                 </div>
                                 <!-- End .rating-container -->
                             </div>
                             <!-- End .product-body -->
                         </div>
                     </div>

                     <div class="col-lg-2">
                         <div class="product product-7 text-center">
                             <figure class="product-media">
                                 <a href="product.html">
                                     <img src="assets/images/products/product-7.jpg" alt="Product image" class="product-image">
                                 </a>

                                 <div class="product-action-vertical">
                                     <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                     <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                     <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                 </div>
                                 <!-- End .product-action-vertical -->

                                 <div class="product-action">
                                     <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                 </div>
                                 <!-- End .product-action -->
                             </figure>
                             <!-- End .product-media -->

                             <div class="product-body">
                                 <div class="product-cat">
                                     <a href="#">Jeans</a>
                                 </div>
                                 <!-- End .product-cat -->
                                 <h3 class="product-title"><a href="product.html">Blue utility pinafore denim dress</a></h3>
                                 <!-- End .product-title -->
                                 <div class="product-price">
                                     $76.00
                                               
                                 </div>
                                 <!-- End .product-price -->
                                 <div class="ratings-container">
                                     <div class="ratings">
                                         <div class="ratings-val" style="width: 20%;"></div>
                                         <!-- End .ratings-val -->
                                     </div>
                                     <!-- End .ratings -->
                                     <span class="ratings-text">( 2 Reviews )</span>
                                 </div>
                                 <!-- End .rating-container -->
                             </div>
                             <!-- End .product-body -->
                         </div>

                     </div>

                     <div class="col-lg-2">
                         <div class="product product-7 text-center">
                             <figure class="product-media">
                                 <span class="product-label label-new">New</span>
                                 <a href="product.html">
                                     <img src="assets/images/products/product-8.jpg" alt="Product image" class="product-image">
                                 </a>

                                 <div class="product-action-vertical">
                                     <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                     <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                     <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                                 </div>
                                 <!-- End .product-action-vertical -->

                                 <div class="product-action">
                                     <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                 </div>
                                 <!-- End .product-action -->
                             </figure>
                             <!-- End .product-media -->

                             <div class="product-body">
                                 <div class="product-cat">
                                     <a href="#">Shoes</a>
                                 </div>
                                 <!-- End .product-cat -->
                                 <h3 class="product-title"><a href="product.html">Beige knitted elastic runner shoes</a></h3>
                                 <!-- End .product-title -->
                                 <div class="product-price">
                                     $84.00
                                               
                                 </div>
                                 <!-- End .product-price -->
                                 <div class="ratings-container">
                                     <div class="ratings">
                                         <div class="ratings-val" style="width: 0%;"></div>
                                         <!-- End .ratings-val -->
                                     </div>
                                     <!-- End .ratings -->
                                     <span class="ratings-text">( 0 Reviews )</span>
                                 </div>
                                 <!-- End .rating-container -->

                                 <div class="product-nav product-nav-thumbs">
                                     <a href="#" class="active">
                                         <img src="assets/images/products/product-8-thumb.jpg" alt="product desc">
                                     </a>
                                     <a href="#">
                                         <img src="assets/images/products/product-8-2-thumb.jpg" alt="product desc">
                                     </a>
                                 </div>
                                 <!-- End .product-nav -->
                             </div>
                             <!-- End .product-body -->
                         </div>

                     </div>
                 </div>

                 <div class="row">

              
                 <div class="col-lg-2">
                     <div class="product product-7 text-center">
                         <figure class="product-media">
                             <span class="product-label label-top">Top</span>
                             <a href="product.html">
                                 <img src="assets/images/products/product-11.jpg" alt="Product image" class="product-image">
                             </a>

                             <div class="product-action-vertical">
                                 <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                 <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                 <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                             </div>
                             <!-- End .product-action-vertical -->

                             <div class="product-action">
                                 <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                             </div>
                             <!-- End .product-action -->
                         </figure>
                         <!-- End .product-media -->

                         <div class="product-body">
                             <div class="product-cat">
                                 <a href="#">Shoes</a>
                             </div>
                             <!-- End .product-cat -->
                             <h3 class="product-title"><a href="product.html">Light brown studded Wide fit wedges</a></h3>
                             <!-- End .product-title -->
                             <div class="product-price">
                                 $110.00
                                               
                             </div>
                             <!-- End .product-price -->
                             <div class="ratings-container">
                                 <div class="ratings">
                                     <div class="ratings-val" style="width: 80%;"></div>
                                     <!-- End .ratings-val -->
                                 </div>
                                 <!-- End .ratings -->
                                 <span class="ratings-text">( 1 Reviews )</span>
                             </div>
                             <!-- End .rating-container -->

                             <div class="product-nav product-nav-thumbs">
                                 <a href="#" class="active">
                                     <img src="assets/images/products/product-11-thumb.jpg" alt="product desc">
                                 </a>
                                 <a href="#">
                                     <img src="assets/images/products/product-11-2-thumb.jpg" alt="product desc">
                                 </a>

                                 <a href="#">
                                     <img src="assets/images/products/product-11-3-thumb.jpg" alt="product desc">
                                 </a>
                             </div>
                             <!-- End .product-nav -->
                         </div>
                         <!-- End .product-body -->
                     </div>
                 </div>
                 <div class="col-lg-2">

                     <div class="product product-7 text-center">
                         <figure class="product-media">
                             <span class="product-label label-top">Top</span>
                             <a href="product.html">
                                 <img src="assets/images/products/product-11.jpg" alt="Product image" class="product-image">
                             </a>

                             <div class="product-action-vertical">
                                 <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                 <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                 <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                             </div>
                             <!-- End .product-action-vertical -->

                             <div class="product-action">
                                 <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                             </div>
                             <!-- End .product-action -->
                         </figure>
                         <!-- End .product-media -->

                         <div class="product-body">
                             <div class="product-cat">
                                 <a href="#">Shoes</a>
                             </div>
                             <!-- End .product-cat -->
                             <h3 class="product-title"><a href="product.html">Light brown studded Wide fit wedges</a></h3>
                             <!-- End .product-title -->
                             <div class="product-price">
                                 $110.00
                                               
                             </div>
                             <!-- End .product-price -->
                             <div class="ratings-container">
                                 <div class="ratings">
                                     <div class="ratings-val" style="width: 80%;"></div>
                                     <!-- End .ratings-val -->
                                 </div>
                                 <!-- End .ratings -->
                                 <span class="ratings-text">( 1 Reviews )</span>
                             </div>
                             <!-- End .rating-container -->

                             <div class="product-nav product-nav-thumbs">
                                 <a href="#" class="active">
                                     <img src="assets/images/products/product-11-thumb.jpg" alt="product desc">
                                 </a>
                                 <a href="#">
                                     <img src="assets/images/products/product-11-2-thumb.jpg" alt="product desc">
                                 </a>

                                 <a href="#">
                                     <img src="assets/images/products/product-11-3-thumb.jpg" alt="product desc">
                                 </a>
                             </div>
                             <!-- End .product-nav -->
                         </div>
                         <!-- End .product-body -->
                     </div>
                 </div>
                 <div class="col-lg-2">
                     <div class="product product-7 text-center">
                         <figure class="product-media">
                             <a href="product.html">
                                 <img src="assets/images/products/product-15.jpg" alt="Product image" class="product-image" />
                             </a>

                             <div class="product-action-vertical">
                                 <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                 <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
                                 <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
                             </div>
                             <!-- End .product-action-vertical -->

                             <div class="product-action">
                                 <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                             </div>
                             <!-- End .product-action -->
                         </figure>
                         <!-- End .product-media -->

                         <div class="product-body">
                             <div class="product-cat">
                                 <a href="#">Bags</a>
                             </div>
                             <!-- End .product-cat -->
                             <h3 class="product-title"><a href="product.html">Beige ring handle circle cross body bag</a></h3>
                             <!-- End .product-title -->
                             <div class="product-price">
                                 $56.00
                                               
                             </div>
                             <!-- End .product-price -->
                             <div class="ratings-container">
                                 <div class="ratings">
                                     <div class="ratings-val" style="width: 0%;"></div>
                                     <!-- End .ratings-val -->
                                 </div>
                                 <!-- End .ratings -->
                                 <span class="ratings-text">( 0 Reviews )</span>
                             </div>
                             <!-- End .rating-container -->
                         </div>
                         <!-- End .product-body -->
                     </div>

                 </div>--%>
               







                 <!================== FILTER ENDS HERE================================>

      

    <!=======================page content ends here========================>

         <footer class="footer footer-2 ">
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
                                     <input type="email" class="form-control" placeholder="Enter your Email Address" aria-label="Email Adress" aria-describedby="newsletter-btn"  />
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
                                 <img src="assets/images/demos/demo-2/logo.png" class="footer-logo" alt="Footer Logo" width="105" height="25" />
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
             </div>
      </form>
</body>
</html>




















