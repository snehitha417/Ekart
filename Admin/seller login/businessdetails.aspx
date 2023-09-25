<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="businessdetails.aspx.cs" Inherits="Admin.seller_login.businessdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title> business details</title>

</head>
   
    <body>

      <div class="container">
         <div class="card bg-info shadow" style="border: none; text-align: center; margin-left: 292px; margin-top: 74px;  width: 32rem; 
                  height: auto; border-radius: 16px;">

           <div class="card "  style="margin: 0.5rem; border: none;border-radius: 6px; height:auto;">
            <div class="row mt-3">
                <div class="col-lg-12 mt-3">
                    <h2><i class="gb ">Give Your Business Details</i></h2>
                </div>
            </div> <br />
     
    
          <form id="form1" runat="server">  
                <div class="row">
                   <div class="col-lg-12">
                    <asp:RadioButtonList ID="radioButtonList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="radioButtonList_SelectedIndexChanged">

                              <asp:ListItem   enabled="true"  Text="I have a GSTIN"  Value="option1"  style="margin-left: -159px;"  > </asp:ListItem>
                              <asp:ListItem   enabled="true"  Text ="I will only sell in GSTIN expect categories like bulbs" style="margin-left: 99px;"  Value="option2" ></asp:ListItem>
                              <asp:ListItem   enabled="true"  Text="I have applied / will apply for a GSTIN"  Value="option3"></asp:ListItem>

                    </asp:RadioButtonList>
                      <br /></div>

          <!--------------------------radio  btn 1 fields starts here  ------------------------>
                      
                        <div class="col-lg-9" >
                       <asp:Label runat="server" ID="Label1" class="pn" Visible="false" style="margin-left: -51px;">Enter GSTIN Number </asp:Label>
                             <asp:TextBox ID="input1" runat="server"  style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem; margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio"  Visible="false" ></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Visible="false" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                   <div>
                      <asp:Button ID="Button1" runat="server" Visible="false" Text="Continue" OnClick="btncontinue"  Style="height: 40px; width: 20.5rem; margin-left: 67px; margin-top: 21px; border-radius:3px; background-color: #17a2b8; border:none;  color: white;" />  
                </div>
                            <br />
                </div>   
            <!--------------------------radio  btn 1 fields ends  here  ------------------------>


              <!--------------------------radio  btn 2 fields starts here  ------------------------>
               <div id="myDiv" runat="server" visible="false">
                    <div class="col-lg-9">
                        <asp:Label runat="server" ID="bussname" class="pn"  style="margin-left: -21px;">Enter your business name</asp:Label>
                             <asp:TextBox ID="input2" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                    </div>
                   

                   <div class="col-lg-9">
                        <asp:Label runat="server" ID="panno" class="pn" style="margin-left:-41px;">Enter pancard Number </asp:Label>
                             <asp:TextBox ID="TextBox1" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>
                   <div class="col-lg-9">                     
                       <asp:Label runat="server" ID="busstype" class="pn" style="margin-left: -12px;">Enter choose business type</asp:Label>
                             <asp:TextBox ID="TextBox2" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>                 
                    <div class="col-lg-9">
                        <asp:Label runat="server" ID="room" class="pn" style="margin-left: -21px;">Enter room/floor/building </asp:Label>
                             <asp:TextBox ID="TextBox3" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>     

                    <div class="col-lg-9">
                        <asp:Label runat="server" ID="street" class="pn" style="margin-left: 3px;">Enter street/locality/landmark </asp:Label>
                             <asp:TextBox ID="TextBox4" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>
                          

                        <div class="col-lg-9">
                        <asp:Label runat="server" ID="pincode" class="pn" style="margin-right: 104px;">Enter Pincode</asp:Label>
                             <asp:TextBox ID="TextBox5" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem; margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>
                           

                   <div class="col-lg-9">
                        <asp:Label runat="server" ID="state" class="pn"  style="margin-right: 165px;">State</asp:Label>
                             <asp:TextBox ID="TextBox6" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>


                         <div class="col-lg-9">
                        <asp:Label runat="server" ID="county" class="pn" style="margin-right: 149px;">Country</asp:Label>
                             <asp:TextBox ID="TextBox7" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 20.5rem;  margin-left: 67px;
                                                    box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                       </div>
                          
                      <div>
                        <asp:Button ID="Button2" runat="server" Text="Continue" OnClick="btncontinue"  Style="height: 40px;   width: 20.5rem; margin-right: 29px; margin-top: 21px; border-radius:3px; background-color: #17a2b8; border:none;  color: white;" />  
                     </div>
                    <br />
                            </div>

                
         
                <!--------------------------radio  btn 3 fields starts here  ------------------------>
                  <div class="col-lg-9">
                       
                     <asp:Label runat="server" ID="Label3" class="pn" Visible="false" style=" margin-left: 65px; ">I have applied / will apply for a GSTIN </asp:Label>
                             <asp:TextBox ID="input3" runat="server" style="border-radius: 5px;  height: 2.2rem;  width: 22.5rem;
                                  margin-left: 69px; margin-left: 67px;  box-shadow: 0 0 5pt 0.5pt #D3D3D3;border: solid 1.5px #D3D3D3;" ValidationGroup="clickradio" Visible="false"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Visible="false" ControlToValidate="input1" ForeColor="Red" ErrorMessage="Please Enter your PAN Number" ValidationGroup="clickradio" >
                      </asp:RequiredFieldValidator>
                           <br/>
                    <div>
                       <asp:Button ID="Button3" runat="server" Visible="false" Text="Continue" OnClick="btncontinue"  Style="height: 40px; width: 22.5rem; margin-left: 67px; margin-top: 21px; border-radius:3px; background-color: #17a2b8; border:none;  color: white;" />  
             <br />      </div>
                       </div> 
                      
                    </div>
                  <br />
    </form>     
   </div></div></div>
         
       
  
</body>
</html>
