<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BannerImages.aspx.cs" Inherits="Admin.BannerImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
<%--     <form runat="server">

         <div id="frm" class="continer" style =" margin-top: 7rem; margin-left: 17rem;">
               <div class="row">

                  <div class="col-sm-3 ">
                     <asp:Label runat="server" ID="Bname" class="fname" >Banner Name</asp:Label>
                     <asp:TextBox ID="txt_BannerName" runat="server" Class="form-control" style="border-radius: 13px;  height: 2.2rem; width: 14.5rem;" />
                     
                      <asp:RequiredFieldValidator ID="rfvfname" runat="server" ControlToValidate="txt_BannerName" ForeColor="Red" ErrorMessage="Please enter your First Name" >
                  </asp:RequiredFieldValidator>
                  </div>

                <div class="col-sm-3">
                     <asp:Label runat="server" ID="uploaddate" class="lname">Upload Date</asp:Label>
                     <asp:TextBox ID="txt_UploadDate" runat="server" Class="form-control" TextMode="Date" style="border-radius: 13px;   width: 14.5rem;  height: 2.2rem;"/>
                 
                    <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txt_UploadDate" ForeColor="Red" ErrorMessage="Please enter your Last Name" >
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <!--------------------------line2  ----------------->

            <div class="row">
                <div class="col-sm-3">
                     <asp:Label runat="server" ID="cont" class="cont">Content</asp:Label>
                     <asp:TextBox ID="txt_Content" runat="server" Class="form-control"  style="border-radius: 13px; width: 14.5rem;  height: 2.2rem; " />
                    
                    <asp:RequiredFieldValidator ID="rfvEmailid" runat="server"  ControlToValidate="txt_Content"  ForeColor="Red" ErrorMessage="please enter content" >
                    </asp:RequiredFieldValidator>

<%--                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid email Format"></asp:RegularExpressionValidator>--%>

             <%--   </div>

           <div class="col-sm-3">
                    <div>
               <asp:label runat="server" ID="fileImage"><b> Upload Image<span style="color:red">*</span></b></asp:label>  
               <asp:FileUpload ID="FileuploadImage" runat="server"   AllowMultiple="true" />  
                        <asp:HiddenField ID="hdnuploadfilename" runat="server" />
                <asp:Label runat="server" ID="Label1"/>
         
               <asp:Button ID="upl" runat="server" CssClass="btn btn-primary" Text="upload" 
                     style=" width: 76px; margin-top: 10px; border-radius: 0.4rem;"/>

              
          </div>
                   
                </div>
            </div>
  
                 <!--------------------------line3---------------------------->
  
                
       <asp:Button ID="submitt" runat="server" Class="btn btn-info" Text="Submitt"  OnClick="submitt_Click_bann" />
              
                    </div>
    </form>--%>

</asp:Content>
