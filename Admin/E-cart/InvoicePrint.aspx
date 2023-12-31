﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvoicePrint.aspx.cs" Inherits="Admin.E_cart.InvoicePrint" %>

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
    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Invoice</title>
    <style>

    body {
    background: grey;
    margin-top: 120px;
    margin-bottom: 120px;
}
        </style>

</head>


<body>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body p-0">
                        <div class="row p-5">
                            <div class="col-md-4">
                                <img src="assets/images/demos/demo-2/logo.png"  alt="" style=" height: 65px;"/>
                            </div>
                           
                            <div class="col-md-8 text-right">
                                <h1 class="font-weight-bold mb-1">Invoice</h1>
                                <p class="text-muted">Due to: 4 Dec, 2019</p>
                            </div>
                        </div>

                        <hr  />

                        <div class="row pb-5 p-5">
                            <div class="col-md-6">
                                <p class="font-weight-bold mb-4"> Customer Information</p>
                                <p class="mb-1"> 
                                     <asp:PlaceHolder ID="userId_label" runat="server">
                                                        <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder>
                                 </p>
                                <p><asp:Panel runat="server" ID="address" ></asp:Panel>  </p>
                              
                                  <p class="mb-1"><asp:Label runat="server" ID="Label1" ></asp:Label> </p>
                                <p class="mb-1"><asp:Label runat="server" ID="Label2" ></asp:Label> </p>
                            </div>

                            <div class="col-md-6 text-right">
                                <p class="font-weight-bold mb-4">Payment Details</p>
                                <p class="mb-1"><span class="text-muted">Payment Id: </span> 1425782</p>
                                <p class="mb-1"><span class="text-muted">Payment Type: </span>Root</p>
                                <p class="mb-1"><span class="text-muted">Name: </span>John Doe</p>
                            </div>
                        </div>

                        <div class="row p-5">
                            <div class="col-md-12">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="border-0 text-uppercase small font-weight-bold">ID</th>
                                            <th class="border-0 text-uppercase small font-weight-bold">Item</th>
                                            <th class="border-0 text-uppercase small font-weight-bold">Description</th>
                                            <th class="border-0 text-uppercase small font-weight-bold">Quantity</th>
                                            <th class="border-0 text-uppercase small font-weight-bold">Unit Cost</th>
                                            <th class="border-0 text-uppercase small font-weight-bold">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td> 1</td>
                                            <td>Software</td>
                                            <td>LTS Versions</td>
                                            <td>21</td>
                                            <td>321</td>
                                            <td>3452</td>
                                        </tr>

                                        <tr>
                                            <td>1</td>
                                            <td>Software</td>
                                            <td>Support</td>
                                            <td>234</td>
                                            <td>6356</td>
                                            <td>23423</td>
                                        </tr>

                                        <tr>
                                            <td>1</td>
                                            <td>Software</td>
                                            <td>Sofware Collection</td>
                                            <td>4534</td>
                                            <td>354</td>
                                            <td>23434</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                         
                    
                        <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                            <div class="py-3 px-5 text-right">
                                <div class="mb-2">Grand Total</div>
                                <div class="h2 font-weight-light">Rs:234,234</div>
                            </div>

                            <div class="py-3 px-5 text-right">
                                <div class="mb-2">Discount</div>
                                <div class="h2 font-weight-light">10%</div>
                            </div>

                            <div class="py-3 px-5 text-right">
                                <div class="mb-2">Sub - Total amount</div>
                                <div class="h2 font-weight-light">Rs:32,432</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>

