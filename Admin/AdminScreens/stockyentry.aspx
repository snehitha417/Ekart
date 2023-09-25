<%@ Page Title="" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="stockyentry.aspx.cs" Inherits="Admin.AdminScreens.stockyentry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%--  <form id="registration" runat="server">--%>

        <div class="mainbody">
            <div class="container ">
                <h3 style="align-content: center">Stock Entry </h3>
                <div class="card">



                    <div class="col-lg-12 p-4">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="date" Height="38px" Width="236px"><b>SEDATE<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Height="38px" Width="236px" />
                            </div>

                            <div class="col-lg-4">
                                <asp:Label runat="server" ID="Name" Height="38px" Width="236px"><b>Item Name<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtName" runat="server" Height="38px" Width="236px" />
                            </div>

                            <div class="col-md-4">
                                <asp:Label runat="server" ID="item" Height="38px" Width="236px"><b>Item ID<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtitem" runat="server" Height="38px" Width="236px" />
                            </div>

                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="Brand" Height="38px" Width="236px"><b>Brand Name<span>*</span></b> </asp:Label>
                                <br />
                                <asp:DropDownList runat="server" ID="ddbrand" Height="38px" Width="236px">
                                    <asp:ListItem Text="---Select---" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Havells" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="USHA" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="GM" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="V-Guard" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="Bajaj " Value="5"></asp:ListItem>
                                    <asp:ListItem Text="Finolex " Value="6"></asp:ListItem>
                                    <asp:ListItem Text="Polycab " Value="7"></asp:ListItem>
                                    <asp:ListItem Text="ABB " Value="8"></asp:ListItem>
                                    <asp:ListItem Text="Legrand" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="Mitsubishi " Value="10"></asp:ListItem>
                                    <asp:ListItem Text="Anchor " Value="11"></asp:ListItem>
                                    <asp:ListItem Text="Crompton " Value="12"></asp:ListItem>
                                    <asp:ListItem Text="Siemens " Value="13"></asp:ListItem>
                                    <asp:ListItem Text="Philips" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="Orient " Value="15"></asp:ListItem>
                                    <asp:ListItem Text="Bharat " Value="16"></asp:ListItem>
                                    <asp:ListItem Text="Tesla" Value="17"></asp:ListItem>
                                    <asp:ListItem Text="Wipro" Value="18"></asp:ListItem>
                                    <asp:ListItem Text="Venus" Value="19"></asp:ListItem>
                                    <asp:ListItem Text="Syska" Value="20"></asp:ListItem>
                                    <asp:ListItem Text="Rexord" Value="21"></asp:ListItem>
                                    <asp:ListItem Text="KEI" Value="22"></asp:ListItem>
                                </asp:DropDownList>
                            </div>


                            <div class="col-md-4">
                                <asp:Label runat="server" ID="Model" Height="38px" Width="236px"><b>Model<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtmodel" runat="server" Height="38px" Width="236px" />
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="quantity" Height="38px" Width="236px"><b>Quantity<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtqty" runat="server" Height="38px" Width="236px" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="Cost" Height="38px" Width="236px"><b>Price<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtprice" runat="server" Height="38px" Width="236px" />
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="load" Height="38px" Width="236px"><b>Load No<span>*</span></b></asp:Label>
                                <asp:TextBox ID="txtLadno" runat="server" Height="38px" Width="236px" />
                            </div>
                            <div class="col-md-4">
                                <asp:Label runat="server" ID="file" Height="38px" Width="236px "><b>Upload Image<span>*</span></b></asp:Label>
                                <asp:FileUpload ID="fileUpload" runat="server" />
                                <asp:Button ID="btnUpload" runat="server" Text="Upload" Style="background-color: blueviolet; color: white; border-radius: 11px; border: none; margin-top: 1rem;" />
                            </div>
                        </div>
                        <br />
                        <div>

                            <asp:Button ID="btnRegister" runat="server" Text="Submit" Style="height: 40px; text-align: center; width: 118px; margin-left: 29rem; margin-top: 2rem; background-color: #4dcdea; border-radius: 44px; border: none; padding: 5px; margin-top: 10px; color: white;" />
                        </div>
                    </div>



                </div>
            </div>
        </div>

</asp:Content>
