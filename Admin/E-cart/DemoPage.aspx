

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoPage.aspx.cs" Inherits="Admin.E_cart.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>GVR - eCommerce</title>
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="GVR - eCommerce" />
    <meta name="author" content="p-themes" />
    


 <%--   <script>
        $("#intro-slider-container").slick({
            arrows: false,
            infinite: true,
            slidesToShow: 10,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 1500,
            mobileFirst: true
        });

        </script>--%>
  <%--  <style>
        .notification {
            background-color: #555;
            color: white;
            text-decoration: none;
            padding: 15px 26px;
            position: relative;
            display: inline-block;
            border-radius: 2px;
        }



            .notification .badge {
                position: absolute;
                top: -10px;
                right: -10px;
                padding: 5px 10px;
                border-radius: 50%;
                background-color: red;
                color: white;
            }

               
        .tiles {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }

        .tile {
            position: relative;
            width: 300px;
            height: 300px;
            overflow: hidden;
        }

        .tile img {
            width: 100%;
            height: 100%;
            transition: transform 0.3s;
        }


        .imagepr {
  opacity: 1;
  /*display: block;
  width: 100%;
  height: auto;*/
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .imagepr {
  opacity: 0.8;
}

.container:hover .middle {
  opacity: 1;
}

.text {
 
  color: black;
  font-size: 20px;
  padding: 16px 32px;
}

.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}


figure {
   width: 300px;
   height: 300px
}
.thumbnail {
   position: relative;
   width: 100%;
   height: 100%;
   margin-bottom: 10px;
   overflow: hidden
}

.thumbnail > img {
    max-width: 100%;
    height: 100%;
    transition: all 0.3s ease
}

.thumbnail div {
   position: absolute;
   background: rgba(1,1,1,0.8);
   color: #fff;
   width: 100%;
   height: 100%;
   opacity: 0;
   transition: all 0.3s ease;
   line-height: 300px;
   text-align: center;
   font-size: 30px;
   z-index: 2
   
}

.thumbnail:hover > img {
   transform: scale(1.3)
}

.thumbnail:hover > div {
   opacity: 1
}

   </style>--%>

  <%--  <script>
        document.addEventListener('DOMContentLoaded', function () {
            const tiles = document.querySelectorAll('.tile');

            tiles.forEach(tile => {
                const img = tile.querySelector('img');
                const scale = parseFloat(tile.getAttribute('data-scale')) || 1.1;

                tile.addEventListener('mousemove', e => {
                    const bounds = tile.getBoundingClientRect();
                    const x = (e.clientX - bounds.left) / bounds.width;
                    const y = (e.clientY - bounds.top) / bounds.height;
                    const translateX = (1 - scale) * x * 100;
                    const translateY = (1 - scale) * y * 100;

                    img.style.transform = `scale(${scale}) translate(${translateX}%, ${translateY}%)`;
                });

                tile.addEventListener('mouseleave', () => {
                    img.style.transform = 'scale(1) translate(0, 0)';
                });
            });
        });
    </script>
     <script>--%>


<%--  // Find the icon element by its ID
  var openWindowIcon = document.getElementById("openWindowIcon");

  // Add a click event listener
  openWindowIcon.addEventListener("click", function() {
    // Specify the URL you want to open in the new window
    var urlToOpen = "https://www.example.com"; // Replace with your desired URL

    // Use window.open() to open a new window
    window.open(urlToOpen, "_blank", "width=800,height=600");
  });
</script>--%>


    <style>
      .modal {
        position: fixed;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: #cccccc;
        opacity: 0;
        visibility: hidden;
        transform: scale(1.1);
        transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;
      }
      .modal-content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #eeeeee;
        padding: 1rem 1.5rem;
        width: 24rem;
        border-radius: 0.5rem;
      }
      .close-button {
        float: right;
        width: 1rem;
        line-height: 1.5rem;
        text-align: center;
        cursor: pointer;
        border-radius: 30px;
        background-color: #eeeeee;
      }
      .close-button:hover {
        background-color: #adadad;
      }
      .show-modal {
        opacity: 1;
        visibility: visible;
        transform: scale(1.0);
        transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
      }
    </style>
  </head>
  <body>


    <h2>Create Modal Box</h2>
    <button class="example">Click here to see the modal!</button>
    <div class="modal">
      <div class="modal-content">
        <span class="close-button">&times;</span>
        <h2>This is a Modal</h2>
      </div>
    </div>


    <script>
      let modal = document.querySelector(".modal");
      let trigger = document.querySelector(".example");
      let closeButton = document.querySelector(".close-button");
      function toggleModal() {
        modal.classList.toggle("show-modal");
      }
      function windowOnClick(event) {
        if(event.target === modal) {
          toggleModal();
        }
      }
      trigger.addEventListener("click", toggleModal);
      closeButton.addEventListener("click", toggleModal);
      window.addEventListener("click", windowOnClick);
    </script>



  </body>
</html>



<%--    <style>
      .modalDialog {
        position: fixed;
        font-family: Arial, Helvetica, sans-serif;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.1);
        z-index: 99999;
        opacity: 0;
        -webkit-transition: opacity 400ms ease-in;
        -moz-transition: opacity 400ms ease-in;
        transition: opacity 400ms ease-in;
        pointer-events: none;
      }
      .modalDialog:target {
        opacity: 1;
        pointer-events: auto;
      }
      .modalDialog > div {
        width: 270px;
        position: relative;
        margin: 10% auto;
        padding: 5px 20px 13px 20px;
        border-radius: 10px;
        background: -moz-linear-gradient(#2edbe8, #01a6b2);
        background: -webkit-linear-gradient(#2edbe8, #01a6b2);
        background: -o-linear-gradient(#2edbe8, #01a6b2);
      }
      .close {
        background: #606061;
        color: #FFFFFF;
        line-height: 25px;
        position: absolute;
        right: -12px;
        text-align: center;
        top: -10px;
        width: 24px;
        text-decoration: none;
        font-weight: bold;
        -webkit-border-radius: 12px;
        -moz-border-radius: 12px;
        border-radius: 12px;
        -moz-box-shadow: 1px 1px 3px #000;
        -webkit-box-shadow: 1px 1px 3px #000;
        box-shadow: 1px 1px 3px #000;
      }
      .close:hover {
        background: #6ed1d8;
      }
    </style>
  </head>
  <body>
    
    <a href="#openModal">Box</a>
    <div id="openModal" class="modalDialog">
      <div>
        <a href="#close" title="Close" class="close">X</a>
        <h6> item add sucessfully </h6>
      </div>
      
    </div>
  </body>
</html>--%>