<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentSuccesfull.aspx.cs" Inherits="Admin.E_cart.PaymentSuccesfull" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet" />
    <link href="../banner/logo.jpeg" type="../banner/logo.jpeg" rel="icon" />
    <title>GVR-E-CART</title>
    <style>
        body {
            text-align: center;
            padding: 40px 0;
            background: #d6d6d7;
            /*background: #EBF0F5;*/
        }

        h1 {
            color: #88B04B;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-weight: 900;
            font-size: 25px;
            margin-bottom: 10px;
        }

        p {
            color: #404F5E;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-size: 20px;
            margin: 0;
        }

        i {
            color: #9ABC66;
            font-size: 100px;
            line-height: 200px;
            margin-left: -15px;
        }

        .card {
            background: white;
            padding: 60px;
            border-radius: 4px;
            box-shadow: 0 2px 3px #C8D0D8;
            display: inline-block;
            margin: 0 auto;
        }

        .cardfailure {
            background: #ffffff;
           
            border-radius: 4px;
            box-shadow: 0 2px 3px #C8D0D8;
            display: inline-block;
            margin: 0 auto;
            color: red;
            width: 36rem;
            font-size: 29px;
            height: 17rem;
            visibility:hidden;
        }

        .failbtn {
            border: none;
            background-color: red;
            width: 25rem;
            height: 25px;
            color: white;
            margin-top: 25px;
        }
    </style>
</head>

<body>

    <div class="card" id="success">
        <div style="border-radius: 200px; height: 200px; width: 200px; background: #F8FAF5; margin: 0 auto;">
            <i class="checkmark">✓</i>
        </div>
        <h1>Payment Success</h1>
        <p>We received your Order request</p>

         <h3 >
               <asp:PlaceHolder ID="userId_label" runat="server">
                <%=HttpContext.Current.Session["UserId"] %>, </asp:PlaceHolder> 
              Your Order Has been Placed Successfully
         </h3> 
  
       

       <span style="color:#88b04b;">View Your Invoice &nbsp;&nbsp;&nbsp; <a href ="InvoicePrint.aspx">View </a></span>

            
    </div>
    <br />
    <br />


    <!--------------success ends here----------->

    <div class="container">
        <div class="cardfailure">
            <h3>Oops!</h3>
                Something went wrong.
             
              <p>We while Refund your amount to your account</p>
            <button class="failbtn">Try again</button>
        </div>
    </div>

</body>
</html>

