<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project6v2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
 
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>--%>

    <%--<link href="Landing_page.css" rel="stylesheet" />--%>
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<%--script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>

<%--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css"/>--%>
<%--    <script  type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>--%>
 <script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
></script>

    
    <style>
      
        .why-us .content {
  padding: 30px;
  background: #39B5E0;
  border-radius: 4px;
  color: #fff;
}
.why-us .content h3 {
  font-weight: 700;
  font-size: 34px;
  margin-bottom: 30px;
}
.why-us .content p {
  margin-bottom: 30px;
}
 .more-btn {
  display: inline-block;
  background: rgba(255, 255, 255, 0.2);
  padding: 6px 30px 8px 30px;
  color: #fff;
  border-radius: 50px;
  transition: all ease-in-out 0.4s;
}
.more-btn i {
  font-size: 14px;
}
.more-btn:hover {
  color: #1977cc;
  background: #fff;
}
.why-us .icon-boxes .icon-box {
  text-align: center;
  border-radius: 10px;
  background: #fff;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
  padding: 40px 30px;
  width: 100%;
}
.why-us .icon-boxes .icon-box i {
  font-size: 40px;
  color: #1977cc;
  margin-bottom: 30px;
}
.why-us .icon-boxes .icon-box h4 {
  font-size: 20px;
  font-weight: 700;
  margin: 0 0 30px 0;
}
.why-us .icon-boxes .icon-box p {
  font-size: 15px;
  color: #848484;
}
        .departments {
  overflow: hidden;
}


.departments .tab-pane.active {
  -webkit-animation: fadeIn 0.5s ease-out;
  animation: fadeIn 0.5s ease-out;
}
.departments .details h3 {
  font-size: 26px;
  font-weight: 600;
  margin-bottom: 20px;
  color: #2c4964;
}
.departments .details p {
  color: #777777;
}
.departments .details p:last-child {
  margin-bottom: 0;
}

