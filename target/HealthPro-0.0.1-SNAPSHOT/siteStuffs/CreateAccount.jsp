<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	
	<base href="<%=basePath%>">
		<title>CreateAccount</title>
		<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		
		<link rel="stylesheet" type="text/css" href="/HealthPro/siteStuffs/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="/HealthPro/siteStuffs/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="/HealthPro/siteStuffs/js/jquery.min.js">
</script>
		<script type="text/javascript" src="/HealthPro/siteStuffs/js/bootstrap.min.js">
</script>
		<style type="text/css">
body {
	background-image: url("/HealthPro/siteStuffs/siteImages/IndexPhoto.jpg");
}
</style>
	</head>

	<body>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 " align="center">
					<h2 style="color: white;">
						Create your own account
					</h2>
					<br />
					<div class="col-lg-3"></div>
					<div class="well col-lg-6" align="left">

						<form action="/HealthPro/CreateAccount" method="post" id="form">
							<div class=form-group">
								<label for="fName" class="control-label col-sm-4">
									First Name:
								</label>
								<input type="text" name="fName" id="fName"
									placeholder="First Name" required>
								<br />
								<br />
								<label for="lName" class="control-label col-sm-4">
									Last Name:
								</label>
								<input type="text" name="lName" id="lName"
									placeholder="Last Name" required/>
								<br />
								<br />
								<label for="email" class="control-label col-sm-4">
									Email:
								</label>
								<input type="text" name="email" id="email" placeholder="Email" required/>
								<br />
								<br />
								<label for="confirmEmail" class="control-label col-sm-4">
									Confirm Email:
								</label>
								<input type="text" name="confirmEmail" id="confirmEmail"
									placeholder="Confirm Email" required/>
								<br />
								<br />
								<label for="dob" class="control-label col-sm-4">
									Date of Birth:
								</label>
								<input type="date" name="dob" id="dob"
									placeholder="Date of Birth" required>
								<br />
								<br />
								<label for="username" class="control-label col-sm-4">
									Username:
								</label>
								<input type="text" name="username" id="username"
									placeholder="Username" required>
								<br />
								<br />
								<label for="password" class="control-label col-sm-4">
									Password:
								</label>
								<input type="password" name="password" id="password"
									placeholder="Password" required>
								<br />
								<br />
								<label for="confirmPassword" class="control-label col-sm-4">
									Confirm Password:
								</label>
								<input type="password" name="confirmPassword"
									id="confirmPassword" placeholder="Confirm Password" required>
								<br />
								<br />
								<label for="phone" class="control-label col-sm-4">
									Phone Number:
								</label>
								<input type="text" name="phone" id="phone"
									placeholder="Phone Number" required>
								<br />
								<br />
								<label for="recoveryEmail" class="control-label col-sm-4">
									Recovery Email:
								</label>
								<input type="text" name="recoveryEmail" id="recoveryEmail"
									placeholder="Recovery Email" required>
								<br />
								<br />
								<label for="secQ1" class="control-label col-sm-4">
									Security Question1:
									<br />
									What is your birth city?
								</label>
								<br />
								<input type="text" name="secQ1" id="secQ1" required>
								<br />
								<br />
								<label for="secQ2" class="control-label col-sm-4">
									Security Question2:
									<br />
									What is your first school's name?
								</label>
								<br />
								<input type="text" name="secQ2" id="secQ2" required>
								<br />
								<br />
								<br />
								<center>
									<input type="button" class="btn btn-info" value="Submit"
										onclick="validate1()" />
								</center>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">

function validate1() {

	var ck_name = /^[A-Za-z0-9 ]{3,20}$/;
	var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	var ck_username = /^[A-Za-z0-9_]{6,20}$/;
	var ck_password = /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
	var phoneno = /^\d{10}$/;

	var fName = document.getElementById("fName").value;
	var lName = document.getElementById("lName").value;
	var email = document.getElementById("email").value;
	var confirmEmail = document.getElementById("confirmEmail").value;
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	var phone = document.getElementById("phone").value;
	var confirmPassword = document.getElementById("confirmPassword").value;
	var recoveryEmail = document.getElementById("recoveryEmail").value;
	var secQ1 = document.getElementById("secQ1").value;
	var secQ2 = document.getElementById("secQ2").value;

	if (password !== confirmPassword) {
		alert("Password Doesnot Match");
		return false;
	}
	if (email !== confirmEmail) {
		alert("Email Doesnot Match");
	return false;
	}
	if (!ck_name.test(fName)) {
		alert("Please Enter valid First Name .");
		return false;
	}
	if (!ck_name.test(lName)) {
		alert("Please Enter valid Last Name .");
		return false;
	}
	if (!ck_email.test(email)) {

		alert("You must enter a valid email address.");
		return false;
	}
if (!ck_username.test(username)) {
		alert("Your valid UserName should have no special character .");
	return false;
	 }
 	if (!ck_password.test(password)) {
  alert("You must enter a valid Password ");
 	 return false;
 		}
 if (!ck_email.test(recoveryEmail)) {
  alert("You must enter a valid Recovery email address.");
  return false;
 }
 if (recoveryEmail == email) {
  alert("You must enter a different email for Recovery.");
  return false;
 }
 
 if (!phoneno.test(phone)) {
  alert("You must enter a valid phone no.");
  return false;
 }
 if (!ck_name.test(secQ1)) {
  alert("You valid value of Security Question .");
  return false;
 }
 if (!ck_name.test(secQ2)) {
  alert("You valid value of Security Question .");
	return false;
 }
 document.getElementById("form").submit();
}
</script>
	</body>
</html>
