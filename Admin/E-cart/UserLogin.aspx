<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Admin.E_cart.UserLogin" %>

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
    <title>GVR-login</title>
    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />


    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;

            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }

            return true;
        }
    </script>
    <style>
        .userlogo {
            /*position: absolute;
         margin-left: -65px;
         margin-top: -511px;*/
            width: 95px;
        }

        .sub {
            width: 80px;
            border: none;
            border-radius: 4px;
        }

        .Password {
            margin-left: -22px;
        }
    </style>


</head>
<body>
    <!----------------NAV BAR START HERE------------------------->

    <div class="container-fluid">
        <nav class="navbar fixed-top navbar-expand-sm bg-white  shadow ">
            <a href="#" class="navbar-brand text-dark">
                <img src="../Images/logo.png" alt="" class="image-fluid  logo1 " style="width: 156px; height: 50px; margin-left: 75px;" /></a>
            <div class="collapse navbar-collapse  justify-content-end" id="snehith">
                <div class="collapse navbar-collapse justify-content-end" id="snehitha">
                    <ul class="navbar-nav ">
                       <li class="nav-item"> <a href="UserLogin.aspx"  class="nav-link  text-white btn btn-success    ml-lg-5 p-2 "  style="width:95px;  border-radius: 0.4rem; " >Login</a></li>
                          <li class="nav-item">  <a href="Registration.aspx" class="nav-link  text-white btn btn-warning  bn ml-lg-5 p-2" style="width:95px;   border-radius: 0.4rem; " >Register</a></li>
                      
                    </ul>
                </div>
            </div>
        </nav>
    </div>

  

    <!----------------NAV BAR ENDS HERE------------------------->

    <!----------------FORM HEADING HERE------------------------->

    <br />

    <!-------------------FORM---- START HERE--------->


    <div class="container mt-5">
        <div class="card bg-white " style="border: none; text-align: center; margin-left: 292px; margin-top: 74px; width: 28rem; height: auto; border-radius: 16px;">

            <div class="row frm mt-2">
                <div class="col-lg-12">
                    <%-- <h2 class=" text-info mt-4" style="color: #36ace2;"> User Login</h2>--%>
                    <img src="../seller%20login/images/user.png" class="userlogo" />
                </div>
            </div>
            <br />

            <form runat="server">
                <div class="row ">
                    <div class="col-lg-6 ">
                        <asp:Label runat="server" ID="userid" class="userid">User Id</asp:Label>
                        <asp:TextBox ID="txt_Userid" runat="server" class="form-control" Style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;" ValidationGroup="log" />

                        <asp:RequiredFieldValidator ID="refId" runat="server" ControlToValidate="txt_Userid" ErrorMessage="Please Enter User Id " ForeColor="Red" ValidationGroup="log" />

                    </div>
                </div>


                <div class="row ">
                    <div class="col-lg-7 ">
                        <asp:Label runat="server" ID="newpassword" class=" Password"> Password</asp:Label>
                        <asp:TextBox ID="txt_Password" runat="server" class="form-control" TextMode="Password" Style="border-radius: 4px; height: 2.2rem; width: 18.5rem; margin-left: 76px;" ValidationGroup="log" />

                        <asp:RequiredFieldValidator ID="refpass" runat="server" ControlToValidate="txt_Password" ErrorMessage="Please Enter new Password" ForeColor="Red" ValidationGroup="log" />

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-7">
                        <asp:HyperLink runat="server" ID="forget" Text="Forget Password? " NavigateUrl="../forgetpassword.aspx" Style="margin-left: 4rem; font-size: large;"> 
                        </asp:HyperLink>

                    </div>
                </div>



                <div class="row ">
                    <div class="col-lg-9 ">
                        <asp:Button ID="btnlog" runat="server" Text="Log In" Style="height: 2.2rem; width: 18.5rem; text-align: center; margin-left: 75px; background-color: #36ace2; color: white; border: none; border-radius: 4px;"
                            OnClick="btn_ulog" ValidationGroup="log" />

                    </div>
                </div>

                <br />
                <p style="margin-left: 1rem;">
                    If You Don't have account Click here   
                     
 
                      <asp:HyperLink runat="server" ID="SignUp" Text="Sign Up" NavigateUrl="userReg.aspx"></asp:HyperLink>
                </p>
                <br />

            </form>

        </div>

        <div></div>
    </div>

</body>
</html>
