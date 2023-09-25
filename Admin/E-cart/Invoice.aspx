<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Admin.E_cart.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice Page</title>
    <script>
        function printPage() {
            window.print();
        }
    </script>

    <style>
        .card {
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 10px;
            margin: 10px;
            background-color: #fff;
            width: 210mm;
            height: 230mm;
        }

        .card-body {
            padding: 10px;
        }

        .btn {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: deepskyblue;
            color: white;
            font-size: large;
            margin-left: 19rem;
            margin-top: 1rem;
        }


        .auto-style1 {
            width: 220px;
        }


    </style>

</head>


<body>

    <form id="form1" runat="server">


        <div class="card1">
            <div class="card" style="margin-left: 30px;">
                <div class="card-body">

                    <img style="width: 20%; margin-top: 0rem; margin-left: 1rem;"
                        src="assets/images/demos/demo-2/logo.png" />
                    <h1 style="text-align: center; margin-top: 1rem">GVR Ekart Management System</h1>

                    <h1 style="text-align: center; margin-top: 1rem">Invoice Page</h1>
                    <div>
                        <p style="text-align: end; margin-right: 7rem;">
                            Date:-<asp:Label ID="lbldate" runat="server" Text="Date:-" Date="Getnow"></asp:Label>
                            <br />
                            Time:<asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
                        </p>

                        <p style="margin-left: 2rem">Name:  <asp:PlaceHolder ID="userId_label" runat="server">
                <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder> </p>
                        <p style="margin-left: 2rem">From Address: Gvr Ekart </p>

                        <p style="margin-left: 2rem">To Address: GvrInfoSystem Pvt ltd</p>
                    </div>


                    <div class="page-content">
                        <div class="container">
                            <table class="table table-wishlist table-mobile">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th class="auto-style1">ProductName</th>
                                        <th>Price </th>
                                        <th></th>
                                        <th>Gst</th>
                                        <th></th>
                                        <th>Total</th>
                                        <th></th>
                                        <th>Quantity</th>
                                        <th></th>

                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <asp:Panel ID="invoice_panel" runat="server">
                                        </asp:Panel>

                                    </tr>


                                    <tr>
                                        <%-- <td>
                                    <asp:Label ID="ttal" runat="server" Text="Total"></asp:Label>
                                </td>--%>
                                        <td></td>
                                        <td class="auto-style1"></td>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <th class="auto-style1">
                                            <asp:Label ID="ttal" runat="server" Text="Total"></asp:Label>
                                        </th>

                                        <th>
                                            <asp:Label ID="Sub_Total" runat="server" Text=" "></asp:Label>
                                        </th>

                                        <th></th>
                                        <th>
                                            <asp:Label ID="Gst_Total" runat="server" Text="0.00"></asp:Label>
                                        </th>
                                        <th></th>

                                        <th>
                                            <asp:Label ID="Total" runat="server" Text="0.00"></asp:Label>
                                        </th>
                                        <th></th>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- End .table table-wishlist -->
                        </div>
                    </div>


                    <!-- Item rows will be inserted here -->


                    <p style="margin-left: 3rem; margin-top: 3rem">Signature </p>
                    <div>
                        <asp:Button ID="btn_print" runat="server" Text="Print" OnClientClick="window.print()" CssClass="btn" Height="55px" Width="308px" />
                    </div>

                </div>
            </div>
        </div>
    </form>


</body>
</html>

