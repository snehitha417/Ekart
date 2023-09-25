<%@ Page Title="" EnableEventValidation="false"  Language="C#" MasterPageFile="~/AdminScreens/Admin.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Admin.AdminScreens.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <style>
        .cust {
            margin-left: 150px;
            margin-top: 20px;
            margin-top: 84px;
        }

        .Container {
            max-width: 1200px;
            width: 100%;
            margin-left: 149px;
            margin-top: 30px;
        }

        .Search {
            margin-left: 120px;
        }
        .data{
            margin-top:12px;
            margin-left:102px;
        }

        .inactive{

           margin-left: 543px;
            color: Red;
            font-size: 38px;
            margin-top: -5px;
               }
        .act{
            margin-left:200px;
            float:right;
        }
       
        
    </style>

   
        <div class="bodymain">
            <div class="Container">
                <div class="cust">
                    <h2 class="text-dark">All Customers Details</h2>
                </div>


            <!----------button-------------->
                  <asp:Panel ID="Panel2" runat="server">
              <div class="row justify-content-end">
                  <div class="col-lg-1">
                    <asp:Button runat="server" ID="Active" Text="Active Customers"  Class="btn btn-success text-white act"  OnClick="Active_Click"    />

              </div>  

              <div class="col-lg-3">
                    <asp:Button runat="server" ID="Inactive" Text="InActive Customers" Class="btn btn-danger text-white" style="margin-left: 267px;" OnClick="Inactive_Click" />

              </div></div>
      
               </asp:Panel>

            <!----------button-------------->
          <!---------------------GRID VIEW-----------------------------> 

                 <asp:Panel ID="pnl_Customers" runat="server">
                 <div class="container data"  style="width:100%";>
                     <br />
                     <br />
                  <asp:GridView ID="gridview" runat="server" AutoGenerateColumns="False"   cssclass="table table-bordered  table-condensed table-striped  " style="width: 78rem; margin-top: -30px; ">
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
         




              <asp:Panel ID="Panel3" runat="server">
                  <div class="container" style=" margin-left:240px";>
                     <asp:GridView ID="gridview1" runat="server"  visible="false"  cssclass="table table- table-bordered" style="width: 78rem; margin-top: 10px;" AutoGenerateColumns="False"  >
                      <Columns>
                          <asp:TemplateField HeaderText="First Name">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label6" runat="server"  Text='<%# Bind("FirstName") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Last Name">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label7" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Email Id">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label8" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Mobile No">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label9" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="User Id">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label10" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                            <asp:TemplateField HeaderText="DOB">
                              <EditItemTemplate>
                                  <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                              </EditItemTemplate>
                              <ItemTemplate>
                                  <asp:Label ID="Label11" runat="server" Text='<%# Bind("DOB","{0: dd/MM/yyyy}") %>'></asp:Label>
                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>

                        </asp:GridView>


                     <br />
                      </div>
                     </asp:Panel>


                      <div class="row ">
                      <asp:Label ID="labelbtn" runat="server" class="inactive" Text ="NO INACTIVE CUSTOMERS" Visible="false" ForeColor="Red" ></asp:Label>
                    </div>   

            </div>


</asp:Content>
