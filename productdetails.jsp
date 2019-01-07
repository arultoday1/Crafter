<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<title>Shop Details</title>
</head>
<body>
<style>
        .work {
  padding-bottom: 40px;
  margin-top: 60px;
}
.work * {
  box-sizing: border-box;
}
.work .category-buttons {
  text-align: center;
  margin: 0 0 60px 0;
}
@media (max-width: 610px) {
  .work .category-buttons {
    margin: 0 0 30px 0;
  }
  .work .category-buttons a {
    display: inline-block;
    width: 46%;
    padding: 12px 10px !important;
    margin: 1.5% 1% !important;
  }
  .work .category-buttons a:nth-child(even) {
    margin-right: 0;
  }
  .work .category-buttons a:nth-child(odd) {
    margin-left: 0;
  }
}
@media (min-width: 611px) {
  .work .category-buttons a:first-child {
    margin-left: 0;
  }
  .work .category-buttons a:last-child {
    margin-right: 0;
  }
}
.work .category-buttons a {
  color: #9A9A9A;
  text-decoration: none;
  padding: 9px 15px;
  border: 1px solid #9A9A9A;
  margin: 0 10px;
  cursor: pointer;
}
.work .category-buttons a.active {
  color: #373B3D;
  border: 1px solid #373B3D;
}
.work .grid {
  margin-top: 40px;
  width: 100%;
  max-width: 960px;
  margin: 0 auto;
  position: relative;
  -webkit-transition: all 750ms cubic-bezier(1, 0, 0, 1);
  transition: all 750ms cubic-bezier(1, 0, 0, 1);
}
@media (max-width: 960px) {
  .work .grid {
    width: 700px;
  }
}
@media (max-width: 720px) {
  .work .grid {
    width: 100%;
  }
}
.work .grid .animating {
  -webkit-transition: all 750ms cubic-bezier(0.175, 0.885, 0.32, 1.1);
  transition: all 750ms cubic-bezier(0.175, 0.885, 0.32, 1.1);
}
.work .grid .setScale {
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}
.work .grid .show {
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
  opacity: 1;
}
.work .card {
  background: #fff;
  display: block;
  text-decoration: none;
  color: #2b2b2b;
  width: 32%;
  box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1), 0 1px 5px rgba(0, 0, 0, 0.15);
  transform-origin: center center;
  -webkit-transform: translateZ(0);
  -moz-transform: translateZ(0);
  -ms-transform: translateZ(0);
  -o-transform: translateZ(0);
  transform: translateZ(0);
  -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
  opacity: 0;
}
@media (max-width: 700px) {
  .work .card {
    width: 49.25%;
  }
}
@media (max-width: 480px) {
  .work .card {
    width: 100%;
  }
}
.work .card img {
  display: block;
  width: 100%;
}
.work .card .title {
  padding: 10px;
  color: #2b2b2b;
}
.work .guide {
  width: 32%;
  position: absolute;
  left: 0;
  top: 0;
  z-index: -1000;
}
@media (max-width: 700px) {
  .work .guide {
    width: 49.25%;
  }
}
@media (max-width: 480px) {
  .work .guide {
    width: 100%;
  }
}
 </style>
    <script type="text/javascript">
        $(document).ready(function() {
  var projects = $('.card');
  var filteredProjects = [];
  var selection = "all";
  var running = false;
  window.setTimeout(function() {
    $('.all').trigger('click');
  }, 150);

  $(window).resize(function() {
    buildGrid(filteredProjects);
  });

  $('.category-buttons a').on('click', function(e) {
    e.preventDefault();
    if (!running) {
      running = true;
      selection = $(this).data('group');
      $('.category-buttons a').removeClass('active');
      $(this).addClass('active');
      filteredProjects = [];
      for (i = 0; i < projects.length; i++) {
        var project = projects[i];
        var dataString = $(project).data('groups');
        var dataArray = dataString.split(',');
        dataArray.pop();
        if (selection === 'all') {
          $(project).addClass('setScale').queue(function(next) {
            filteredProjects.push(project);
            next();
          }).queue(function(next) {
            $(this).removeClass('setScale');
            next();
          }).queue(function(next) {
            $(this).addClass('animating show')
            next();
          }).delay(750).queue(function() {
            running = false;
            $(this).removeClass('animating').dequeue();
          });
        } else {
          if ($.inArray(selection, dataArray) > -1) {
            $(project).addClass('setScale').queue(function(next) {
              filteredProjects.push(project);
              next();
            }).queue(function(next) {
              $(this).removeClass('setScale');
              next();
            }).queue(function(next) {
              $(this).addClass('animating show')
              next();
            }).delay(750).queue(function() {
              running = false;
              $(this).removeClass('animating').dequeue();
            });
            
          } else {
            $(project).queue(function(next) {
              $(this).addClass('animating');
              next();
            }).queue(function(next) {
              $(this).removeClass('show');
              next();
            }).delay(750).queue(function() {
              $(this).removeClass('animating').dequeue();
            });

            
          }
        }
      }
      buildGrid(filteredProjects);
    }
  })

  function buildGrid(projects) {
    var left = 0;
    var top = 0;
    var totalHeight = 0;
    var largest = 0;
    var heights = [];
    for (i = 0; i < projects.length; i++) {
      $(projects[i]).css({
        height: 'auto'
      });
      heights.push($(projects[i]).height());
    }
    var maxIndex = 0;
    var maxHeight = 0;

    for (i = 0; i <= heights.length; i++) {
      if (heights[i] > maxHeight) {
        maxHeight = heights[i];
        maxIndex = i;
        $('.guide').height(maxHeight);
      }
      if (i === heights.length) {
        for (i = 0; i < projects.length; i++) {
          $(projects[i]).css({
            position: 'absolute',
            left: left + '%',
            top: top
          });
          left = left + ($('.guide').width() / $('#grid').width() * 100) + 2;

          if (i === maxIndex) {
            $(projects[i]).css({
              height: 'auto'
            });
          } else {
            $(projects[i]).css({
              height: maxHeight
            });
          }
          if ((i + 1) % 3 === 0 && projects.length > 3 && $(window).width() >= 700) {
            top = top + $('.guide').height() + 20;
            left = 0;
            totalHeight = totalHeight + $('.guide').height() + 20;

          } else if ((i + 1) % 2 === 0 && projects.length > 2 && $(window).width() < 700 && $(window).width() >= 480) {
            top = top + $('.guide').height() + 20;
            left = 0;
            totalHeight = totalHeight + $('.guide').height() + 20;

          } else if ((i + 1) % 1 === 0 && projects.length > 1 && $(window).width() < 480) {
            top = top + $('.guide').height() + 20;
            left = 0;
            totalHeight = totalHeight + $('.guide').height() + 20;
          }
          $('#grid').height(totalHeight + $('.guide').height());
        }
      }
    }
  }
})
    </script>
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
        <li><a href="index.jsp">HOME</a></li>        
        <li><a href="storedetails.jsp">Store Details</a></li>        
        <li><a href="productdetails.jsp">Product Details</a></li>
        <li class="active"><a href="graphical.jsp">Analysis Date Wise</a></li>        
      </ul>
      <ul class="nav navbar-nav navbar-right">                
         <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>  
      </ul>
    </div>
  </div>