.doctors {
  background: #fff;
}
.doctors .member {
  position: relative;
  box-shadow: 0px 2px 15px rgba(44, 73, 100, 0.08);
  padding: 30px;
  border-radius: 10px;
}
.doctors .member .pic {
  overflow: hidden;
  width: 180px;
  border-radius: 50%;
}
.doctors .member .pic img {
 /* transition: ease-in-out 0.3s;*/
}
.doctors .member:hover img {
  transform: scale(1.1);
}
.doctors .member .member-info {
  padding-left: 30px;
}
.doctors .member h4 {
  font-weight: 700;
  margin-bottom: 5px;
  font-size: 20px;
  color: #2c4964;
}
.doctors .member span {
  display: block;
  font-size: 15px;
  padding-bottom: 10px;
  position: relative;
  font-weight: 500;
}
.doctors .member span::after {
  content: "";
  position: absolute;
  display: block;
  width: 50px;
  height: 1px;
  background: #b2c8dd;
  bottom: 0;
  left: 0;
}
.doctors .member p {
  margin: 10px 0 0 0;
  font-size: 14px;
}
.doctors .member .social {
  margin-top: 12px;
  display: flex;
  align-items: center;
  justify-content: flex-start;
}
.doctors .member .social a {
  transition: ease-in-out 0.3s;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50px;
  width: 32px;
  height: 32px;
  background: #a0bcd5;
}
.doctors .member .social a i {
  color: #fff;
  font-size: 16px;
  margin: 0 2px;
}
.doctors .member .social a:hover {
  background: #1977cc;
}
.doctors .member .social a+a {
  margin-left: 8px;
}
.gallery .gallery-item {
  overflow: hidden;
  border-right: 3px solid #fff;
  border-bottom: 3px solid #fff;
}
.gallery .gallery-item img {
  transition: all ease-in-out 0.4s;
}
.gallery .gallery-item:hover img {
  transform: scale(1.1);
}
.testimonials .testimonial-wrap {
  padding-left: 50px;
}
.testimonials .testimonials-carousel,
.testimonials .testimonials-slider {
  overflow: hidden;
}
.testimonials .testimonial-item {
  box-sizing: content-box;
  padding: 30px 30px 30px 60px;
  margin: 30px 15px;
  min-height: 200px;
  box-shadow: 0px 2px 12px rgba(44, 73, 100, 0.08);
  position: relative;
  background: #fff;
}
.testimonials .testimonial-item .testimonial-img {
  width: 90px;
  border-radius: 10px;
  border: 6px solid #fff;
  position: absolute;
  left: -45px;
}
.testimonials .testimonial-item h3 {
  font-size: 18px;
  font-weight: bold;
  margin: 10px 0 5px 0;
  color: #111;
}
.testimonials .testimonial-item h4 {
  font-size: 14px;
  color: #999;
  margin: 0;
}
.testimonials .testimonial-item .quote-icon-left,
.testimonials .testimonial-item .quote-icon-right {
  color: #badaf7;
  font-size: 26px;
}
.testimonials .testimonial-item .quote-icon-left {
  display: inline-block;
  left: -5px;
  position: relative;
}
.testimonials .testimonial-item .quote-icon-right {
  display: inline-block;
  right: -5px;
  position: relative;
  top: 10px;
}
.testimonials .testimonial-item p {
  font-style: italic;
  margin: 15px auto 15px auto;
}
.swiper-pagination {
  margin-top: 20px;
  position: relative;
}
.swiper-pagination-bullet {
  width: 12px;
  height: 12px;
  background-color: #fff;
  opacity: 1;
  border: 1px solid #1977cc;
}
.swiper-pagination-bullet-active {
  background-color: #1977cc;
}
@media (max-width: 767px) {
  .testimonials .testimonial-wrap {
    padding-left: 0;
  }
  .testimonials .testimonials-carousel,
  .testimonials .testimonials-slider {
    overflow: hidden;
  }
  .testimonials .testimonial-item {
    padding: 30px;
    margin: 15px;
  }
  .testimonials .testimonial-item .testimonial-img {
    position: static;
    left: auto;
  }
}
.services .icon-box {
  text-align: center;
  border: 1px solid #d5e1ed;
  padding: 80px 20px;
  transition: all ease-in-out 0.3s;
}
.services .icon-box .icon {
  margin: 0 auto;
  width: 64px;
  height: 64px;
  background: #1977cc;
  border-radius: 5px;
  transition: all 0.3s ease-out 0s;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 20px;
  transform-style: preserve-3d;
}
.services .icon-box .icon i {
  color: #fff;
  font-size: 28px;
}
.services .icon-box .icon::before {
  position: absolute;
  content: "";
  left: -8px;
  top: -8px;
  height: 100%;
  width: 100%;
  background: #badaf7;
  border-radius: 5px;
  transition: all 0.3s ease-out 0s;
  transform: translateZ(-1px);
}
.services .icon-box h4 {
  font-weight: 700;
  margin-bottom: 15px;
  font-size: 24px;
}
.services .icon-box h4 a {
  color: #2c4964;
}
.services .icon-box p {
  line-height: 24px;
  font-size: 14px;
  margin-bottom: 0;
}
.services .icon-box:hover {
  background: #39B5E0;
  border-color: #1977cc;
}
.services .icon-box:hover .icon {
  background: #fff;
}
.services .icon-box:hover .icon i {
  color: #1977cc;
}
.services .icon-box:hover .icon::before {
  background: #3291e6;
}
.services .icon-box:hover h4 a,
.services .icon-box:hover p {
  color: #fff;
}
.gallery .gallery-item {
  overflow: hidden;
  border-right: 3px solid #fff;
  border-bottom: 3px solid #fff;
}
.gallery .gallery-item img {
  transition: all ease-in-out 0.4s;
}
.gallery .gallery-item:hover img {
  transform: scale(1.1);
}
#preloader {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 9999;
  overflow: hidden;
  background: #fff;
}
#preloader:before {
  content: "";
  position: fixed;
  top: calc(50% - 30px);
  left: calc(50% - 30px);
  border: 6px solid #1977cc;
  border-top-color: #d1e6f9;
  border-radius: 50%;
  width: 60px;
  height: 60px;
  -webkit-animation: animate-preloader 1s linear infinite;
  animation: animate-preloader 1s linear infinite;
}
@-webkit-keyframes animate-preloader {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
@keyframes animate-preloader {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
/*--------------------------------------------------------------
# Back to top button
--------------------------------------------------------------*/
.back-to-top {
  position: fixed;
  visibility: hidden;
  opacity: 0;
  right: 15px;
  bottom: 15px;
  z-index: 996;
  background: #1977cc;
  width: 40px;
  height: 40px;
  border-radius: 4px;
  transition: all 0.4s;
}
.back-to-top i {
  font-size: 28px;
  color: #fff;
  line-height: 0;
}
.back-to-top:hover {
  background: #298ce5;
  color: #fff;
}
.back-to-top.active {
  visibility: visible;
  opacity: 1;
}
.datepicker-dropdown {
  padding: 20px !important;
}
#preloader {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 9999;
  overflow: hidden;
  background: #fff;
}
#preloader:before {
  content: "";
  position: fixed;
  top: calc(50% - 30px);
  left: calc(50% - 30px);
  border: 6px solid #1977cc;
  border-top-color: #d1e6f9;
  border-radius: 50%;
  width: 60px;
  height: 60px;
  -webkit-animation: animate-preloader 1s linear infinite;
  animation: animate-preloader 1s linear infinite;
}
@-webkit-keyframes animate-preloader {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
@keyframes animate-preloader {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
/*--------------------------------------------------------------
# Back to top button
--------------------------------------------------------------*/
.back-to-top {
  position: fixed;
  visibility: hidden;
  opacity: 0;
  right: 15px;
  bottom: 15px;
  z-index: 996;
  background: #1977cc;
  width: 40px;
  height: 40px;
  border-radius: 4px;
  transition: all 0.4s;
}
.back-to-top i {
  font-size: 28px;
  color: #fff;
  line-height: 0;
}
.back-to-top:hover {
  background: #298ce5;
  color: #fff;
}
.back-to-top.active {
  visibility: visible;
  opacity: 1;
}
.datepicker-dropdown {
  padding: 20px !important;
}
 
.ctaa
{
    position: relative;
    margin: auto;
    padding: 12px 18px;
     border-radius: 50px;
    border: none;
    background-color: white;
}
        .ctaa:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            display: block;
            border-radius: 50px;
            background:#06283D ;
            width: 100%;
            height: 55px;
            color:red;
           
        }
        .ctaa span {
            position: relative;
            font-family: "Ubuntu", sans-serif;
            font-size: 18px;
            font-weight: 700;
           
            color: white;
        }
         
        
        .ctaa svg {
            position: relative;
            top: 0;
            margin-left: 10px;
            fill: none;
            /*troke-linecap: round;
            stroke-linejoin: round;*/
            stroke: #06283D;
            stroke-width: 2;
           
        }
 
       
.cta
{
    position: relative;
    margin: auto;
    padding: 12px 18px;
     border-radius: 50px;
    border: none;
    color:aliceblue;
    background-color: mediumblue;
}
        .cta:before {
          
            position: absolute;
            top: 0;
            left: 0;
            display: block;
            border-radius: 50px;
            background:#dff6ff ;
            width: 100%;
            height: 55px;
           
        }
        .cta span {
            position: relative;
            font-family: "Ubuntu", sans-serif;
            font-size: 18px;
            font-weight: 700;
           
            color: white;
        }
        .cta svg {
            position: relative;
            top: 0;
            margin-left: 10px;
            fill: none;
            /*troke-linecap: round;
            stroke-linejoin: round;*/
            stroke: #DFF6FF;
            stroke-width: 2;
           
        }
        .cta:hover:before {
            width: 100%;
            background: #06283D;
        }
 .containProduct{
            display:flex;
           flex-wrap:wrap;
            justify-content:center;
          gap:100px;
            margin-top:10px;
              margin-left: 20px;
              margin-right: 20px;
             /* margin-bottom: 20px;*/
          }
        .ctaa span {
            margin-left:35px;
        }
    </style>

    <style>
          .carousel-caption{
      bottom:34%;
      left:17%;

  }
          .carousel-caption2{
              position:absolute;
               left:0% !important;
          }
          .first1{
              font-size:25px;
              color:#333399;
              font-weight:900;

          }
          .first2{
              font-size:20px;
              color:#cc6699;
              margin-bottom:3rem;

          }



/* CSS */
.button-89 {
  --b: 3px;   /* border thickness */
  --s: .45em; /* size of the corner */
  --color: #373B44;

  
  padding: calc(.5em + var(--s)) calc(.9em + var(--s));
  color: var(--color);
  --_p: var(--s);
  background:
    conic-gradient(from 90deg at var(--b) var(--b),#0000 90deg,var(--color) 0)
    var(--_p) var(--_p)/calc(100% - var(--b) - 2*var(--_p)) calc(100% - var(--b) - 2*var(--_p));
  transition: .3s linear, color 0s, background-color 0s;
  outline: var(--b) solid #0000;
  outline-offset: .6em;
  font-size: 16px;

  border: 0;

  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-89:hover,
.button-89:focus-visible{
  --_p: 0px;
  outline-color: var(--color);
  outline-offset: .05em;
}

.button-89:active {
  background: var(--color);
  color: #fff;
}
    </style>
  <%--  <div id="carouselExampleCaptions" class="carousel slide" data-mdb-ride="carousel">
  <div class="carousel-indicators">
    <button
      type="button"
      data-mdb-target="#carouselExampleCaptions"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1" 
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselExampleCaptions"
      data-mdb-slide-to="1"
      aria-label="Slide 2"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselExampleCaptions"
      data-mdb-slide-to="2"
      aria-label="Slide 3"
    ></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/mid2.jpg" class="d-block w-100" alt="Wild Landscape"style="height:660px"/>
      <div class="carousel-caption d-none d-md-block">
        <h5><a class="ctaa" href="#services">
    <span class="hover-underline-animation" > GET STARTED </span>
    <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" >
        <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" ></path>
    </svg>
</a></h5>
        <p></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/4.jpg" class="d-block w-100" alt="Camera" style="height:660px"/>
      <div class="carousel-caption d-none d-md-block">
        <h5><a class="ctaa" href="Default.aspx" >
    <span class="hover-underline-animation">  GET STARTED </span>
    <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" >
    </svg>
</a></h5>
        <p></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/doni2.jpg" class="d-block w-100" alt="Exotic Fruits" style="height:660px"/>
      <div class="carousel-caption d-none d-md-block">
        <h5><button class="ctaa" >
    <span class="hover-underline-animation" style="margin-bottom:2px ; text-align:center"> GET STARTED</span>
    <svg viewBox="0 0 46 16" height="10" width="30" xmlns="WebForm12.aspx" href="WebForm12.aspx">
        <path transform="translate(30)" d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z" data-name="Path 10" ></path>
    </svg>
</button></h5>
        <p></p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>--%>
    <!-- Carousel wrapper -->
    <div class="  mb-5 ">
<div id="carouselBasicExample" class="carousel slide carousel-fade shadow  mb-5 bg-white rounded" data-mdb-ride="carousel">
  <!-- Indicators -->


  <!-- Inner -->
  <div class="carousel-inner">
    <!-- Single item -->
    <div class="carousel-item active">
      <img src="image/Untitled-2.jpg" class="d-block w-100"
        alt="Sunset Over the City" />
      <div class="carousel-caption d-none d-md-block">
        <h5 class="first1" >Donate To Help Save Lives To Those In Need</h5>
        <p class="first2">Choose How will you donate</p>
          <asp:HyperLink ID="HyperLink1" CssClass="button-89 mt-3" NavigateUrl="#cycle1" runat="server">site cycle</asp:HyperLink>
      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img src="image/Untitled-3.jpg" class="d-block w-100"
        alt="Canyon at Nigh" />
      <div class="carousel-caption carousel-caption2 d-none d-md-block">
        <h5 class="first1">Help us reach as many people as possible.</h5>
        <p class="first2"> Donate today for the continuity of the site</p>
                    <asp:HyperLink ID="HyperLink2" CssClass="button-89 mt-3" NavigateUrl="../paybal" runat="server">Support Us </asp:HyperLink>

      </div>
    </div>

    <!-- Single item -->
    <div class="carousel-item">
      <img src="image/Untitled-4.jpg" class="d-block w-100"
        alt="Cliff Above a Stormy Sea" />
      <div class="carousel-caption d-none d-md-block">
        <h5 class="first1">Together, we can deliver health & hope to the world!</h5>
        <p class="first2">browse the available donations</p>
                    <asp:HyperLink ID="HyperLink3" CssClass="button-89 mt-3" NavigateUrl="../AllDonations.aspx" runat="server">Dpnations</asp:HyperLink>

      </div>
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button class="carousel-control-prev" type="button" data-mdb-target="#carouselBasicExample"
    data-mdb-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-mdb-target="#carouselBasicExample"
    data-mdb-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        </div>
<!-- Carousel wrapper -->

   <%--  <div class="col-lg-4 d-flex align-items-stretch" >
            <div class="content">
<div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>--%>
     <style>
     .back{
         position:absolute;
         top:20px;
         left:20px;
     }
     .card-body{
         position:relative;
     }
     .mt-10{
         margin-top:5rem;
     }
     .hhjj{
         height:300px;
     }
   </style>
    <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>
     <div id="cycle1" class="container mt-10 text-center  ">
   <h5 class="section-title h1">Please choose one of the following options to proceed</h5><br /><h4>what are you planning for</h4><br />


         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
         <div class="row pb-5 justify-content-center ">
             <asp:PlaceHolder ID="PlaceHolder1" runat="server">
    <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
      <!-- Card-->
      <div class="card rounded shadow  mb-5 bg-white rounded border-0">
        <div class="card-body hhjj p-5"><i class="fa-solid fa-hand-holding-medical  fa-2x mb-3 text-primary "></i>
          <h5>Want to Donate ?</h5><br />
          <p class="small text-muted font-italic"><%--Donate To Help Save Lives To Those In Need--%> Proceed to select a donate plan.</p><br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="proceed"/>
          
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
      <!-- Card -->
      <div class="card rounded shadow  mb-5 bg-white rounded border-0">
        <div  class="card-body hhjj p-5"><i style="color:black" class="fa-solid fa-hand-holding-heart fa-2x mb-3 text-primary "></i>
          <h5>Want to recieve a donation?</h5>
          <p class="small text-muted font-italic"><%--Where there’s life, there’s hope.--%> Select a donation from the available options on the donation page.</p>
            <asp:HyperLink ID="HyperLink4" NavigateUrl="~/AllDonations.aspx" CssClass="btn btn-primary" runat="server">All Donation</asp:HyperLink>
        </div>
      </div>
    </div>
</asp:PlaceHolder>
             <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                 <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
      <!-- Card-->
      <div class="card rounded shadow  mb-5 bg-white rounded border-0">
        <div class="card-body hhjj p-5"><i class=" fa-solid fa-hands-holding-child fa-2x mb-3 text-primary"></i>
           
            <asp:Button ID="Button3"  OnClick="Button3_Click" CssClass="back btn btn-light " runat="server" Text="back" />
          <h5>donate for people ?</h5>
          <p class="small text-muted font-italic">Proceed to select a donate plan.</p>
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="proceed" />
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
      <!-- Card -->
      <div class="card rounded shadow  mb-5 bg-white rounded border-0">
        <div class="card-body hhjj p-5"><i class="fa-solid fa-hand-holding-dollar fa-2x mb-3 text-success"></i>
          <h5>Support us ? </h5>
          <p class="small text-muted font-italic">Help us reach as many people as possible. Donate today for the continuity of the site</p>
            <asp:HyperLink ID="HyperLink5" NavigateUrl="paybal.aspx" CssClass="btn btn-primary" runat="server">Support us</asp:HyperLink>
        </div>
      </div>
    </div>
             </asp:PlaceHolder>
             <asp:PlaceHolder ID="PlaceHolder3" runat="server">
                 <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
      <!-- Card--> 
      <div class="card rounded shadow  mb-5 bg-white rounded border-0">
        <div class="card-body hhjj p-5"><i class="fa-solid fa-arrows-down-to-people fa-2x mb-3 text-primary"></i>
             <asp:Button ID="Button4" OnClick="Button4_Click" CssClass="back btn btn-light" runat="server" Text="back" />
          <h5>Do you want to monitor your donation and pick who to give it to?</h5>
          <p class="small text-muted font-italic">take a look to the steps </p>
            <asp:HyperLink ID="HyperLink7" NavigateUrl="#services" CssClass="btn btn-primary" runat="server">donation steps</asp:HyperLink>
        </div>
      </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
      <!-- Card -->
      <div class="card rounded shadow  mb-5 bg-white rounded border-0">
        <div class="card-body hhjj p-5"><i class="fa-solid fa-gift fa-2x mb-3 text-success"></i>
          <h5>donate without traking the donation.</h5>
          <p class="small text-muted font-italic"> apply the donation form </p><br /><br />
            <asp:HyperLink ID="HyperLink6" NavigateUrl="orgpay.aspx" CssClass="btn btn-primary" runat="server">donate now</asp:HyperLink>
        </div>
      </div>
    </div>
             </asp:PlaceHolder>
</div>
                 </ContentTemplate>
             </asp:UpdatePanel>
         </div>
  <%--   <section id="why-us" class="why-us">
      <div class="container">

        <div class="row justify-content-center">
          <div class="col-lg-4 d-flex align-items-stretch" >
            <div class="content">
              <h3>Welcome to our website</h3>
              <p>
                We cannot return medical equipment; disposing of it seems wrong and wasteful. 
The best solution for this is to donate medical supplies that are no longer needed 
 And be in good working order. Someone in need can't buy it.
You can support it. Some medical equipment available and for more please click here ...
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>
       <div class="col-lg-4 d-flex align-items-stretch" >
            <div class="content">
              <h3>Welcome to our website</h3>
              <p>
                We cannot return medical equipment; disposing of it seems wrong and wasteful. 
The best solution for this is to donate medical supplies that are no longer needed 
 And be in good working order. Someone in need can't buy it.
You can support it. Some medical equipment available and for more please click here ...
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>--%><!-- End Why Us Section -->


     <section id="departments" class="departments">
      <div class="container">

        <div class="section-title">
          <h2 style="text-align:center ; margin-top:100px">Our Services</h2>
          <p style="text-align:center">Many medical devices are available on our site provided directly to the beneficiary with a detailed explanation of them</p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Cool Mist Steam Console Humidifier</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">blood pressure monitor</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Medical Bed</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Vital Signs Patient Monitor</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Electronic Wheelchair</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Cool Mist Steam Console Humidifier</h3>
                    <p class="fst-italic">Power comumption:2.0WInput:5V/1AColor: Blue or Gray (sent randomly)Oscillation frequency: 110kHZ(10% higher or lower)Condensation rate: larger than 0.2ml/minAtomized particles: small than 5 μmVolume: max. 8mlProduct weight: 115gSize: 45*15*100mmRelative humidity: less than 93% Rhnon-con-densingPackage included:1*Mesh Nebulizer1*Medicine Cup Module1*Adult Model 1*Child Model1*Mouthpiece1*USB CableFeatures:Professional Quality - Atomized particles less than 5 μm with condensation rate</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="image/qq.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>blood pressure monitor</h3>
                    <p class="fst-italic">Omron M6 - comfortable and fully automatic health always in mind Hypertension is one of the most common diseases of our time. Regular and careful monitoring of blood pressure is therefore especially important in order to detect or prevent diseases.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="image/aa.jpeg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Medical Bed</h3>
                    <p class="fst-italic">Two-function hospital bed has backrest and legrest function. It helps patients to relieve bedsores caused by local pressure and blood circulation. and the multiple positions make the patient feel more comfortable. All parts can be changed according to your requirement.  Look at this bed, we use the ABS cranks. It can be folded and hidden to avoid bruising the nursing staff and visitors.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="image/bed.jpeg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Vital Signs Patient Monitor</h3>
                    <p class="fst-italic">Totam aperiam accusamus. Repellat consequuntur iure voluptas iure porro quis delectus</p>
                    <p>Eaque consequuntur consequuntur libero expedita in voluptas. Nostrum ipsam necessitatibus aliquam fugiat debitis quis velit. Eum ex maxime error in consequatur corporis atque. Eligendi asperiores sed qui veritatis aperiam quia a laborum inventore</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="image/mon.png" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Electronic Wheelchair</h3>
                    <p class="fst-italic">This Waterproof Cotton Lined Electric Wheelchair Power Chair Cape P42598 has been designed for use with electric wheelchairs to protect the user from the elements. The cape has a poly-cotton lining for warmth, comfort & breathability (please note: pattern & colour may vary). It covers the user head to toe with a transparent plastic panel covering the wheelchairs control panel so the controls can be seen. The lined cape is elasticated for a comfortable fit, providing protection from the wind </p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="image/static.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>
      

  
    <section id="services" class="services">
      <div class="container">

        <div class="section-title">
          <h2 style="text-align:center ; margin-top:18px">Donation Cycle</h2>
         
            </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-heartbeat"></i></div>
              <h4><a >first step</a></h4>
              <p>The donor adds the equipment he wants to donate and waits for the approval of the person in charge of it</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-pills"></i></div>
              <h4>second step</h4>
              <p> The administrator approves or rejects the service after checking the conditions for acceptance of equipment</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-hospital-user"></i></div>
              <h4>Third Step </h4>
              <p>The beneficiary requests the equipment according to his needs</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-dna"></i></div>
              <h4>fourth step</h4>
              <p>The donor makes sure of the health and need of the beneficiary for the service</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-wheelchair"></i></div>
              <h4>fifth step</h4>
              <p>The service request is approved by the donor to the beneficiary</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-notes-medical"></i></div>
              <h4><a >Sixth Step</a></h4>
              <p>The order is delivered free of charge to the beneficiary and as soon as possible</p>
            </div>
          </div>

        </div>

      </div>
    </section>
    <section id="doctors" class="doctors" style="text-align:center">
      <div class="container">

        <div class="section-title">
          <h2 style="text-align:center ; margin-top:50px">Our Team </h2>
        </div>

        <div class="row justify-content-center">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="image/lujain.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>LUJAIN ALNOUTI</h4>
                <span></span>
                <p>Our team is available 24 hours a day for inquiries or communication</p>
                <div class="social">
                  <a href="https://github.com/"><i class="fa-brands fa-github"></i></a>
                  <a href="https://web.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                  <a ><i class="fa-brands fa-instagram"></i></a>
                  <a href="https://www.linkedin.com/feed/?nis=true&lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BhmBPOX0sR9yqSDGOcOlexw%3D%3D"> <i class="fa-brands fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4 mt-lg-0">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="image/ll.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>MOHAMMAD SHRAIDEH</h4>
                <span></span>
                <p>Our team is available 24 hours a day for inquiries or communication</p>
                <div class="social">
                  <a href="https://github.com/"><i class="fa-brands fa-github"></i></a>
                  <a href="https://web.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                  <a ><i class="fa-brands fa-instagram"></i></a>
                  <a href="https://www.linkedin.com/feed/?nis=true&lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BhmBPOX0sR9yqSDGOcOlexw%3D%3D"> <i class="fa-brands fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="image/moath.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>MOATH AL BDOUR</h4>
                <span></span>
                <p>Our team is available 24 hours a day for inquiries or communication</p>
                <div class="social">
                  <a href="https://github.com/"><i class="fa-brands fa-github"></i></a>
                  <a href="https://web.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                  <a ><i class="fa-brands fa-instagram"></i></a>
                  <a href="https://www.linkedin.com/feed/?nis=true&lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BhmBPOX0sR9yqSDGOcOlexw%3D%3D"> <i class="fa-brands fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="image/aa999.jpg"  class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>ASHRAF SHWEAT</h4>
                <span></span>
                <p>Our team is available 24 hours a day for inquiries or communication</p>
                <div class="social">
                  <a href="https://github.com/"><i class="fa-brands fa-github"></i></a>
                  <a href="https://web.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                  <a ><i class="fa-brands fa-instagram"></i></a>
                  <a href="https://www.linkedin.com/feed/?nis=true&lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BhmBPOX0sR9yqSDGOcOlexw%3D%3D"> <i class="fa-brands fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

             <div class="col-lg-6 mt-4" style="margin-bottom:2%">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="image/haya.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>HAYA ALKHATEEB</h4>
                <span></span>
                <p>Our team is available 24 hours a day for inquiries or communication</p>
                <div class="social">
                  <a href="https://github.com/"><i class="fa-brands fa-github"></i></a>
                  <a href="https://web.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                  <a ><i class="fa-brands fa-instagram"></i></a>
                  <a href="https://www.linkedin.com/feed/?nis=true&lipi=urn%3Ali%3Apage%3Ad_flagship3_notifications%3BhmBPOX0sR9yqSDGOcOlexw%3D%3D"> <i class="fa-brands fa-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>
          </div>
  
    </section>

    
          <script type="text/javascript" src="home.js"></script>
  <%--  <script type="text/javascript" src="js.js"></script>--%>
     <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2 style="text-align:center ; margin-top:50px">Gallery</h2>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="image/r.jpeg" class="galelry-lightbox">
                <img src="image/doni2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-2.jpg" class="galelry-lightbox">
                <img src="image/doni3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
             
                <img src="image/doni.jpg" alt="" class="img-fluid">
             
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-4.jpg" class="galelry-lightbox">
                <img src="image/r.jpeg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-5.jpg" class="galelry-lightbox">
                <img src="image/as.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              
                <img src="image/donti.jpg" alt="" class="img-fluid">
            
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-7.jpg" class="galelry-lightbox">
                <img src="image/donation.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
             
                <img src="image/home3.jpg" alt="" class="img-fluid">
            
            </div>
          </div>

        </div>

      </div>
    </section>
     <%--<div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>--%>

    </div>
</asp:Content>
