<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellerscreen.aspx.cs" Inherits="Admin.seller_login.sellerscreen" %>

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
  
    <title> Seller Screen</title>
 <style>

.bann{
    position :relative;
    }
    .ba{
        position:absolute;
        top:  273px ;
        left: 207px;
       
        padding-bottom: 20px;
        width:400px;
        height:80px;
        padding-left: 30px;
        color:white;

}

   .bann{
    position :relative;
    }
     .btn1 {
         position: absolute;
         margin-left: 249px;
         margin-top: -127px;
         color: white;
         border-radius: 11px;
         padding-top: 10px;
         padding-left: 25px;
         padding-right: 25px;
         height: 48px;
         border: none;
     }

     .bann{
    position :relative;
    }
     .btn2 {
         position: absolute;
         margin-left: 401px;
         margin-top: -127px;
         color: white;
         padding-top: 10px;
         border-radius: 11px;
         padding-left: 30px;
         padding-right: 30px;
         height: 47px;
         border: none;
         background-color: #fff;
     }


     .bann{
        position :relative;
    }
     .btn3 {
         position: absolute;
         margin-left: 540px;
         margin-top: -127px;
         color: white;
         padding-top: 10px;
         border-radius: 11px;
         padding-left: 30px;
         padding-right: 30px;
         height: 47px;
         border: none;
     }
     .logo1 {
         width: 118px;
     }

      </style> 
</head>
<body>

    <nav class="navbar fixed-top navbar-expand-sm bg-white  shadow ">
          <a href="#" class="navbar-brand text-dark">
               <img src="../Images/logo.png"  alt="" class="image-fluid  logo1 " /></a>
           <div class="collapse navbar-collapse  justify-content-end" id="snehith">
               <div class="collapse navbar-collapse justify-content-end" id="snehitha">
                   <ul class="navbar-nav ">
        
                          <li class="nav-item"> <a href="../VendorLogin.aspx"    class="nav-link  text-white btn btn-info   ml-lg-5 p-2 "  style="width:95px";  >Login</a></li>
                          <li class="nav-item"> <a href="../VendorReg.aspx" class="nav-link  text-white btn btn-warning   ml-lg-5 p-2" style="width:95px";  >Register</a></li>

<%--   <li class="nav-item"> <a href="../BusinessNeedsForm.aspx"  class="nav-link  text-white btn btn-success   ml-lg-5  " >Add your Business details</a></li>--%>
                      
                   </ul> </div>
            </div>
         </nav>
    <a href="../VendorLogin.aspx">../VendorLogin.aspx</a>

     <!------ ---------------- --------->
    
   <br /> <br /><br /><br /> <br /> <br /><br /><br />  <br /><br /><br />


    <!--------------------------snippetts starts here---------------->
                   <div class="container-fluid footer p-lg-5 mt-lg-3 bg-light">
                    <div class="row  text-dark ">
                
                        <div class="col-lg-3">
                            <h4 class="ser text-dark mt-lg-3"> Popular Search</h4>
                           <p>  About us  </p>
                           <p>  Offers </p>
                           <p>  Products</p>
                           <p>  Contact us </p>
                           <P>  Privacy Policy</P>
                           <p>  Terms & Conditions</p>
                       </div>
                          
                        <div class="col-lg-3">
                            <h4 class="ser mt-lg-3 text-dark">Account</h4>
                          
                           
                           <p>  My Account </p>
                           <p>  Orders</p>
                          
                           <p>  Address</p>
                           <P>  Shipping & Delivery</P>
                           
                           <p>  Refund Policy</p>
                      
                        </div>
                
                 
                       
                        <div class="col-lg-3">
                            <img src="media/images/logo bb png.png" alt="" class="img-fluid mt-lg-3 w-25"/>
                            <h6>GVR INFO SYSTEM</h6> 
                             <a href="sellerscreen.aspx" class="btn btn-secondary text-white mt-3p-2" role="button" style="width: 152px;     width: 152px;
                                 height: 42px; border-radius: 3px;">Become a Seller</a>
                            <h4 class="new text-dark">Subscribers</h4>
                            <b>Email</b>
                            <input type="email" placeholder=" Enter Email" id="email" class="form-control corner"/>
                            <button class="btn btn bg-info text-white mt-lg-2" >Submit</button> 
                            <br /> 

</div>

                         <div class="col-lg-3">
                              <img src="../Images/logo.png" alt="" class="image-fluid  logo1 "   style="width: 193px; height: 82px; margin-left: 75px;margin-top: 90px"; /></a>

                            </div>
                         

                    </div>  </div> 
                
                   <div class="container-fluidcpy mt-lg-3 ">
                       <p class="ft text-center bg-dark text-white p-lg-2">© All Rights Reserved by electronic.com </p>
                   </div>

                  
        <!--------------------------snippetts ends  here---------------->
   
</body>
</html>
