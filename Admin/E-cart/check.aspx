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

                                            <asp:Button ID="logout_login1" runat="server" Class="btn btn-danger text-white" Text="Logout or Sign to another account" OnClick="redirct_lgin" Visible="false" />
                                         
                                               &nbsp  &nbsp  &nbsp

                                                <asp:Button ID="cnfrm_checkout" runat="server" Class="btn" Text="Continue to CheckOut"
                                                    Style="background-color: #062b60; color: white;" OnClick="cnfrm_checkout_Click" Visible="false" />
                                        </div>
                                        &nbsp;
                                    </div>
                                </div>


                            <!================================CARD USER PROFILE ENDS  HERE ===============================>
                                <br />

                            <!================================CARD DELIVERY ADDRESS STARTS HERE  ===============================>
                                <div class="row">
                                    <div class="card bg-white shadow">
                                        <div class=" card-head bg-gray p-3">
                                            <h4 class="text-dark">Delivery Address </h4>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-8">
                                                <p class="p-4">

               <%--   <asp:GridView ID="login_grd" runat="server" AutoGenerateColumns="False"   cssclass="table table-bordered  table-condensed table-striped  " style="width: 78rem; margin-top: -30px; ">
                      <Columns>
                          <asp:TemplateField HeaderText="UserId">
                              <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                   <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>


                          <asp:TemplateField HeaderText="FirstName">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                              </ItemTemplate>

                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Address">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Mobile No">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="State">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="City">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          
                          <asp:TemplateField HeaderText="Pincode">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Pincode") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("Pincode") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>

                        </asp:GridView>--%>
                                               
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

                                       
                                            <div class="col-lg-4">
                                             <asp:LinkButton ID="editicon" runat="server" CommandArgument='<%# Eval("URID") %>'   >
                                                 <span> <i class="fa-solid fa-square-pen fa-2x" style="color: #0d33c9; color: #0d33c9; margin-top: 14px; margin-left: 20rem;"></i></span></asp:LinkButton>

                          <%--     <i class="fa-solid fa-square-pen fa-2x" style="color: #0d33c9; color: #0d33c9; margin-top: 14px; margin-left: 20rem;"></i>--%>
                                            </div>
                                        </div>

                                        <div class="row p-3">
                                            <div class="col-lg-12">
                                                <asp:Button ID="deliverhere" runat="server" Class="btn btn-warning text-white" Text="Deliver Here" Style="margin-left: 33px; margin-top: 15px;" OnClick="deliverhere_Click" />
                                            </div>
                                        </div>
                                    </div>
                                 </div>

                           <!================================CARD DELIVERY ADDRESS ENDS HERE  ===============================>
                                   <br />  


                            <!================================ ADD NEW ADDRESS sTART HERE  ===============================>
                                    <div  id="addadd" class="row" runat="server">
                                         <div class="col-lg-8">
                                         <div class="card bg-white shadow p-3" style="width: 80rem;">
                                            <asp:Button ID="AddNewAddress" runat="server" Class="btn btn-success" Text="+ Add New Address" style="width: 10px; margin-left: 60rem;" OnClick="AddNewAddress_Click" />

                           <div id="billadd"  class="bill p-3"   runat="server" visible="false">   
                                <h2 class="checkout-title">Billing Details</h2>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>First Name *</label>

                                        <asp:TextBox ID="txt_frstname" runat="server" type="text" Class="form-control"  placeholder="Enter Your First Name " />

                                        <asp:RequiredFieldValidator ID="frstrname" runat="server" ControlToValidate="txt_frstname" ForeColor="Red" ErrorMessage="Please Enter your First Name"> 
                                        </asp:RequiredFieldValidator>

                                    </div>

                                    <div class="col-sm-6">
                                        <label>Last Name *</label>
                                        <asp:TextBox ID="txt_lst" runat="server" type="text" Class="form-control"  placeholder="Enter your Last Name" />
                                        <asp:RequiredFieldValidator ID="lstname" runat="server" ControlToValidate="txt_lst" ForeColor="Red" ErrorMessage="Please Enter your Last Name"> 
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>Email ID *</label>
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

                                        <asp:TextBox ID="txt_strt" runat="server" type="text" Class="form-control" placeholder="House No and Street name" />

                                        <asp:RequiredFieldValidator ID="strtadd" runat="server" ControlToValidate="txt_strt" ForeColor="Red" ErrorMessage="Please enter your Address"> 
                                          </asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-sm-6">
                                        <label>Country *</label>

                                        <asp:TextBox ID="txt_country" runat="server" type="text" Class="form-control" placeholder="House No and Street name" />
                                        
                                        <asp:RequiredFieldValidator ID="cntry" runat="server" ControlToValidate="txt_country" ForeColor="Red" ErrorMessage="Please enter your country"> 
                                        </asp:RequiredFieldValidator>
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-sm-6">
                                        <label>City *</label>

                                        <asp:TextBox ID="txt_city" runat="server" type="text" Class="form-control" placeholder="Enter your city Name" />
                                      
                                          <asp:RequiredFieldValidator ID="cty" runat="server" ControlToValidate="txt_city" ForeColor="Red" ErrorMessage="Please enter your city Name"> 
                                          </asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-sm-6">
                                        <label>state *</label>
                                        <asp:TextBox runat="server" ID="txt_state" Class="form-control" placeholder="Enter your state"></asp:TextBox>
                                       
                                         <asp:RequiredFieldValidator ID="sta" runat="server" ControlToValidate="txt_state" ForeColor="Red" ErrorMessage="Please enter your state"> 
                                          </asp:RequiredFieldValidator>
                                    </div>
                                </div>



                                <label>Pincode *</label>
                                <asp:TextBox ID="txt_zip" runat="server" type="text" Class="form-control" placeholder="Enter your Pincode" />

                                <asp:RequiredFieldValidator ID="zip" runat="server" ControlToValidate="txt_zip" ForeColor="Red" ErrorMessage="Please enter your Pincode"> 
                               </asp:RequiredFieldValidator>


                                <label style="float: left">Order notes (optional)</label>

                                <asp:TextBox ID="multitxt" runat="server" TextMode="MultiLine" class="form-control" cols="30" Rows="4" placeholder="Notes about your order,"></asp:TextBox>

                                <asp:Button ID="address_save" runat="server" Text="Save Address"
                                     Style="height: 40px; width: 145px; margin-left: 10rem; margin-top: 2rem; margin-top: 0rem; margin-bottom: 21px; background-color: #FFC107; color: white; border: none; " OnClick="address_save_Click" />

                                <asp:Button ID="cancel" runat="server" Text="Cancel"
                                     Style="height: 40px; width: 145px; margin-left: 4rem; margin-top: 2rem; margin-top: 0rem; margin-bottom: 21px; background-color: #6ea0c1; color: white; border: none; "  />

                            </div>
                          </div>
                         </div>
                      </div>
                  <!================================ ADD NEW ADDRESS Ends HERE  ===============================>        
                            <br /> 

                 <!================================ order summary starts here  ===============================>        

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
      
         <!================================ order summary ends here  ===============================>     
                    
                    
        <!================================ order side bar starts here  ===============================>
                                      
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

                                                   
                                                    <tr class="summary-subtotal">
                                                        <td>Subtotal:</td>
                                                        <td>
                                                            <asp:Label ID="Subtotal" runat="server" Text=""></asp:Label></td>
                                                    </tr>
                                                  
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

                                                </tbody>
                                            </table>
                                            <asp:Button ID="btn_next" runat="server" Text="Next" Style="height: 40px; text-align: center; width: 118px; margin-left: 10rem; margin-top: 2rem; margin-top: 0rem; margin-bottom: 21px; background-color: #f6a21c; color: white; border: none; border-radius: 36px;" />

                                        </div>
                                     </aside>

                                    <!=========================order details ============== ends  here =========================>

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
