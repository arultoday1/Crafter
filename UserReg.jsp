<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.util.*"%> 

<!DOCTYPE html>
<html lang="en">
<head>
<title>Space Register Form Flat Responsive Widget Template :: w3layouts</title>
 
	<!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Space Register Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->

	<!-- css files -->
	<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- css files -->

	<!-- Online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
	<!-- //Online-fonts -->
<style>
input[type="text"], input[type="email"], input[type="password"] {
font-weight: bold;
 color: black;  
    
 
}
</style>
</head>
<body>
<%

Random r= new Random(); 
String key="234ABCDEFGH560IJKLMNOPQRS789TUVWXYZ1";
char c=key.charAt(r.nextInt(key.length()));
char c1=key.charAt(r.nextInt(key.length()));
char c2=key.charAt(r.nextInt(key.length()));
char c3=key.charAt(r.nextInt(key.length()));
char c4=key.charAt(r.nextInt(key.length()));


String Secretkey=""+c+""+c1+""+c2+""+c3+""+c4;
System.out.print(Secretkey);


%>
<%

Random num= new Random(); 

String key1="12DEFGHIJ345ABCKLMN678UVWX90OPQRSTYZ";

char k1=key1.charAt(num.nextInt(key1.length()));
char k2=key1.charAt(num.nextInt(key1.length()));
char k3=key1.charAt(num.nextInt(key1.length()));
char k4=key1.charAt(num.nextInt(key1.length()));
char k5=key1.charAt(num.nextInt(key1.length()));


String Secretk=""+k1+""+k2+""+k3+""+k4+""+k5;
System.out.print(Secretk);


%>
	<!-- Main Content -->
	<div class="main">
		<div class="main-w3l">
			<h1 class="logo-w3">Space Register Form</h1>
			<div class="w3layouts-main">
				<h2><span>User Register now</span></h2>
					<form action="Registration?keyma=<%=Secretkey%>" method="post">
						<input placeholder="Full Name" name="name" type="text" required="">
						<input placeholder="Email" name="email" type="email" required="">
						<input placeholder="Phone Number" name="phone" type="text" required="">
						<input placeholder="Password" name="password" type="password"  id="password1" required="">
						<input placeholder="Confirm Password" name="cpassword" type="password"  id="password2" required="">
						<input placeholder="Key" name="key"  value="<%=Secretk%>" type="text" required="">
						<input type="submit" value="Register new" name="login">
                        <br>
						<br>
						<a href="userlogin.jsp">Log In</a>
					</form>
			</div>
			<!-- //main -->
			
			<!-- password-script -->
			<script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Passwords Don't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
			<!-- //password-script -->

			<!--footer-->
			<!-- <div class="footer-w3l">
				<p>&copy; 2018 Space Register Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div> -->
			<!--//footer-->
			
		</div>
	</div>
	<!-- //Main Content -->

</body>
</html>
