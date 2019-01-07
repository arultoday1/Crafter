<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
<title>Admin Login</title>
<style>
        body {    
    background-image: url("images/admin.jpg");
             background-repeat: no-repeat;
            background-size: 100% 800px;
}
    </style>
</head>
<body>
<div class="container" style="margin-top:120px">
            <div class="col-md-4"></div>
            <div class="col-md-4">
      <div class="panel panel-primary" style="max-height:40% ; max-height: 40%;">
      <div class="panel-heading">Admin Log In</div>
      <div class="panel-body" >
    
         <div class="well">
        <form action="Admin" method="post">
          <div class="form-group">
            <label for="email" class="col-form-label">Admin</label>
            <input type="email" name="admin" class="form-control">
          </div>
          <div class="form-group">
            <label for="password" class="col-form-label">Password:</label>
            <input type="password" name="apws" class="form-control">
          </div>
            <div class="form-group">
               <input type="submit" value="Log In" class="btn btn-primary btn-block">
               <!-- <br>
                &nbsp;   &nbsp;   &nbsp;   &nbsp;  &nbsp;   &nbsp;  &nbsp; &nbsp; &nbsp;<a href="regs.jsp"> Create an account</a> -->                             
            </div>
        </form>
            
          </div>
          </div>
      </div>      
        </div>
            <div class="col-md-4"></div>
        </div>
</body>
</html>