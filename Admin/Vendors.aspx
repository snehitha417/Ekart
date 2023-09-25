<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Vendors.aspx.cs" Inherits="Admin.Vendors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    
     <style>
      tr:hover {background-color: #F9F5F6;}
      /*97D2EC*/
</style>



     <div class="mainbody">
        <div class="container mt-4"> 
             <div class="ag"><h3>Vendors list</h3></div>
               <a href="Dashboard.aspx" <button class="btn bg-success float-lg-right text-white">

               <i class="fa-solid fa-arrow-left" style="color: #ffffff;"></i> <b >Back</b> </button> </a>
            <br />
             <!---------------------GRID VIEW-----------------------------> 

           <asp:Panel ID="pnl_Customers" runat="server">
                 <div class="container data"  style="width:100%";>
                     <br />
                     <br />
                  <asp:GridView ID="gridview" runat="server" AutoGenerateColumns="False"   cssclass="table table-bordered  table-condensed table-striped  " style="width: 78rem; margin-top: -30px; " OnSelectedIndexChanged="gridview_SelectedIndexChanged">
                      <Columns>
                          <asp:TemplateField HeaderText="First Name">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label1" runat="server"  Text='<%# Bind("FirstName") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Last Name">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Email Id">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Mobile No">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="User Id">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label5" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>

                        </asp:GridView>
                     <br />
                    </div>
                </asp:Panel>
                </div>
   
          

    <!--------------------- ends here--------------------------->
         
  <%--  <table class="table mt-4" >
    <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Email Id</th>
      <th scope="col">Full Name</th>
      <th scope="col">Mobile no</th>
      
      <th scope="col">Action</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>snehitha.k@gmail.com</td>
      <td>kawade</td>
      <td>6784592130</td>
       
        <td><button>Active </button></td>
    </tr>
       <!-------------------->
    <tr>
      <th scope="row">2</th>
      <td>minitha@gmail.com</td>
      <td>kawade</td>
      <td>9784561238</td>
      
         <td><button>Active </button></td>
    </tr>
       <!-------------------->
    <tr>
      <th scope="row">3</th>
      <td>john@gmail.com</td>
      <td>madhu</td>
      <td>9457861230</td>
       
         <td><button>Active </button></td>
    </tr>
    <!-------------------->
     <tr>
      <th scope="row">4</th>
      <td>jack@gmail.com</td>
      <td>Raman</td>
      <td>7845961230</td>
         
        <td><button>Active </button></td>
    </tr>
       <!-------------------->
       <tr>
      <th scope="row">5</th>
      <td>nick@gmail.com</td>
      <td>kittu</td>
      <td>8475963240</td>
         
        <td><button>Active </button></td>
    </tr>
  </tbody>
</table>
             </div> </div>--%>
               <!---------------------GRID VIEW-----------------------------> 


     </div>
</asp:Content>
