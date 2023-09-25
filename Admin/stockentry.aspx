<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stockentry.aspx.cs" Inherits="Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="bodymain">
        <style>
    .card {
        margin-left: 45px;
        height: 521px;
        margin-top: -38px;
        border: 1px solid #ccc;
        border-radius: 4px;
        padding: 10px;
        width: 1244px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .card1{
    margin-left: -17px; 
    height: 632px;
    margin-top: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 10px;
    width: 1354px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .card-header {
        background-color: #f5f5f5;
        padding: 10px;
        border-bottom: 1px solid #ccc;
    }
    
        .card-title {
        margin: 0;
    }
    .card-body {
        padding: 10px;
    }

</style>

   <div class="container">
        <div class="card1">
            <br />
       <h1 style="margin-left: 51px;">STOCK ENTRY DETAILS</h1>
    <br />
       <br />
       <div class="card">
   <form id="registrationForm" runat="server">
       
       <div class="col-lg-12" >
           <div class="row">
       <div class="col-md-4"> 
    <asp:label runat="server" ID="date" Height="38px" Width="236px"><b>Entry Date<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txt_date" runat="server" TextMode="Date" Height="38px" Width="236px" /> 
           <br />
      <asp:RequiredFieldValidator ID="rfvdate" runat="server" ControlToValidate="txt_date" 
          ErrorMessage="Please Enter Date" ForeColor="Red" />
  </div>
  <div class="col-lg-4">
    <asp:label runat="server" ID="Name" Height="38px" Width="236px"><b>Item Name<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtName" runat="server" Height="38px" Width="236px" />
      <br /> 
      <asp:RequiredFieldValidator ID="refNAme" runat="server" ControlToValidate="txtName"     
          ErrorMessage="Please enter Item Name" ForeColor="Red" />
  </div> 
       <div class="col-md-4">
    <asp:label runat="server" ID="item" Height="38px" Width="236px"><b>Item ID<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtitem" runat="server" Height="38px" Width="236px"  /> 
           <br />
           <asp:RequiredFieldValidator ID="rfvitem" runat="server" ControlToValidate="txtitem" 
               ErrorMessage="Please enter Item ID" ForeColor="Red" />
  </div>

           </div>
           <br />
            <div class="row">
  <div class="col-md-4">
    <asp:label runat="server" ID="Brand" Height="38px" Width="236px"><b>Brand Name<span style="color:red">*</span></b> </asp:label>
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
      <br />
      <asp:RequiredFieldValidator ID="rfvbrand" runat="server" ControlToValidate="ddbrand" 
          ErrorMessage="Please Select Brand Name" ForeColor="Red" InitialValue="0" />
      </div>
              
               
  <div class="col-md-4">
    <asp:label runat="server" ID="Model" Height="38px" Width="236px"><b>Model<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtmodel" runat="server" Height="38px" Width="236px" />
      <br />
      <asp:RequiredFieldValidator runat="server" ID="rfvmodel" ControlToValidate="txtmodel" 
          ErrorMessage="Please Enter Model" ForeColor="Red"/>
      </div>
       <div class="col-md-4">
      <asp:label runat="server" ID="quantity" Height="38px" Width="236px"><b>Quantity<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtqty" runat="server"  Height="38px" Width="236px"/>
           <br />
           <asp:RequiredFieldValidator ID="rfvqty" runat="server" ControlToValidate="txtqty" 
               ErrorMessage="Please Enter Quantity" ForeColor="Red" />
       </div>
        </div>
           <br />
           <div class="row">
        <div class="col-md-4" >
      <asp:label runat="server" ID="Cost" Height="38px" Width="236px"><b>Price<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtprice" runat="server" Height="38px" Width="236px"/>
            <br />
            <asp:RequiredFieldValidator ID="rfvprice" runat="server" ControlToValidate="txtprice" 
                ErrorMessage="Please Enter Price" ForeColor="Red" />
        </div>
    <div class="col-md-4">
      <asp:label runat="server" ID="load" Height="38px" Width="236px"><b>Load No<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtLadno" runat="server" Height="38px" Width="236px"/>
        <br />
        <asp:RequiredFieldValidator ID="rfvLoad" runat="server" ControlToValidate="txtLadno" 
            ErrorMessage="Please Enter Load Number " ForeColor="Red" />
        </div>  
    <div class="col-md-4">
         <asp:label runat="server" ID="file" Height="38px" Width="236px"><b>Upload Image<span style="color:red">*</span></b></asp:label>
       <asp:FileUpload ID="fileUpload" runat="server" alt="Priview" AllowMultiple="true" />
        <asp:HiddenField ID="hdnuploadfilename" runat="server" />

        <asp:Button ID="btnUpload" runat="server" Text="Upload"  OnClick="btnUpload_Click"  Style="background-color: blueviolet;
    color: white;
    border-radius: 11px;
    border: none;
    margin-left: -70px;
" />
  </div>  
               </div> 
             <div class="row">
        <div class="col-md-4" >
      <asp:label runat="server" ID="lbldes" Height="38px" Width="236px"><b>Description<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtDes" runat="server" Height="38px" Width="236px"/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDes" 
                ErrorMessage="Please Enter Description" ForeColor="Red" />
        </div>
                  <div class="col-md-4" >
      <asp:label runat="server" ID="Label1" Height="38px" Width="236px"><b>Rating<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtrate" runat="server" Height="38px" Width="236px"/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrate" 
                ErrorMessage="Please Enter Rating" ForeColor="Red" />
        </div>
                  <div class="col-md-4" >
      <asp:label runat="server" ID="Label2" Height="38px" Width="236px"><b>Offer's<span style="color:red">*</span></b></asp:label>
    <asp:TextBox  ID="txtOff" runat="server" Height="38px" Width="236px"/>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOff" 
                ErrorMessage="Please Enter Offer" ForeColor="Red" />
        </div>
                 </div>
           <br />
        <div > 
         
    <asp:Button ID="btnRegister" runat="server" Text="Submit" OnClick="btnRegister_Click"  Style="height: 40px;
    text-align: center;
    width: 118px;
    margin-left: 29rem;
    margin-top: -1rem;
    background-color: #2fcdff;
    border-radius: 44px;
    color: white;
    border: none;" />
           
  </div>
           </div>
           
</form></div></div>
        </div>
    </div>
</asp:Content>
