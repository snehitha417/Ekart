<%@ Page Title="" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Admin.AdminScreens.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
      
        .body{
            background-color:#f5f9ff;
            
        }

        .container{
               margin-top: 5rem;
               margin-left: 16rem;
        }

 
       
    </style>

     <div class="body">
        <div class="container">
            <div class="row DB">
                <div class="col-sm-6 col-xl-3">

                    <div class=" rounded d-flex align-items-center justify-content-between p-4" style="background-color: #edd10c; color: white">

                        <img src="Images/category.png" alt="img" style="width: 50px;" />
                        <div class="ms-3">

                            <div>
                                <asp:Label ID="cat" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="tcat" runat="server" Text=" Total Categories" style="font-weight:bold"  />
                            </div>
                        </div>
                    </div>
                </div>

                <br />

                <div class="col-sm-6 col-xl-3">
                    <div class=" rounded d-flex align-items-center justify-content-between p-4" style="background-color: #ff0000; color: white">

                        <img src="Images/products.png" alt="img" style="width: 50px;" />
                        <div class="ms-3">
                            <div>
                                <asp:Label ID="Products" runat="server" Text="" />
                            </div>

                            <div>
                                <asp:Label ID="tproducts" runat="server" Text=" Total Products" style="font-weight:bold" />
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class=" rounded d-flex align-items-center justify-content-between p-4" style="background-color: #010e4f; color: white">

                        <img src="Images/sales.png" alt="img" style="width: 50px;" />
                        <div class="ms-3">
                            <div>
                                <asp:Label ID="sale" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="tsales" runat="server" Text=" Total Sales" style="font-weight:bold" />
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class=" rounded d-flex align-items-center justify-content-between p-4" style="background-color: #4b75e1; color: white">

                        <img src="Images/orders.png" alt="img" style="width: 50px;" />
                        <div class="ms-3">

                            <div>
                                <asp:Label ID="order" runat="server" />
                            </div>
                            <div>
                                <asp:Label ID="torders" runat="server" Text=" Total Orders" style="font-weight:bold" />
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>



</asp:Content>
