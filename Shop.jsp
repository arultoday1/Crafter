<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<title>Show Billing</title>
<style>
body {    
    background-image: url("images1/show.jpg");
             background-repeat: no-repeat;
            background-size: 100% 800px;
    color: yellow;
}
</style>
</head>
<body>
<div class="container" style="margin-top:70px">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form action="Billing" method="post">
                    <div class="form-group">
                    <label for="name" class="col-form-label">  Shop Name</label>
                <input type="text" name="showname" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-form-lable">Mobile Name</label>
                        <input type="text" name="mobilename" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-form-lable">Mobile Model</label>
                        <input type="text" name="mobilemodel" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-for-label">Branch</label>
                        <input type="text" name="branch" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="con-password" class="col-for-lable">Price</label>
                        <input type="text" name="price" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="mobile" class="col-for-lable">Bill Date</label>
                        <input type="date" name="billdate" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label for="mobile" class="col-for-lable">Mobile Color</label>
                        <input type="text" name="mobilecolor" class="form-control" required="required">
                    </div>
                    <br>
                    <div class="form-group">
               <input type="submit" value="New Register " id="btnSubmit"  class="btn btn-warning btn-block">                                
            </div>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
</body>
</html>