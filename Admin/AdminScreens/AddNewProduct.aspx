<%@ Page Title="" Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="Admin.AdminScreens.AddNewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <style>

  .TextBox1[type=text], textarea {         
      transition: all 0.30s ease-in-out;         
      outline: none;         
      border: 1px solid #666666;         
  } 
               
  .TextBox1[type=text]:focus, textarea:focus {         
      box-shadow: 0px 0px 5px #66FF99;         
      padding: 2px 0px 2px 2px;         
      margin: 2px 1px 3px 1px;         
      border: 1px solid #009900;         
  }

    </style>

      <div class="container" style="margin-left: 16rem; margin-top: 6rem;">

         <%--<div class="card shadow" style="border: none;  width: 70rem;
                  height: auto; border-radius: 16px;  height:auto;     margin-top: 91px;
                    margin-left: 84px;">--%>

               <div class="header" >
                     <h3  style=" margin-left: 125px;margin-left: 368px; height: 60px;" ><b>Add New Product </b></h3>
               </div> 
     <!------------------------------form--------------------------->              
           
             <div id="frm" class="continer p-3">
               
                   <div class="row ml-1">
                  
                  <div class="col-sm-4 "> 
                       <asp:Label runat="server" ID="date" class="fname" Style="font-weight:bold" >Entry date</asp:Label>
                     <asp:TextBox ID="txt_entrydate" runat="server" Class="form-control" TextMode="Date" style="border-radius: 0.4rem;  height: 2.2rem; width: 17.5rem;" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_entrydate" ForeColor="Red" ErrorMessage="Please date" >
                  </asp:RequiredFieldValidator>
                  </div>

      <!------------------->

                <div class="col-sm-4 ">
                      <asp:Label runat="server" ID="Label6" class="lname" Style="font-weight:bold">Product Name</asp:Label>
                     <asp:TextBox ID="txt_productName" runat="server" Class="form-control" style="border-radius: 0.4rem; width: 17.5rem; height: 2.2rem;"/>
                                 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_productName" ForeColor="Red" ErrorMessage="Please enter Product Name" >
                    </asp:RequiredFieldValidator>
                </div>
          
       <!-------------------> 

              <div class="col-sm-4 ">
                  <asp:Label runat="server" ID="Label2" class="email" Style="font-weight:bold"> Product Price </asp:Label>
                   <asp:TextBox ID="txt_productprice" runat="server" Class="form-control"  style="border-radius: 0.4rem; width: 17.5rem; height: 2.2rem; " />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="txt_productprice"  ForeColor="Red" ErrorMessage="please enter Product Price" >
                    </asp:RequiredFieldValidator>
                </div>
          </div>
 <!-------------------> 

                      <div class="row ml-1">

                <div class="col-sm-4 ">
                     <asp:Label runat="server" ID="Label3" class="pn" Style="font-weight:bold"> Discount </asp:Label>
                    
                     <asp:TextBox ID="txt_discount" runat="server" Class="form-control"  style="border-radius: 0.4rem; width: 17.5rem;  height: 2.2rem;"/>
                      
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_discount" ForeColor="Red" ErrorMessage="Please enter your Phone Number " >
                    </asp:RequiredFieldValidator>
                </div>
                 
               
            <!--------------------------ROW -2 starts here  ----------------->
                      <div class="col-sm-4 ">
                       <asp:Label runat="server" ID="Label7" class="pn" Style="font-weight:bold"> Model</asp:Label>
                    
                     <asp:TextBox ID="txt_modal" runat="server" Class="form-control" style="border-radius: 0.4rem; width: 17.5rem;  height: 2.2rem;"/>
                      
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_modal" ForeColor="Red" ErrorMessage="Please enter your Phone Number " >
                    </asp:RequiredFieldValidator>
                </div>
                 
                 <div class="col-sm-4 ">
                      <asp:Label runat="server" ID="Label10" class="lname" Style="font-weight:bold">Brand </asp:Label>
                      <asp:TextBox ID="txt_brand" runat="server" Class="form-control" style="border-radius: 0.4rem;  width: 14.5rem; width: 17.5rem;"/>
                
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txt_brand" ForeColor="Red" ErrorMessage="Please enter your industry" >
                     </asp:RequiredFieldValidator>
                </div>

                 </div>

                <!------------------------->

                <div class="row ml-1">

                    <div class="col-sm-4 ">
                      <asp:Label runat="server" ID="Label9" class="lname" Style="font-weight:bold">Description  </asp:Label>
                      <asp:TextBox ID="txt_descrip" runat="server" Class="form-control" style="border-radius: 0.4rem;   width: 14.5rem;     width: 17.5rem;"/>
                
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_descrip" ForeColor="Red" ErrorMessage="Please enter your industry" >
                     </asp:RequiredFieldValidator>
                </div>

                 <div class="col-sm-4 ">
                      <asp:Label runat="server" ID="ind" class="lname" Style="font-weight:bold">Additional Information</asp:Label>
                      <asp:TextBox ID="txt_addinf" runat="server" Class="form-control" style="border-radius: 0.4rem;   width: 14.5rem;     width: 17.5rem;"/>
                
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_addinf" ForeColor="Red" ErrorMessage="Please enter your industry" >
                     </asp:RequiredFieldValidator>
                </div>
          
                   <!------------------------->

                    <div class="col-sm-4 ">
                       <asp:Label runat="server" ID="Label4" class="fname" Style="font-weight:bold">Rating </asp:Label>
                       <asp:TextBox ID="txt_rating" runat="server" Class="form-control" style="border-radius:0.4rem;  height: 2.2rem;    width: 17.5rem;" />
                   
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_rating" ForeColor="Red" ErrorMessage="Please enter your Company Name" >
                  </asp:RequiredFieldValidator>
                  
                    </div>

                </div>
           
                      <!------------------------->
                 
       <div class="col-sm-4">
                
               <asp:label runat="server" ID="fileImage"><b> Upload Image<span style="color:red">*</span></b></asp:label>  
               
                        <asp:HiddenField ID="hdnuploadfilename" runat="server" />
                <asp:Label runat="server" ID="Label1"/>
         <asp:FileUpload ID="FileuploadImage" runat="server" AllowMultiple="true" />
                <asp:Button ID="upl_img" runat="server" Text="upload" CssClass="btn btn-primary" OnClick="Product_upl_Click" 
                     style=" width:100px; margin-top: 10px; height: 38px; border-radius: 0.4rem; background-color:blueviolet; font-weight:bolder; border: none"/>

          </div> </div>

               <div>
                <asp:Button ID="Button1" runat="server" Class="btn btn-info" Text="Submitt"  OnClick="Product_submitt_Click" Style="margin-left: 445px; width: 170px; height:55px; font-weight:bold"   />
               
              </div>
               <br />
               <br />
     
             <%--</div>--%>
          </div>

</asp:Content>
