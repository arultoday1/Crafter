<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@page import="com.dbcon.DBConn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>



<%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<title>Store Details</title>
    <style>
        body
        {
            background-color: darkgray;
        }

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
        <li class="active"><a href="#">Store Details</a></li>        
        <li><a href="Product.jsp">Product Details</a></li>                
        <li><a href="User.jsp">User Details</a></li>        
        <li><a href="Analysis.jsp">Analysis Date Wise</a></li>        
      </ul>
      <ul class="nav navbar-nav navbar-right">                
         <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>  
      </ul>
    </div>
  </div>
</nav>     

<div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                 <div class="panel panel-warning">
                        <div class="panel-heading" style="background-color:purple">
                            <div class="row">
                                <div class="col-xs-3">
                                    <span style="font-size: 30px; color:green" class="glyphicon glyphicon-home" ></span>                                    
                                </div>
                                <div class="col-xs-12">                                    
                                    <div><h3 style="color: white;text-align: left">STORE DETAILS</h3></div>
                                </div>
                            </div>
                        </div>
                      
                            <div class="panel-footer"> 
                            <%
 

			String shopname="";

			String branch="";
			
			String area="";
			
			String email="";

			String phonenu="";
			
			String password="";
    		
			String confirmpass="";
			
			

%>
	
		<table class="table table-bordered bg-success">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:darkseagreen" >
	
	<th>SHOP NAME</th>	
	<th>BRANCH</th>
	<th>AREA</th>	
	<th>EMAIL</th>	
    <th>PHONE NUMBER</th>
     <th>PASSWORD</th>
    <th>CONFIRM PASSWORD</th>
	</tr>
<% 

Connection con=DBConn.create();

PreparedStatement ps=con.prepareStatement("SELECT * FROM dmcluster.owner o");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	shopname=rs.getString(1);
	branch=rs.getString(2);
	area=rs.getString(3);
	email=rs.getString(4);	
	phonenu=rs.getString(5);
	password=rs.getString(6);
	confirmpass=rs.getString(7);
	
	%>

<tr>
<td><%=shopname%></td>
<td><%=branch%></td>
<td><%=area%></td>
<td><%=email%></td>
<td><%=phonenu%></td>
<td><%=password%></td>
 <td><%=confirmpass%></td>
</tr>
                            
   <%}%> 
   </table>                             
                                                           
                <div class="clearfix"></div>
                          </div>
                       
                    </div>
                </div>
                <div class="col-sm-1"></div>
                        </div>                 
                                                                                 
    