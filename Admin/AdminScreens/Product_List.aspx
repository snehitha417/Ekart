<%@ Page Title="" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="Product_List.aspx.cs" Inherits="Admin.AdminScreens.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bodymain">
        <div class="container">
            <style>
                .my-table {
                    width: 100%;
                    border-collapse: collapse;
                }

                    .my-table th {
                        background-color: #f2f2f2;
                        font-weight: bold;
                        padding: 8px;
                        max-width: 900px;
                        text-align: left;
                        border: 1px solid #ccc;
                    }

                    .my-table td {
                        padding: 8px;
                        border: 1px solid #ccc;
                    }

                .table {
                    width: 1400px;
                }

                .GridView-HeaderText {
                    width: 200px;
                }

                .th {
                    max-width: 10px;
                }

                .btn-add {
                    color: white;
                    height: 2rem;
                    font-weight: bold;
                    background-color: lawngreen;
                    margin-left: 77rem;
                    width: 7rem;
                    border-color: gold;
                    border-radius: 0.5rem;
                }
            </style>
            <form id="form1" runat="server">
                <asp:Panel runat="server" ID="List">
                    <asp:ScriptManager runat="server" ID="SM1"></asp:ScriptManager>
                    <div class="table">
                        <h1><b>Stock-List</b></h1>
                        <div>
                            <asp:TextBox runat="server" ID="txtSearch" name="search" placeholder="Search by list name" Style="width: 300px; height: 39px; border-radius: 1rem;" />

                            <i class="fa-solid fa-magnifying-glass" style="margin-left: -32px; margin-top: 21px;" onclick=""></i>
                            <asp:Button ID="ADDItem" runat="server" Text="ADD" Class="btn-add" OnClick="ADDItem_Click" />
                        </div>
                        <br />
                        <br />

                        <table class="my-table" style="text-align: center; margin-left: -28px;">
                            <thead>
                                <tr>
                                    <th style="text-align: center;" id="lblapid">ID</th>
                                    <th style="text-align: center;">Product Name</th>
                                    <th style="text-align: center;">Brand Name</th>
                                    <th style="text-align: center;">Model Name</th>
                                    <th style="text-align: center;">Price</th>
                                   <%--  <th style="text-align: center;">Quantity</th>--%>
                                    <th style="text-align: center;">Rating</th>
                                    <th style="text-align: center;">Edit</th>

                                </tr>
                            </thead>

                            <tbody>
                                <asp:Repeater ID="gridView" OnItemCommand="gridView_ItemCommand" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblseid" runat="server" Text='<%# Eval("APID") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lalitm" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                <%--<asp:TextBox ID="txtupdt" runat="server" Text='<%# Eval("ItemName") %>' Visible="false"></asp:TextBox>--%>
              
                                            </td>
                                            <td>
                                                <asp:Label ID="lblbrname" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
                                                <%--<asp:TextBox ID="txtbrname" runat="server" Text='<%# Eval("BrandName") %>' Visible="false"></asp:TextBox>--%>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblmodel" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
                                                <%--<asp:TextBox ID="txtmodel" runat="server" Text='<%# Eval("Model") %>' Visible="false"></asp:TextBox>--%>
              </span></td>
                                            <td>
                                                <asp:Label ID="lblprice" runat="server" Text='<%# Eval("ProductPrice") %>' />
                                                <%--<asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("Price") %>' Visible="false"--%>

                                            </td>
                                           <%-- <td>
                                               <%-- <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>' />
                                                <asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("Price") %>' Visible="false"

                                            </td>--%>
                                            <td>
                                                <asp:Label ID="lblrate" runat="server" Text='<%# Eval("Rating") %>' />
                                            </td>
                                            <td>
                                                <asp:Button ID="btn_edit" runat="server" Text="Edit" CommandArgument='<%#Eval("APID")%>' CommandName="edit" OnClick="click_Edit" Style="width: 5rem; border-radius: 0.5rem; background-color: greenyellow; font-weight: bold;"
                                                    OnClientClick="return confirm('Are you sure you want to Edit this Item?');" AlternateText="Edit" />

                                                <asp:Button ID="btn_remov" Text="Remove" OnClick="click_remove" runat="server" Style="width: 5rem; border-radius: 0.5rem; background-color: red; color: white; font-weight: bold;"
                                                    OnClientClick="return confirm('Are you sure you want to delete this Item?');" AlternateText="Delete"></asp:Button></td>
                                        </tr>


                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>

                        </table>
                        <asp:Panel ID="popup" runat="server" Visible="false" CssClass="alert-dark" BorderColor="LightYellow" Style="width: 17rem; height: 7rem; text-align: center;">
                            <br />
                            <span><b>Are you sure to delete item?</b></span>

                            <br />
                            <br />
                            <asp:Button runat="server" ID="btnyes" Text="YES" OnClick="btnyes_Click" Style="width: 5rem; border-radius: 1rem; background-color: chartreuse; font-weight: bold;" />
                            <asp:Button runat="server" ID="btnno" Text="NO" Style="width: 5rem; border-radius: 1rem; background-color: red; font-weight: bold;" />
                        </asp:Panel>

                    </div>
                </asp:Panel>
            </form>
            <br />
            <br />
        </div>

    </div>


</asp:Content>
