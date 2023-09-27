<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Stocklist.aspx.cs" Inherits="Admin.WebForm5" %>

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
            <asp:Panel runat="server" ID="List" >
           <asp:ScriptManager runat="server" id="SM1"></asp:ScriptManager>
           <div class="table">
               <h1><b>Stock-List</b></h1>
<div>
    <asp:TextBox runat="server" id="txtSearch" name="search" placeholder="Search by list name" Style="width: 300px;
    height: 39px;
    border-radius: 1rem;"/>
    
        <i class="fa-solid fa-magnifying-glass" style="margin-left: -32px; margin-top: 21px;" onclick=""></i>
     <asp:Button ID="ADDItem" runat="server" Text="ADD" Class="btn-add" OnClick="ADDItem_Click" />
            </div>
        <br /><br />
             <table class="my-table" style="text-align: center; margin-left: -28px;">
  <thead >
    <tr>
      <th style="text-align: center;" id="lblseid">ID</th>
      <th style="text-align: center;">Item Name</th>
      <th style="text-align: center;">Brand Name</th>
        <th style="text-align: center;">Model Name</th>
        <th style="text-align: center;">Price</th>
        <th style="text-align:center;">Quantity</th>
        <th style="text-align:center;">Rating</th>
        <th style="text-align: center;">Edit</th>
        
    </tr>
  </thead>
                
  <tbody>
      
    <asp:Repeater  ID="gridView" OnItemCommand="gridView_ItemCommand" runat="server">
      <ItemTemplate>
        <tr >
            <td>
                <asp:Label ID="lblseid" runat="server" Text='<%# Eval("SEId") %>'></asp:Label>
            </td>
          <td> 
              <asp:Label ID="lalitm"  runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
             
          </td>
          <td>
              <asp:Label ID="lblbrname" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
              </td>
          <td>
              <asp:Label ID="lblmodel" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
              
              </span></td>
             <td>
                 <asp:Label ID="lblprice" runat="server" Text='<%# Eval("Price") %>' />
    

             </td>
            <td>
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("Quantity") %>' />


             </td>
            <td>
                <asp:Label ID="lblrate" runat="server" Text='<%# Eval("Rating") %>' /> 
            </td>
            <td><asp:Button id="btn_edit" runat="server" Text="Edit" CommandArgument='<%#Eval("SEId")%>' CommandName="edit" OnClick="click_Edit" style="width: 5rem;
    border-radius: 0.5rem; background-color: greenyellow; 
    font-weight: bold; "  onClientClick="return confirm('Are you sure you want to Edit this Item?');" AlternateText="Edit" /> 
                
                <asp:Button id="btn_remov" text="Remove" OnClick="click_remove" runat="server" style="width: 5rem;
    border-radius: 0.5rem; background-color: red; color:white;
    font-weight: bold;" onClientClick="return confirm('Are you sure you want to delete this Item?');" AlternateText="Delete"></asp:Button></td>
        </tr>
          
       
      </ItemTemplate>
    </asp:Repeater>
  </tbody>
                     
</table>
   
<asp:Panel ID="popup" runat="server" Visible="false" CssClass="alert-dark" BorderColor="LightYellow" Style="width: 17rem;
    height: 7rem;
    text-align: center;">
                   <br />
                  <span><b>Are you sure to delete item?</b></span>

                   <br />
                   <br />
                   <asp:Button runat="server" ID="btnyes" Text="YES" OnClick="btnyes_Click" style="
    width: 5rem;
    border-radius: 1rem;
    background-color: chartreuse;
    font-weight:bold;
" />
                   <asp:Button runat="server" ID="btnno" Text="NO" style="
    width: 5rem;
    border-radius: 1rem;
    background-color: red;
    font-weight:bold;
" />
</asp:Panel>       
                       
               </div>
                </asp:Panel>
    </form>
           <br />
            <br />
            
            <!--------------------------snippetts starts here---------------->

                   <div class="container-fluid footer p-lg-8 mt-lg-8 bg-light">
                    <div class="row  text-dark ">
                
                        <div class="col-lg-3">
                           <h4 class="ser text-dark mt-lg-3"> Popular Search</h4>
                           <p>  About us  </p>
                           <p>  Offers </p>
                           <p>  Products</p>
                           <p>  Contact us </p>
                           <p>  Privacy Policy</p>
                           <p>  Terms & Conditions</p>
                       </div>
                          
                        <div class="col-lg-3">
                           <h4 class="ser mt-lg-3 text-dark">Account</h4>           
                           <p>  My Account </p>
                           <p>  Orders</p>    
                           <p>  Address</p>
                           <p>  Shipping & Delivery</p>
                           <p>  Refund Policy</p>
 
                        </div>
                 
                        <div class="col-lg-3">
                            <img src="media/images/logo bb png.png" alt="" class="img-fluid mt-lg-3 w-25"/>
                            <h6>GVR INFO SYSTEM</h6> 
                             <a href="sellerscreen.aspx" class="btn btn-secondary text-white mt-3p-2" role="button" style="width: 152px; width: 152px;
                                 height: 42px; border-radius: 3px;">Become a Seller</a>

                            <h4 class="new text-dark">Subscribers</h4>
                            <b>Email</b>
                            <input type="email" placeholder=" Enter Email" id="email" class="form-control corner"/>
                            <button class="btn btn bg-info text-white mt-lg-2" >Submit</button> 
                            <br />
                     
                        </div> 
                         <div class="col-lg-3">
                              <img src="../Images/logo.png" alt="" class="image-fluid  logo1 "   style="width: 193px; height: 82px; margin-left: 75px;margin-top: 90px"; />     
                         </div>

                    </div>  </div> 
                
                   <div class="container-fluidcpy mt-lg-3 ">
                       <p class="ft text-center bg-dark text-white p-lg-2">© All Rights Reserved by electronic.com </p>
                   </div>

                  
                 <!--------------------------snippetts ends  here---------------->
        </div>
           
    </div>
  
</asp:Content>

