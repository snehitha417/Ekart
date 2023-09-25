<%@ Page Title="" Language="C#" MasterPageFile="~/seller login/USERPAGE.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="Admin.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!--------------------contact page ------------------------->

    <div class="container-fluid bg-secondary " id="contact">
        <h3 class="ab  text-center text-white mt-3 p-2" style="margin-top:3rem">Contact Us</h3>
        <h5 class="yu  text-center text-white ">If You Have Any Query, Please Contact Us </h5>



<div class="container-fluid mt-lg-2 p-2  ">
    <div class="row ml-lg-5">
    
      <div class="col-lg-6 p-3  ">
         
        <form class="contact">
    
    <div class="row  text-dark">
            <div class="col-sm-6">
                <p class="fn text-white">First Name</p>
                <input type="text" placeholder="Enter your First Name"  class="form-control corner"/>
            </div>

            <div class="col-sm-6">
                <p  class="fn text-white">Last Name</p>
                <input type="text" placeholder="Enter your Last Name"  class="form-control corner"/>
            </div>
        </div>

        <div class="row mt-lg-3 text-dark ">
            <div class="col-sm-6">
                <p  class="fn text-white">Email</p>
                <input type="email" placeholder=" Email" id="email" class="form-control corner"/>
            </div>

            <div class="col-sm-6">
                <p  class="fn text-white">Phone Number</p>
                <input type="text" placeholder="Phone Number"  class="form-control corner"/>
            </div>
        </div>
        
        <div class="row mt-lg-3 text-dark">
            <div class="col-sm-12">
                <p  class="fn text-white">Enter Message</p>
                <input type="message" placeholder="Enter a message" class="form-control corner"/>
            </div>
    
            <div class="row mt-lg-3 text-dark">
                <div class="col-sm-12">
                    <div class="col-sm-6 pr-3  text-center ">
                        <button class="btn btn-primary   text-center mt-lg-3  ">Submit</button>
                    </div>
                   
                </div>
           
        </div>   </div>   </div>  
    
     <!------------->
          
               <div class="col-lg-6 ">
                <p class="text-center  text-white"><i class="fa-solid fa-mobile-screen-button  fa-2x"></i></p>
                <p class=" text-center  text-white">+91-89777-77151</p>
                <p class="text-center  text-white"><i class="fa-solid fa-envelope  fa-2x"></i></p>
                <p class=" text-center  text-white">electrical@gmail.com</p>
                <p class="text-center  text-white "><i class="fa-solid fa-globe fa-2x"></i></p>
                <p class=" text-center mb-5 text-white">www.electrical.com</p>
            </div>
    </div> </div></div> 
</asp:Content>
