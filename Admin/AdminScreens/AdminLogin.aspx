<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Admin.AdminScreens.AdminLogin" %>

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
    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />

    <title>Admin Login</title>
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
        .card {
            width: 1000px;
            height: 400px;
            margin-top: 9rem;
            margin-left: 3rem;
        }
    </style>
</head>


<body class="bg-warning" >
    <form runat="server">
        <div class="container" style="margin-top: 5rem">
            <div class="card shadow ">
                <div class="row ">
                    <div class="col-lg-6">
                        <img src="../Images/logo.png" class="userlogo w-75" style="margin-top: 7rem; margin-left: 4rem;" />
                    </div>


                    <div class="col-lg-6 p-5 mt-4">
                        <div class="row ml-3">
                            <asp:Label runat="server" ID="EmailId" class="EmailID" Style="margin-right: 60px;"><b>Email ID</b></asp:Label>

                            <asp:TextBox ID="txt_email" runat="server" class="form-control" ToolTip="Enter Email Id" Placeholder="Please Enter Email Id " Style="border-radius: 0.4rem; width: 21rem;" ValidationGroup="log" />

                            <asp:RequiredFieldValidator ID="EId" runat="server" ControlToValidate="txt_email" ErrorMessage="Please Enter Email Id " ForeColor="Red" />
                        </div>

                        <div class="row  ml-3 ">
                            <asp:Label runat="server" ID="newpassword" class=" Password" Style="margin-right: 60px;"> <b> Password  </b></asp:Label>
                            <asp:TextBox ID="txt_psw" runat="server" class="form-control" TextMode="Password" ToolTip="Enter Your Password" Placeholder="Please Enter Your Password" Style="border-radius: 0.4rem; width: 21rem;" ValidationGroup="log" />

                            <asp:RequiredFieldValidator ID="refpass" runat="server" ControlToValidate="txt_psw" ErrorMessage="Please Enter Your Password" ForeColor="Red" />
                        </div>
                        <br />

                        <div class="row ml-3">
                            <div class="col-lg-6">

                                <asp:Button ID="btn_log" runat="server" Text="Login" OnClick="btn_log_Click" Class="btn btn-theme" Style="background-color: #f6a21c; border-radius: 0.5rem; margin-left: 60px; width: 9rem; color: white" />

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
