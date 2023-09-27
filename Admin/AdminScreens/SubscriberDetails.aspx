<%@ Page Title="" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="SubscriberDetails.aspx.cs" Inherits="Admin.AdminScreens.SubscriberDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
            .gridview-style {
                border: 1px solid #ccc;
            }

            .gridview-header {
                background-color: #42b372;
                color: #fff;
            }

            .gridview-row {
                background-color: #f9f9f9;
                color: #333;
            }

            .gridview-altrow {
                background-color: #e3e3e3;
                color: #333;
            }

            .Center {
                padding-right: 15px;
            }

        </style>

            
        <asp:GridView ID="grdsubscribersdetails" Visible="true" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="10" CssClass="gridview-style" AllowSorting="true" Width="82%" Style="margin-top: 8rem; margin-left: 16rem">
            <HeaderStyle CssClass="gridview-header" />
            <RowStyle CssClass="gridview-row" />
            <AlternatingRowStyle CssClass="gridview-altrow" />
            <EmptyDataRowStyle Height="100px" HorizontalAlign="Center" CssClass="datatable table table-hover table-center mb-0" />
           
            <Columns>

                <asp:TemplateField HeaderText="SI NO">

                    <ItemTemplate>
                       
                        <asp:Label ID="ibl_SubId" runat="server" Text='<%# Eval("SubId")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email Address">

                    <ItemTemplate>

                        <asp:Label ID="lbl_EmailAddress" runat="server" Text='<%# Eval("EmailAddress")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Subcription Date">

                    <ItemTemplate>

                        <asp:Label ID="lbl_subdate" runat="server" Text='<%# Eval("SubcriptionDate" ,"{0:dd/MM/yyyy}")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Is Active">

                    <ItemTemplate>

                        <asp:Label ID="lbl_IsActive" runat="server" Text='<%# Eval("IsActive")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>

</asp:Content>
