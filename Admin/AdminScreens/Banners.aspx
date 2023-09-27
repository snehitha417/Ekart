<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="Banners.aspx.cs" Inherits="Admin.AdminScreens.Banners" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="frm" class="continer" style="margin-top: 10rem; margin-left: 23rem;">

        <h1 style="margin-top: -4rem; margin-left: 8rem;">Add Banners</h1>
        <div class="row">

            <div class="col-sm-3 ">
                <asp:Label runat="server" ID="Bname" class="fname" Style="font-weight: bold">Banner Name</asp:Label>
                <asp:TextBox ID="txt_BannerName" runat="server" Class="form-control" Style="border-radius: 0.4rem; height: 2.2rem; width: 14.5rem;" Placeholder="Please Enter Banner Name" ToolTip="Please Enter Banner Name" />

                <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txt_BannerName" ForeColor="Red" ErrorMessage="Please Enter Banner Name">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-sm-3">
                <asp:Label runat="server" ID="uploaddate" class="lname" Style="font-weight: bold">Upload Date</asp:Label>
                <asp:TextBox ID="txt_UploadDate" runat="server" Class="form-control" TextMode="Date" Style="border-radius: 0.4rem; width: 14.5rem; height: 2.2rem;" />

                <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txt_UploadDate" ForeColor="Red" ErrorMessage="Please Enter Upload Date">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <!--------------------------line2  ----------------->

        <div class="row">
            <div class="col-sm-3">
                <asp:Label runat="server" ID="cont" class="cont" Style="font-weight: bold">Content</asp:Label>
                <asp:TextBox ID="txt_Content" runat="server" Class="form-control" Style="border-radius: 0.4rem; width: 14.5rem; height: 2.2rem;" placeholder="Please Enter content" ToolTip="Please Enter content" />

                <asp:RequiredFieldValidator ID="rfvEmailid" runat="server" ControlToValidate="txt_Content" ForeColor="Red" ErrorMessage="Please Enter content">
                </asp:RequiredFieldValidator>

            </div>

            <div class="col-sm-3">
                <div>
                    <asp:Label runat="server" ID="fileImage"><b> Upload Image<span style="color:red">*</span></b></asp:Label>
                    <asp:FileUpload ID="FileuploadImage" runat="server" AllowMultiple="true" />
                    <asp:HiddenField ID="hdnuploadfilename" runat="server" />
                    <asp:Label runat="server" ID="lblImgStatus" />

                    <asp:Button ID="upl" runat="server" CssClass="btn btn-primary" Text="upload"
                        Style="width: 100px; margin-top: 10px; border-radius: 0.4rem; height: 38px; background-color: blueviolet; border: none" OnClick="upl_Click" />

                </div>

            </div>
        </div>

        <!--------------------------line3---------------------------->

        <div>

            <asp:Button ID="submitt" runat="server" Class="btn btn-info" Text="Submit" Style="margin-left: 12rem; margin-top: 2rem; width: 8rem; font-weight: bold" OnClick="submitt_Click_bann" />

        </div>
    </div>

</asp:Content>
