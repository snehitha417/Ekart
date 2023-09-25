<%@ Page Title="" Language="C#" MasterPageFile="~/seller login/USERPAGE.Master" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Admin.seller_login.content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
         <div id="demo" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                      <li data-target="#demo" data-slide-to="0" class="active"></li>
                      <li data-target="#demo" data-slide-to="1"></li>
                      <li data-target="#demo" data-slide-to="2"></li>
                      <li data-target="#demo" data-slide-to="3"></li>
                      <li data-target="#demo" data-slide-to="4"></li>
                    </ul>

                    <div class="carousel-inner">
                       <div class="carousel-item active">
                          <img src="images/c1.jpg"  alt="Los Angeles" class=" img-fluid C1" />
                           <div class="carousel-caption">
                           <button class="btn btn-danger">Order Now</button>
                      </div>   
                      </div>

                      <div class="carousel-item">
                          <img src="images/c2.jpg" alt="Chicago"  class=" img-fluid" />
                          <div class="carousel-caption">
                           <button class="btn btn-danger">Order Now</button>

                        </div>   
                      </div>

                      <div class="carousel-item">
                          <img src="images/c3.jpg"  alt="New York"  class=" img-fluid" />
                          <div class="carousel-caption">
                          <button class="btn btn-danger">Order Now</button>
                        </div>   
                      </div>

                         <div class="carousel-item">
                             <img src="images/c4.jpg" alt="New York"  class=" img-fluid" />
                             <div class="carousel-caption">
                             <button class="btn btn-danger">Order Now</button>
                          </div>   
                      </div>

                         <div class="carousel-item">
                             <img src="images/c5.jpg" alt="New York"  class=" img-fluid" />
                              <div class="carousel-caption">
                              <button class="btn btn-danger">Order Now</button>
                        </div>   
                      </div>
                    </div>

                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                      <span class="carousel-control-next-icon"></span>
                    </a>
                  </div>

     <!-----------------------  carosel banner ends hear------------------>
      <br />

  <!---------------- ABOUT US  page --------->
           <div class="container mt-lg-3 ">
             <div class="row mt-lg-5">
                <div  class="col-lg-6 "> <img src="images/img1.jpg"  alt="" class="img-fluid cmpy" style="width: 464px;"/>  </div>

                 <div  class="col-lg-6 bg-light mt-lg-3 p-3">

                   <h3 class="ab text-danger text-center mt-3 "> About Us</h3>
                   <p class ="des mt-lg-3"> Welcome to Coulomb Electrical Solutions, India’s most preferred brand
                        for electrical goods. We are an FMEG company that deals in Electrical Wires,
                        Modular Switches & Systems, Switch Gears, Water Heaters, Holders & Ceiling Rose,
                        Flex Boxes, Fans, Allied & Accessories, Lighting and Home Automation..</p>

                      <div class="row"> 
                           
                         <div class="col-lg-2"> </div>
                           <div class="col-lg-4">  <h3 class="hpy text-success">100 +</h3>  </div>
                          
                          
                             <div class="col-lg-6">  <h3 class="hpy text-success">5000 +</h3> </div>  </div>  

                            <div class="row"> 

                             <div class="col-lg-6"> <b style="margin-left:75px">100+ Products</b> </div>

                            <div class="col-lg-6"> <b>Happy Customers</b> </div>
                           
                         </div> </div></div></div>

     
       <!------- ------------about us ends here--- ------------->

    <br />
    <br />
       <!-------------products modified starts here ----------------->

          <div class="container padding-100px">
          <h3 class="ser text-dark text-center"> <b>Products</b></h3>
               <!------------ 1 line  ------------------>  
                 <div class="col-lg-12 ">
                    <div class="row  mt-lg-3 ">

                    <div class="col-lg-4 "> 
                          <div class="card">
                              <img src="images/prod-1.jpg"  alt="" class="img1 p-3" style="width:343px"/> 
                                    <div class="card-item text-center  mb-3">
                                        <b class="text-success" >Modular Switches</b>
                                     </div> </div> </div>
                    
                           <div class="col-lg-4"> <div class="card">
                               <img src="images/prod-2.jpg" alt=""  class="img2 p-3" style="width:343px"" /> 
                                  <div class="card-item text-center  mb-3 ">
                                     <b class="text-success">Switch Gears</b>
                                </div> </div>  </div> 
                                
                           <div class="col-lg-4 "> <div class="card">  
                               <img src="images/prod-3.jpg" alt=""  class="img3 p-3" style="width:343px" />
                                     <div class="card-item text-center  mb-3">
                               <b class="text-success ">Accessories</b>
                                 </div>   </div>   </div>
                         <div> </div> 
                        </div>   </div>  

            <!----------------- 2 line  ------------------>  
               <div class="col-lg-12">
                    <div class="row  mt-lg-3 ">
                       <div class="col-lg-4 "> 
                          <div class="card">
                             <img src="images/prod-4.jpg" alt="" class="img1 p-3" style="width:343px"/> 
                                    <div class="card-item text-center  mb-3">
                                        <b class="text-success" >Lighting</b>
                                     </div> </div> </div>
                    
                           <div class="col-lg-4"> <div class="card">
                               <img src="images/prod-5.jpg"  alt=""  class="img2 p-3" style="width:343px"" /> 
                                  <div class="card-item text-center  mb-3">
                                     <b class="text-success">Wires</b>
                                </div> </div>  </div> 
                                
                           <div class="col-lg-4"> <div class="card">  
                               <img src="images/prod-6.jpg" alt=""  class="img3 p-3" style="width:343px" />
                                     <div class="card-item text-center  mb-3">
                               <b class="text-success ">Holders</b>
                         
                                 </div>   </div>   </div> 
                       </div> </div> 

               <!----------------- 3 line  ------------------>  

             <div class="col-lg-12">
                    <div class="row  mt-lg-3 ">
                      <div class="col-lg-4 "> 
                          <div class="card">
                              <img src="images/prod-7.jpg" alt="" class="img1 p-3" style="width:343px"/> 
                                    <div class="card-item text-center  mb-3">
                                        <b class="text-success" >Allied & Accessories</b>
                                     </div> </div> </div>
                    
                           <div class="col-lg-4"> <div class="card">
                               <img src="images/prod-8.jpg"  alt="" class="img2 p-3" style="width:343px"" /> 
                                  <div class="card-item text-center  mb-3">
                                     <b class="text-success">Fan</b>
                                </div> </div>  </div> 
                                
                           <div class="col-lg-4 "> <div class="card">  
                               <img src="images/prod-9.jpg"  alt=""  class="img3 p-3" style="width:343px" />
                                     <div class="card-link text-center  mb-3">
                               <b class="text-success ">Water Heater</b>
                         
                                 </div>   </div>   </div>  

      </div>      </div> <div> </div></div>


       <!-------------products modified ends here ---->
   
     <!-----------------------  products hear------------------>

      <div class="container-fluid bg-light p-2">
           
          <h3 class="ser text-dark text-center"> <b>Our Categories</b></h3>
     
                 <div class="col-lg-12 ">
                    <div class="row  mt-lg-3 ">

                    <div class="col-lg-3 "> 
                          <div class="card">
                              <img src="images/1.jpg" alt="" class="img1 p-1" style="width:343px"/> 
                                    <div class="card-item text-center">
                                        <b class="text-success" >LED Lighting</b>
                                     </div> </div> </div>
                    
                           <div class="col-lg-3"> <div class="card">
                               <img src="images/2.jpg" alt=""  class="img2 p-1" style="width:343px"" /> 
                                  <div class="card-item text-center ">
                                     <b class="text-success">Home Appliances</b>
                                </div> </div>  </div> 
                                
                           <div class="col-lg-3 "> <div class="card">  
                               <img src="images/3.jpg" alt=""  class="img3 p-1" style="width:343px" />
                                     <div class="card-item text-center">
                               <b class="text-success ">Accessories</b>
                         
                                 </div>   </div>   </div>  
             
                          <div class="col-lg-3">  <div class="card"> 
                              <img src="images/4.jpg" alt=""  class="img4 p-1" style="height:387px" width:"250px" />
                              <div class="card-item text-center">
                                <b class="text-success">Hardware items</b>
                                 </div>   </div>  </div> 
                         
                             
                        </div>    </div>  </div> 

     <!-----------------------  products hear ends------------------>

        <%--<div class=" container-fluid  tst bg-danger mt-lg-5 ">
         <h2 class="fb text-center text-white mt-lg-5"> Feed Back</h2>
        

  <div id="demo" class="carousel slide mt-lg-5  " data-ride="carousel " />
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li>
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <div class="carousel-inner">
      <div class="carousel-item active">
          <img src="images/fb.jpg" alt="Los Angeles" class=" img-fluid frnd1 mb-lg-3"/>
        <div class="carousel-caption">
       
            <h6 style="font-size:25px;" class="pe ">What customer says about us</h6> 
            <p> Wow very nice tem .I'am so happpy with your service .you mangaded to exceed my expectations!.<br>I refer more people to your company.<br> 
                <i class="fa-solid fa-star text-warning"></i>
                <i class="fa-solid fa-star text-warning"></i> 
                 <i class="fa-solid fa-star text-warning"></i> 
                 <i class="fa-solid fa-star-half-stroke text-warning"></i></p>
         
       
        </div>   
      </div>

      <div class="carousel-item">
          <img src="images/fb2.jpg"  alt="Chicago" class=" img-fluid  frnd1 mb-lg-3">
        <div class="carousel-caption">
           
                <h6 style="font-size:25px;" class="pe ">What customer says about us</h6> 
                <p>  Great support,I would like to say thank you your Effective Service,<br> I will recommend your expect company to all my friends <br>
                <i class="fa-solid fa-star text-warning"></i>
                <i class="fa-solid fa-star text-warning"></i> 
                 <i class="fa-solid fa-star text-warning"></i> 
                 <i class="fa-solid fa-star-half-stroke text-warning"></i></p>
        </div>   
      </div>


      <div class="carousel-item">
          <img src="images/fb3.jpg"  alt="New York"  class=" img-fluid frnd2 mb-lg-3" />

        <div class="carousel-caption">
                <h6 style="font-size:25px;" class="peo ">What customer says about us</h6> 
                
                <p> Thank you very much. Very Awesome Service. Iam impressed with your Service.<br>  
                    I already told to my friends about your service center
                     and your Quick response, Thanks again.<br> 
                      <i class="fa-solid fa-star text-warning"></i>
                      <i class="fa-solid fa-star text-warning"></i> 
                      <i class="fa-solid fa-star text-warning"></i> 
                      <i class="fa-solid fa-star-half-stroke text-warning"></i></p>
             </div>   
          </div>

         
                 <a class="carousel-control-prev" href="#demo" data-slide="prev">
                           <span class="carousel-control-prev-icon"></span>
                 </a>
                 <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                </a>
         </div>
            </div>--%>

        <!----------------------- ours brands  ------------------>
  
     

   <!--------------------------  testimonials banner ends hear------->



</asp:Content>
