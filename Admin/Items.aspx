﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="Admin.Items1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    .items {
        margin-left: 50px;
    }
    .list-group-item{
    position: relative;
    display: block;
    padding: 0.75rem;
    background-color: none;
    border: 0px solid rgba(0,0,0,.125);
    }
    
        
</style>

    <div class="mainbody">
        <div class="container mt-2">
          <p class="list-group-item dropdown-toggle " data-toggle="dropdown">All Item Groups </p>
             <div class="dropdown-menu">
                 <a href="Allitemsgroup.aspx"  class="dropdown-item">All Item Groups </a>  
                 <a href="Activeitemslist.aspx" class="dropdown-item">Active Item Groups</a>
                 <a href="Inactiveitems.aspx" class="dropdown-item">Inactive Item Groups</a>        
   
                  </div> </div> </div>

         <div class="container mt-5">
             <div class="row items shadow" >

               <div class="col-lg-6 bg-white p-3">
                <div class="item-section text-center">
                 <div class="item-header">
                  <b>Item groups</b>
                    <div class="item-body p-3"> 
                      <i class="fa-solid fa-layer-group fa-5x" style="color: #ff693b;"></i>              
                       <p>Create multiple variants of the same item using Item Groups</p></div>
                     
                   <button id="" class="btn btn-primary " type="submit">
               <!----> Stock Entry </button>
                </div>

         </div></div>
             
              <div class="col-lg-6 bg-white p-3 ">
                <div class=" item-section text-center">
                 <div class="item-header"><b>Stock List</b>
                    <div class="item-body"> 
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="icon icon-ultra-lg" style=" width: 123px;"><path fill="#10AAFF" d="M323.7 382.1l75.8 1.4c10.7-47.7 18.9-96.4 24.4-144.9-19.9 19.4-49.4 45.6-88.7 71.5-3.1 24.1-7 48.1-11.5 72z"></path><path d="M437.2 75.3l-226-.8c-1.3 0-2.3.5-3.1 1.4s-1.2 2-1.1 3.2c1 13.5 1.6 27.3 1.9 40.9l-91.6.1c-1.2 0-2.3.1-3.1 1-.8.9-1.2 1.9-1.1 3 3.9 52.6 2.2 105.6-5.2 157.8-7 49.3-19 98.1-35.8 145.1-.5 1.3-.3 2.7.5 3.8.8 1.1 2.1 2.3 3.4 2.4l233.1 4.9h.1c2 0 3.7-1.9 4.1-3.9 3.2-14.2 6.2-28.9 9-43.3l80.7 1.2h.1c2 0 3.7-1.3 4.1-3.2 11.4-50.1 20-101.3 25.7-152.3 5.8-51.9 8.7-104.8 8.6-157-.1-2.5-2-4.3-4.3-4.3zm-131.6 353l-188.1-3.5-35.6-.7c16-45.8 27.5-93.2 34.3-141.2 7.3-51.3 9.1-103.4 5.6-155.1l217.2.7c-.1 50.6-2.9 101.6-8.6 151.8-.1 1-.2 2-.4 3.1-5.5 48.5-13.7 97.3-24.4 144.9zm118.8-192.7c-.1 1-.2 2-.4 3.1-5.5 48.5-13.8 97.2-24.4 144.9l-75.8-1.4c4.5-23.9 8.3-48 11.5-72.1 1.3-9.6 2.5-19.2 3.6-28.8 5.8-51.9 8.7-104.8 8.6-157 0-2.3-1.9-4.2-4.2-4.2l-125.9-.4c-.2-12.2-.7-24.4-1.6-36.6l217.2.7c-.1 50.5-3 101.6-8.6 151.8z"></path><path d="M374 147.4c-.9 0-1.7.3-2.4.7-1 .7-1.7 1.9-1.7 3.2-.1 2.2 1.7 4.1 3.9 4.1l20 .6h.1c2.2 0 3.9-1.8 4-4 0-1.3-.6-2.5-1.6-3.3-.6-.5-1.4-.8-2.3-.8l-20-.5zm-5 46.9l21.3.7h.1c2.3 0 4.2-2 4.2-4.3 0-1.2-.4-2.3-1.2-3-.7-.7-1.8-1.2-2.9-1.2l-21.3-.4h-.1c-2.3 0-4.2 1.8-4.3 4.1 0 2.2 1.9 4.1 4.2 4.1zm-3.3 44.2l21.3.5h.1c2.3 0 4.2-1.8 4.3-4.1.1-2.3-1.8-4.3-4.2-4.3l-21.3-.5c-2.3 0-4.3 1.8-4.4 4.1 0 2.3 1.8 4.2 4.2 4.3z"></path><path fill="#FF693B" d="M241.2 354.9c-64.8 42.6-117.3 58.9-123.7 69.9l188.1 3.5c10.7-47.7 18.9-96.4 24.4-144.9-19.8 19.4-49.4 45.7-88.8 71.5z"></path><path d="M279.3 193.7l21.3.3h.1c2.3 0 4.2-1.7 4.3-4 .1-2.3-1.8-4.1-4.2-4.2l-21.3.1h-.1c-2.3 0-4.2 1.2-4.3 3.5 0 .6.1 1.2.3 1.7.7 1.6 2.2 2.5 3.9 2.6zm-4.2 45l21.3.3h.1c2.3 0 4.5-1.6 4.5-3.9s-1.9-4.1-4.3-4.1l-21.4-.5c-2.4 0-4.3 1.8-4.4 4.1 0 2.4 1.8 4.1 4.2 4.1zm-4.1 45.1c.2.1.5.1.7.1L293 285h.1c.3 0 .6 0 .8-.1.2-.1.5-.2.7-.3.1 0 .1-.1.2-.1.2-.1.3-.2.5-.3l.3-.3.3-.3.4-.4.2-.2c.1-.2.2-.4.3-.5 0-.1.1-.2.1-.2.1-.2.1-.3.2-.5 0-.1.1-.3.1-.4 0-.1.1-.2.1-.3 0-.2-.1-.5-.1-.7l-.2-.1c0-2.3-1.6-4.9-4-5l-21.2-.5c-2.3-.1-4.2 1.8-4.3 4.2v.2c.1 2 1.6 4.1 3.5 4.6zm-116.4-94.5l79.6 1.7h.1c2.3 0 4.2-1.7 4.3-4 .1-2.3-1.8-4.2-4.2-4.3l-79.6-1.9c-2.3-.1-4.3 1.7-4.4 4.1 0 2.5 1.8 4.3 4.2 4.4zm-1.9 44.9l75.8 1.8h.1c2.3 0 4.2-1.9 4.3-4.2.1-2.3-1.8-4.3-4.2-4.4l-75.8-1.8c-2.4 0-4.3 1.8-4.4 4.2 0 2.4 1.9 4.3 4.2 4.4zm-3.5 44.8l72.2 2h.1c2.3 0 4.2-2.1 4.3-4.4.1-2.3-1.8-4.4-4.2-4.5l-72.2-1.8c-2.3-.1-4.3 1.9-4.4 4.2 0 2.4 1.9 4.4 4.2 4.5zm.1 101.1c.2.1.4.1.6.1.8.1 1.7-.2 2.2-.7.4-.4.8-.9.8-1.5l.4-4.9.1-.6h.6c3.1-.2 5.8-1 8.1-2.2.8-.5 1.6-1 2.3-1.6 2.4-2.1 3.9-5 4.2-8.2.3-3.4-.4-6.1-2.3-8.5-1.9-2.4-4.9-4.6-9.4-6.6-6.9-3.3-10.1-5.6-9.7-9.3 0-.1 0-.3.1-.4.2-1.5 1.1-2.8 2.4-3.7 1.7-1.1 3.9-1.6 6.8-1.3.4 0 .7.1 1.1.1 2.3.3 4.5.9 6.5 1.8.3.1.7.2 1 .3 1.4.1 2.7-.6 3.3-1.9.6-1.6-.1-3.3-1.7-3.9-2.2-.9-4.6-1.5-7.6-1.9l-.8-.1.1-.7.4-4.1c.1-1.4-1.1-2.6-2.6-2.8-1.5-.1-2.9.8-3 2.2l-.4 4.5-.1.6h-.6c-2.3.2-4.4.7-6.2 1.4-1.3.6-2.6 1.3-3.6 2.2-.7.6-1.2 1.2-1.7 1.8-1.3 1.7-2.1 3.8-2.3 6.1-.2 2.5.3 4.8 1.6 6.8.4.6.8 1.1 1.3 1.7 2 2.2 5.1 4.2 9.7 6.2 4.5 2 7.2 4 8.2 6.3.5 1 .6 2 .5 3.2-.3 3.2-2.8 5.4-6.6 6-1.1.2-2.3.2-3.6.1-3.1-.3-6.1-1.1-9.1-2.5-.4-.2-.7-.3-1.2-.3-1.5-.1-2.9.7-3.4 2-.5 1.2 0 3.1 1.5 3.9 2.8 1.4 6.3 2.4 9.7 2.8l.7.1-.1.7v.5l-.4 3.9c0 1 .9 2.1 2.2 2.4z"></path></svg>
                 <p>Tweak your item prices for specific contacts or transactions</p></div>
                 <button id="" class="btn btn-primary " type="submit">Stock List</button>
                </div>

         </div>  </div>

         </div>  </div>

</asp:Content>
