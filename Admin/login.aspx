<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Admin.login" %>

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

    <title>admin login</title>

    <style>
        .sub {
            margin-left: 12rem;
            width: 8rem;
            height: 2rem;
            border-radius: 1.7rem;
            background-color: #17a2b8;
            color: white;
            border: none;
            margin-top: 25px;
            margin-left: 12rem;
            font-size: medium;
        }

        .sign {
            margin-left: 12rem;
            width: 8rem;
            height: 2rem;
            border-radius: 1.7rem;
            background-color: #17a2b8;
            color: white;
            border: none;
            margin-top: 25px;
            margin-left: 12rem;
            font-size: medium;
        }
    </style>

</head>

<body>
    <div class="container">
        <div class="card bg-light shadow" style="border: none; text-align: center; margin-left: 292px; margin-top: 74px; width: 28rem; height: 25rem; border-radius: 16px;">

            <div class="row mt-3">
                <div class="col-lg-12">
                    <h2 class="text-info">Admin Login</h2>
                </div>
            </div>
         

            <form runat="server">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        <asp:Label runat="server" ID="UserName" Text="User Id" Style="font-size: 1.25rem; margin-left: 3rem;"></asp:Label>
                        <asp:TextBox runat="server" ID="txtname" Style="margin-left: 1rem; border-radius: 0.7rem; height: 33px; width: 270px;"
                            ValidationGroup="LoginValidationGroup"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="Uname" runat="server" ControlToValidate="txtname" ErrorMessage=" Please Enter User ID" ForeColor="Red" ValidationGroup="LoginValidationGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-lg-12">
                        <asp:Label runat="server" ID="PassWord" Text="Password" Style="font-size: 1.25rem; margin-left: 1rem;"></asp:Label>
                        <asp:TextBox runat="server" ID="txtpass" TextMode="Password" Style="margin-left: 2rem; border-radius: 0.7rem; height: 33px; width: 270px;" ValidationGroup="LoginValidationGroup">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator ID="upass" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Valid Password" ForeColor="Red" ValidationGroup="LoginValidationGroup"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <asp:HyperLink runat="server" ID="forget" Text="Forget Password? " NavigateUrl="forgetpassword.aspx" Style="margin-left: 4rem; font-size: large;"> 
                        </asp:HyperLink>

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-9">
                        <asp:Button runat="server" ID="Button1" Text="Login " OnClick="btn_login" Class="sub" ValidationGroup="LoginValidationGroup" />
                    </div>
                </div>

                <br />
                <p style="margin-left: 1rem;">
                    If You Don't have account Click here   
                    <asp:HyperLink runat="server" ID="SignUp" Text="Sign Up" NavigateUrl="Sign_Up.aspx"></asp:HyperLink>
                </p>

            </form>
        </div>
    </div>
</body>
</html>