</nav>     

        <div class="work">
  <div class="category-buttons">
    <a href="#" class="active all" data-group="all">All</a>
    <a href="#" data-group="city">apple</a>
    <a href="#" data-group="nature">samsung</a>
    <a href="#" data-group="food">Realme</a>
    <a href="#" data-group="sports">OPPO</a>    
  </div>

  <div id="grid" class="grid">
    <a class="card" href="#" data-groups="city,">
      <img src="images/apple%20black.jpg" class="img-rounded" />
      <div class="title"> apple black</div>
    </a>
    <a class="card" href="#" data-groups="nature,">
      <img src="images/SAMSUNG%20GALAXY%20A7.jpg" class="img-rounded" />
      <div class="title">SamSung Galaxy A7</div>
    </a>
      <a class="card" href="#" data-groups="nature,">
      <img src="images/SAMSUNG%20GALAXY%20J8.jpg" class="img-rounded"/>
      <div class="title">SamSung Galaxy A8</div>
    </a>
      
       <a class="card" href="#" data-groups="nature,">
      <img src="images/Samsung%20Galaxy%20Note%208.jpg" class="img-rounded" />
      <div class="title">Samsung Galaxy Note 8</div>
    </a>
    <a class="card" href="#" data-groups="food,">
      <img src="images/Realme%202.jpeg" />
      <div class="title">Realme 2</div>
    </a>
    <a class="card" href="#" data-groups="sports,people,">
      <img src="images/Oppo%20A3s.jpg" class="img-rounded" />
      <div class="title">Oppo A3</div>
    </a>
      <a class="card" href="#" data-groups="sports,people,">
      <img src="images/OPPO%20F9.jpg" class="img-rounded" />
      <div class="title">Oppo F9</div>
    </a>
       <a class="card" href="#" data-groups="sports,people,">
      <img src="images/Oppo%20F9%20Pro.jpg" class="img-rounded" />
      <div class="title">Oppo F9 Pro</div>
    </a>
    <a class="card" href="#" data-groups="people,food,">
      <img src="images/RealMe%201.jpg" class="img-rounded" />
      <div class="title">Realme 1</div>
    </a>
    <a class="card" href="#" data-groups="city,people,">
      <img src="images/apple%20gold.jpg" class="img-rounded" />
      <div class="title">Apple Gold</div>
    </a>
      <a class="card" href="#" data-groups="city,people,">
      <img src="images/apple%20red%20gold.jpg" class="img-rounded" />
      <div class="title">Apple Read God</div>
    </a>
      <a class="card" href="#" data-groups="city,people,">
      <img src="images/apple%20white.jpeg" class="img-rounded" />
      <div class="title">Apple White</div>
    </a>
    <a class="card" href="#" data-groups="nature,food,">
      <img src="images/Realme%20C1.jpg" class="img-rounded" />
      <div class="title">Realme C1</div>
    </a>
    <a class="card" href="#" data-groups="food,people,">
      <img src="images/Redmi%206%20Pro.jpg" />
      <div class="title">Redmi Pro</div>
    </a>
    <a class="card" href="#" data-groups="sports,people,">
      <img src="images/OPPO%20F7.jpeg" class="img-rounded" />
      <div class="title">Oppo F7</div>
    </a>
    <a class="card" href="#" data-groups="people,food">
      <img src="images/Oppo%20F9%20Pro.jpg" class="img-rounded" />
      <div class="title">Oppo Pro</div>
    </a>
      <a class="card" href="#" data-groups="people,food">
      <img src="images/apple%20black.jpg" class="img-rounded" />
      <div class="title">Apple black</div>
    </a>
      <a class="card" href="#" data-groups="people,food">
      <img src="images/apple%20black.jpg" class="img-rounded" />
      <div class="title">apple white</div>
    </a>
      <a class="card" href="#" data-groups="people,food">
      <img src="images/apple%20black.jpg" class="img-rounded" />
      <div class="title">apple gole</div>
    </a>
      <a class="card" href="#" data-groups="people,food">
      <img src="images/apple%20black.jpg" class="img-rounded" />
      <div class="title">apple white black</div>
    </a>
      <a class="card" href="#" data-groups="people,food">
      <img src="images/apple%20black.jpg" class="img-rounded" />
      <div class="title">apple gold </div>
    </a>
    <div class="guide"></div>
  </div>
</div>

</body>
</html>