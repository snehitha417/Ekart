<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Activeitemslist.aspx.cs" Inherits="Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      tr:hover {background-color: #F9F5F6;}
      /*97D2EC*/
</style>
  

  <div class="mainbody">
        <div class="container mt-2"> 
             <div class="ai" ><h3>Active Item Groups</h3> </div>
          <a href="Items.aspx" <button class="btn bg-success float-lg-right text-white">
               <i class="fa-solid fa-arrow-left" style="color: #ffffff;"></i><b >Back</b> </button> </a>
            <br />
    <table class="table mt-4" >
    <thead>
    <tr>
      <th scope="col">Id </th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Brand</th>
      <th scope="col">Image</th>
      <th scope="col">Active stock</th>
      <th scope="col">Action</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
        <td>@mdo</td>
        <td>Active</td>
        <td><button>Add </button>&nbsp<button>edit </button> </td>
    </tr>
       <!-------------------->
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
        <td>@mdo</td>
         <td>Active</td>
        <td><button>Add </button>&nbsp<button>edit </button> </td>
    </tr>
       <!-------------------->
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
        <td>@mdo</td>
      <td>Active</td>
        <td><button>Add </button>&nbsp<button>edit </button> </td>
    </tr>
    <!-------------------->
     <tr>
      <th scope="row">4</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
           <td>@mdo</td>
         <td>Active</td>
        <td><button>Add </button>&nbsp<button>edit </button> </td>
    </tr>
       <!-------------------->
       <tr>
      <th scope="row">5</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
           <td>@mdo</td>
         <td>Active</td>
        <td><button>Add </button>&nbsp<button>edit </button> </td>
    </tr>
  </tbody>
</table>
             </div> </div>
       
    
</asp:Content>
