 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,
java.sql.*" %>
    
   <%@page import="com.dbcon.DBConn"%>
<%@page import="java.sql.ResultSet"%>

  <%
try{
	Class.forName("com.mysql.jdbc.Driver"); 
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dmcluster","root","root");
	 con = DBConn.create();
	String mon="";
	
	String count="";
	
	PreparedStatement ps=con.prepareStatement("SELECT billdate,COUNT(*),mobilename FROM `dmcluster`.`bill` GROUP BY billdate,mobilename;");
	ResultSet rs=ps.executeQuery();
	
	System.out.println("cdsncdsn"+ps);
	
	while(rs.next()){
		mon=rs.getString(1);
		System.out.println("cdsncdsn"+mon);
		
		count = rs.getString(3);
		System.out.println("cdsncdsn"+count);

	}
	con.close();
}
catch(Exception e){
	out.println("<div  style='width: 50%; margin-left: auto; margin-right: auto; margin-top: 200px;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same.</div>");
	
}
%>  

    
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
  <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
  </script>
  <style>
    .zc-ref {
      display: none;
    }
  </style>
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
        <li class="active"><a href="storedetails.jsp">Store Details</a></li>        
        <li><a href="productdetails.jsp">Product Details</a></li>                        
        <li><a href="graphical.jsp">Analysis Date Wise</a></li>        
      </ul>
      <ul class="nav navbar-nav navbar-right">                
         <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>  
      </ul>
    </div>
  </div>
</nav>     
  <div id='myChart' style="margin-top: 40px;"><a class="zc-ref" href="https://www.zingchart.com/">Charts by ZingChart</a></div>
  <script>
    zingchart.THEME = "classic";
    var myConfig = {
      "background-color": "#f5f7ea",
      "graphset": [{
        "type": "null",
        "x": "2%",
        "y": "3%",
        "height": "25%",
        "width": "31%",
        "border-width": "1px",
        "border-color": "#384653",
        "border-radius": 4,
        "background-color": "#fbfcf7",
        "title": {
          "text": "GROCERY ORDERS",
          "background-color": "none",
          "font-color": "#384653",
          "font-size": "12px",
          "text-align": "center",
          "height": "70px"
        },
        "subtitle": {
          "text": "5920",
          "font-color": "#dd655f",
          "font-size": "24px",
          "bold": true,
          "text-align": "center",
          "height": "40px",
          "padding-top": "25%"
        }
      }, {
        "type": "null",
        "x": "34.6%",
        "y": "3%",
        "height": "25%",
        "width": "31%",
        "border-width": "1px",
        "border-color": "#384653",
        "border-radius": 4,
        "background-color": "#fbfcf7",
        "title": {
          "text": "GROCERY SALES",
          "background-color": "none",
          "font-color": "#384653",
          "font-size": "12px",
          "text-align": "center",
          "height": "70px"
        },
        "subtitle": {
          "text": "$2,402",
          "font-color": "#4cc2bb",
          "font-size": "24px",
          "bold": true,
          "text-align": "center",
          "height": "40px",
          "padding-top": "25%"
        }
      }, {
        "type": "null",
        "x": "67%",
        "y": "3%",
        "height": "25%",
        "width": "31%",
        "border-width": "1px",
        "border-color": "#384653",
        "border-radius": 4,
        "background-color": "#fbfcf7",
        "title": {
          "text": "GROCERY ITEMS SOLD",
          "font-color": "#104053",
          "font-size": "12px",
          "background-color": "none",
          "text-align": "center",
          "height": "70px"
        },
        "subtitle": {
          "text": "11,274",
          "font-color": "#4f5963",
          "font-size": "24px",
          "bold": true,
          "text-align": "center",
          "height": "40px",
          "padding-top": "25%"
        }
      }, {
        "type": "bar",
        "x": "2%",
        "y": "30%",
        "height": "68%",
        "width": "96%",
        "border-width": "1px",
        "border-color": "#384653",
        "border-radius": 4,
        "background-color": "#fbfcf7",
        "legend": {
          "margin": "auto auto 10% auto",
          "toggle-action": "remove",
          "shadow": false,
          "border-radius": 4,
          "background-color": "#FFFFFF",
          "border-color": "#FFFFFF",
          "layout": "float"
        },
        "plotarea": {
          "margin": "45 40 90 60"
        },
        "scale-x": {
          "values": [
            "11-Nov-2018",
            "12-Nov-2018",
            "13-Nov-2018",
            "14-Nov-2018",
            "15-Nov-2018",
            "16-Nov-2018",            
          ],
          "line-color": "#b0aaab",
          "line-width": 1,
          "guide": {
            "visible": false
          },
          "item": {
            "font-color": "#384653"
          },
          "tick": {
            "visible": false
          }
        },
        "scale-y": {
          "values": "0:80:10",
          "line-color": "#FFFFFF",
          "line-width": 1,
          "guide": {
            "visible": true,
            "line-style": "solid"
          },
          "item": {
            "padding-right": "5%",
            "font-color": "#384653"
          },
          "tick": {
            "visible": false
          }
        },
        "series": [{
          "values": [
            11,
            26,
            7,
            44,
            12,
            30
          ],
          "background-color": "#4cc2bb",
          "text": "APPLE",
          "legend-marker": {
            "border-color": "#4cc2bb"
          }
        }, {
          "values": [
            9,
            31,
            12,
            38,
            19,
            34
          ],
          "background-color": "#4c707e",
          "text": "SAMSUNG",
          "legend-marker": {
            "border-color": "#4c707e"
          }
        }, {
          "values": [
            39,
            65,
            12,
            58,
            39,
            24
          ],
          "background-color": "#dd655f",
          "text": "OPPO",
          "legend-marker": {
            "border-color": "#dd655f"
          }
        }, {
          "values": [
            11,
            21,
            17,
            44,
            22,
            16
          ],
          "background-color": "#88a0a9",
          "text": "REALME",
          "legend-marker": {
            "border-color": "#88a0a9"
          }
        }],
        "tooltip": {
          "text": "%v %k in %t",
          "shadow": false,
          "border-radius": 4
        }
      }]
    };

    zingchart.render({
      id: 'myChart',
      data: myConfig,
      height: 500,
      width: '100%'
    });
  </script>
</body>

</html>