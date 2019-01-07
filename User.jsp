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
<title>User Details</title>
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
        <li><a href="Store.jsp">Store Details</a></li>        
        <li><a href="Product.jsp">Product Details</a></li>                
        <li class="active"><a href="#">User Details</a></li>        
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
                <div class="panel panel-danger">
                        <div class="panel-heading" style="background-color:navy">
                            <div class="row">
                                <div class="col-xs-3">
                                   <span style="font-size: 30px; color:tomato" class="glyphicon glyphicon-user"></span>
                                </div>
                                <div class="col-xs-12">                                    
                                    <div><h3 style="color: white;text-align: left">USER DETAILS</h3></div>
                                </div>
                            </div>
                        </div>
                        
                            <div class="panel-footer">
                            <%
 

			String name="";

			String email1="";
			
			String phone="";
			
			String passord="";

			String confirmpasssword="";
			
			String key="";
    		
			String keyma="";
			
			

%>
	
		<table class="table table-bordered bg-danger">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:lightcoral" >
	
	<th>USER NAME</th>	
	<th>EMAIL</th>
	<th>PHONE</th>	
	<th>PASSWORD</th>	
    <th>CONFIRM PASSWORD</th>
     <th>KEY</th>
    <th>KEY MACHING</th>
	</tr>
<% 

Connection con=DBConn.create();

PreparedStatement ps=con.prepareStatement("SELECT * FROM dmcluster.userregistration u;");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	name=rs.getString(1);
	email1=rs.getString(2);
	phone=rs.getString(3);
	passord=rs.getString(4);	
	confirmpasssword=rs.getString(5);
	key=rs.getString(6);
	keyma=rs.getString(7);
	
	%>

<tr>
<td><%=email1%></td>
<td><%=name%></td>
<td><%=phone%></td>
<td><%=passord%></td>
<td><%=confirmpasssword%></td>
<td><%=key%></td>
 <td><%=keyma%></td>
</tr>
                            
   <%}%> 
   </table>                             
                            
                            
                            
                             <div class="clearfix"></div>
                            </div>
                        
                    </div>
                </div>
     <div class="col-sm-1"></div>
    </div>
    </body>
    </html>