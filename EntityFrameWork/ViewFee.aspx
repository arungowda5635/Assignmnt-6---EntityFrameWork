<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFee.aspx.cs" Inherits="EntityFrameWork.ViewFee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    
            <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- //font-awesome icons -->
    <link href="css/blast.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/style10.css" />
    <!--stylesheets-->
    
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->

    <link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Merriweather:300,400,700,900" rel="stylesheet">

   
        <style>
        table,td {
            border:5px ridge white;
            height:auto;
            width:auto;
            margin:10px;
            padding:20px;
            font-weight:100;
            font-size:larger;
        }
        .btn {
            border:5px ridge white;
            height:80px;
            width:200px;
            text-align:center;
            font-size:larger;
        }

    </style>
</head>
<body style="background-color:brown;color:white;">

    
    <div class="blast-box">
      <div class="blast-icon"><span class="fas fa-tint"></span></div>
      <div class="blast-frame">
        <p>change colors</p>
        <div class="blast-colors">
          <div class="blast-color">#86bc42</div>
          <div class="blast-color">#8373ce</div>
          <div class="blast-color">#14d4f4</div>
          <div class="blast-color">#72284b</div>
        </div>
        <p class="blast-custom-colors">Custom colors</p>
        <input type="color" name="blastCustomColor" value="#cf2626">
      </div>
    </div>


    <div class="header-outs" id="header">
      <div class="header-w3layouts">
        <div class="container">
          <div class="row headder-contact">
            <div class="col-lg-6 col-md-7 col-sm-9 info-contact-agile">
              <ul>
              
                <li>
                  <span class="fas fa-envelope"></span>
                  <p><a href="#">jobandhillon4567@gmail.com</a></p>
                </li>
                <li>
                </li>
              </ul>
            </div>
            <div class="col-lg-6 col-md-5 col-sm-3 icons px-0">
              <ul>
                <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                <li><a href="#"><span class="fas fa-envelope"></span></a></li>
                <li><a href="#"><span class="fas fa-rss"></span></a></li>
                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="hedder-up">
            <h1 ><a href="index.html" class="navbar-brand" data-blast="color">College</a></h1>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="headdser-nav-color" data-blast="bgColor">
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
              <ul class="navbar-nav ">
                <li class="nav-item active">
                  <a class="nav-link" href="AdminZone.aspx">Home <span class="sr-only">(current)</span></a>
                </li>
                  </li>
                <li class="nav-item">
                  <a href="RegisterStudent.aspx?#Record" class="nav-link scroll" >Register</a>
                </li>
                <li class="nav-item">
                  <a href="ViewStudent.aspx#Record" class="nav-link scroll">View student</a>
                </li>
                <li class="nav-item">
                  <a href="PayFee.aspx#Record" class="nav-link scroll">Fee</a>
                </li>
                <li class="nav-item">
                  <a href="ViewFee.aspx#Record" class="nav-link scroll">View Fee</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!--//navigation section -->
        <div class="clearfix"> </div>
      </div>
      <!--banner -->
      <!-- Slideshow 4 -->
      <div class="slider">
        <div class="callbacks_container">
          <ul class="rslides" id="slider4">
            <li>
              <div class="slider-img one-img">
                <div class="container">
                  <div class="slider-info text-left">
                    <h4 >Welcome </h4>
                    <h5>College Admision System</h5>
                    <p>Welcome to Fee Payment Details Portal
                    </p>
                    <div class="outs_more-buttn" >
                      <a href="#Record" data-toggle="modal" data-target="#exampleModalLive" data-blast="bgColor">Click Here to Scroll Down</a>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            
          </ul>
        </div>
        <!-- This is here just to demonstrate the callbacks -->
        <!-- <ul class="events">
          <li>Example 4 callback events</li>
          </ul>-->
        <div class="clearfix"></div>
      </div>
    </div>
    <!-- //banner -->

    <div id="Record">
<h1 style="color:white;text-align:center;font-size:50px;">View Fee </h1>    
    
    <form id="form1" runat="server">
       
        <center>
        <div id="rslt" runat="server" style="font-size:20px;color:white;">


        </div>
            </center>

    </form>
        </div>
</body>
</html>
