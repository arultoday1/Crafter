<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery1.js"></script>
<title>Main Page</title>
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#"><i class="fa fa-home"></i> HOME</a></li>        
        <li class="active"><a href="OwnerLogin.jsp"><i i class="fa fa-gears"></i> OWNER</a></li>        
        <li class="active"><a href="userlogin.jsp"><i class="fa fa-users"></i> USER</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="adminlogin.jsp"><span class="glyphicon glyphicon-user"></span> Admin</a></li>    
      </ul>
    </div>
  </div>
</nav>     

        <div class="container-fluid" style="margin-top: -20px">
   <div class="row overflownone">
      <div class="col-md-4 information nopaddingleft nopaddingright hidden-sm hidden-xs">
         <h3>Quick menu</h3>
         <ul class="information_menu">
            <li class="active" data-id="1"><a href="#"><i class="fa fa-calendar-plus-o"></i>  Home </a></li>
            <li data-id="2"><a href="OwnerLogin.jsp"><i class="fa fa-commenting-o"></i> Owner</a></li>
            <li data-id="3"><a href="userlogin.jsp"><i class="fa fa-medkit"></i> User</a></li>
            <li data-id="4"><a href="adminlogin.jsp"><i class="fa fa-heartbeat"></i> Admin</a></li>
           
         </ul>
         <a href="tel:000000000000" class="btn btn-emergency"><span><i class="fa fa-phone"></i> Direct call button</span></a>
      </div>
      <div class="col-md-8 nopaddingleft nopaddingright">
         <div class="slideshow">
            <div class="overlay-id1 overlay-item">
               <h3>Choose option</h3>
                  <ul class="quickmenu">
                    <li><a href="#" title="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                    <li><a href="#" title="#">Praesent posuere tellus a luctus aliquet.</a></li>
                    <li><a href="#" title="#">Phasellus imperdiet mi eget sollicitudin molestie.</a></li>
                    <li><a href="#" title="#">In accumsan tortor eget massa bibendum, ut suscipit elit maximus.</a></li>
                    <li><a href="#" title="#">Nulla sodales turpis vitae dapibus convallis.</a></li>
                </ul>
            </div>
            <div class="overlay-id2 overlay-item">
              <h3>Choose option</h3>
                  <ul class="quickmenu">
                    <li><a href="#" title="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                    <li><a href="#" title="#">Praesent posuere tellus a luctus aliquet.</a></li>
                    <li><a href="#" title="#">Phasellus imperdiet mi eget sollicitudin molestie.</a></li>
                    <li><a href="#" title="#">In accumsan tortor eget massa bibendum, ut suscipit elit maximus.</a></li>
                    <li><a href="#" title="#">Nulla sodales turpis vitae dapibus convallis.</a></li>
                </ul>
            </div>
            <div class="overlay-id3 overlay-item">
               <h3>Choose option</h3>
                  <ul class="quickmenu">
                    <li><a href="#" title="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                    <li><a href="#" title="#">Praesent posuere tellus a luctus aliquet.</a></li>
                    <li><a href="#" title="#">Phasellus imperdiet mi eget sollicitudin molestie.</a></li>
                    <li><a href="#" title="#">In accumsan tortor eget massa bibendum, ut suscipit elit maximus.</a></li>
                    <li><a href="#" title="#">Nulla sodales turpis vitae dapibus convallis.</a></li>
                </ul>
            </div>
            <div class="overlay-id4 overlay-item">
               <h3>Choose option</h3>
                  <ul class="quickmenu">
                    <li><a href="#" title="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                    <li><a href="#" title="#">Praesent posuere tellus a luctus aliquet.</a></li>
                    <li><a href="#" title="#">Phasellus imperdiet mi eget sollicitudin molestie.</a></li>
                    <li><a href="#" title="#">In accumsan tortor eget massa bibendum, ut suscipit elit maximus.</a></li>
                    <li><a href="#" title="#">Nulla sodales turpis vitae dapibus convallis.</a></li>
                </ul>
            </div>
            <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
               <!-- Indicators -->
               <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
               </ol>
               <!-- Wrapper for slides -->
               <div class="carousel-inner" role="listbox">
                  <div class="item active">
                     <div class="carousel-caption">                       
                     </div>
                  </div>
                  <div class="item">
                     <div class="carousel-caption">                       
                     </div>
                  </div>
                  <div class="item">
                     <div class="carousel-caption">                        
                     </div>
                  </div>
               </div>
               <!-- Controls -->
               <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
               <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
               <span class="sr-only">Previous</span>
               </a>
               <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
               <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
               <span class="sr-only">Next</span>
               </a>
            </div>
         </div>
      </div>
   </div>
   <div class="row visible-xs visible-sm ">
      <div class="col-md-12 mobile-menu-bg">
         <ul class="information_menu_mobile">
            <li class="active"><a href="#"><i class="fa fa-calendar-plus-o"></i> <span class="hidden-xs">Lorem ipsum</span></a></li>
            <li><a href="#"><i class="fa fa-commenting-o"></i> <span class="hidden-xs">Praesent posuere</span></a></li>
            <li><a href="#"><i class="fa fa-medkit"></i> <span class="hidden-xs">Phasellus imperdiet</span></a></li>
            <li><a href="#"><i class="fa fa-heartbeat"></i> <span class="hidden-xs">In accumsan</span></a></li>
         </ul>
         <div class="clearfix"></div>
      </div>
   </div>
</div>
    
</body>
</html>