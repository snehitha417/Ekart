<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="Admin.E_cart.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
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


<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 20%;
    }

    /* The Close Button */
    .close {
        color: #aaaaaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
</style>
</head>
<body>

    <h2>Modal Example</h2>

    <!-- Trigger/Open The Modal -->
    <button id="myBtn">Signup</button>

    <!-- The Modal -->
    <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
          

                <form runat="server">
                    <div class="form-group">
                        <asp:Label Text="First Name *" runat="server"> </asp:Label>
                        <asp:TextBox ID="txt_frstname" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator runat="server" ID="rfvFirstName" ControlToValidate="txt_frstname"
                            ErrorMessage="First Name is required" Display="Dynamic" CssClass="text-danger" />

                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="last Name *"> </asp:Label>


                        <asp:TextBox ID="txt_lstname" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txt_lstname"
                            ErrorMessage="last Name is required" Display="Dynamic" CssClass="text-danger" />
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Email Id *"> </asp:Label>

                        <asp:TextBox ID="txt_email" runat="server" Class="form-control" />

                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txt_email"
                            ErrorMessage="Email Id is required" Display="Dynamic" CssClass="text-danger" />
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" ID="Phone" Text="Phone Number *"></asp:Label>
                        <asp:TextBox ID="txt_phonenumber" runat="server" Class="form-control" max-length="10" onkeypress="return isNumberKey(event)" />

                        <asp:RequiredFieldValidator ID="rfvphno" runat="server" ControlToValidate="txt_phonenumber" ForeColor="Red" ErrorMessage="Please enter your Phone Number ">
                        </asp:RequiredFieldValidator>
                    </div>
     


            </form>
       
            <script>
                // Get the modal
                var modal = document.getElementById("myModal");

                // Get the button that opens the modal
                var btn = document.getElementById("myBtn");

                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

                // When the user clicks the button, open the modal 
                btn.onclick = function () {
                    modal.style.display = "block";
                }

                // When the user clicks on <span> (x), close the modal
                span.onclick = function () {
                    modal.style.display = "none";
                }

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>
</body>

</html>
