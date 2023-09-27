<%@ Page Title="" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewEvent.aspx.cs" Inherits="Admin.AdminScreens.AddNewEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    <div id="frm" class="continer" style="margin-top: 10rem; margin-left: 23rem;">

            <h1 style="margin-top: -4rem; margin-left: 8rem;">Add Events</h1>
            <div class="row">

                <div class="col-sm-3 ">
                    <asp:Label runat="server" ID="Ename" class="ename" Style="font-weight: bold">Event Name</asp:Label>
                    <asp:TextBox ID="txt_EventName" runat="server" Class="form-control" Style="border-radius: 0.4rem; height: 2.2rem; width: 14.5rem;"  placeholder="Please Enter Event Name" ToolTip="Please Enter Event Name" />

                    <asp:RequiredFieldValidator ID="eventname" runat="server" ControlToValidate="txt_EventName" ForeColor="Red" ErrorMessage="Please enter your First Name">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="col-sm-3">
                    <asp:Label runat="server" ID="estartdate" class="Sdate" Style="font-weight: bold">Event Start Date</asp:Label>
                    <asp:TextBox ID="txt_StartDate" runat="server" Class="form-control" TextMode="Date" Style="border-radius: 0.4rem; width: 14.5rem; height: 2.2rem;" />

                    <asp:RequiredFieldValidator ID="startdate" runat="server" ControlToValidate="txt_StartDate" ForeColor="Red" ErrorMessage="Please Enter Event Start Date ">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
            <div class="col-sm-3">
                    <asp:Label runat="server" ID="enddate" class="Edate" Style="font-weight: bold">Event End Date</asp:Label>
                    <asp:TextBox ID="txt_EndDate" runat="server" Class="form-control" TextMode="Date" Style="border-radius: 0.4rem; width: 14.5rem; height: 2.2rem;" />

                    <asp:RequiredFieldValidator ID="edate" runat="server" ControlToValidate="txt_EndDate" ForeColor="Red" ErrorMessage="Please Enter Event End Date ">
                    </asp:RequiredFieldValidator>
                </div>
            
            <!--------------------------line2  ----------------->          

                <div class="col-sm-3">
                    <div>
                        <asp:Label runat="server" ID="fileImage"><b> Upload Image<span style="color:red">*</span></b></asp:Label>
                        <asp:FileUpload ID="FileuploadImage" runat="server" AllowMultiple="true" />
                        <asp:HiddenField ID="hdnuploadfilename" runat="server" />
                        <asp:Label runat="server" ID="lblImgStatus" />

                        <asp:Button ID="upl" runat="server" CssClass="btn btn-primary" Text="upload"
                            Style="width: 100px; margin-top: 10px; border-radius: 0.4rem; height:38px;background-color:blueviolet;border:none" OnClick="upl_Click" />

                    </div>

                    </div>

                </div>
           
            <!--------------------------line3---------------------------->

            <div>

                <asp:Button ID="submit" runat="server" Class="btn btn-info" Text="Submit" OnClick="submit_Click"  style="margin-left:12rem; margin-top: 2rem; width: 8rem;font-weight:bold" />
           
                 </div>

            </div>

</asp:Content>
