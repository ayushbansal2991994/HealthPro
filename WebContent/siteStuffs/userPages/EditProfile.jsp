<html>
	<head>
		<title>SelectGoal</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="/HealthPro/siteStuffs/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="/HealthPro/siteStuffs/css/bootstrap-theme.min.css">
		<script type="text/javascript"
			src="HealthPro/siteStuffs/js/jquery.min.js">
</script>
		<script type="text/javascript"
			src="HealthPro/siteStuffs/js/bootstrap.min.js">
</script>
	</head>
	<body>
	<%if(session.getAttribute("UserName")==null||(session.getAttribute("UserName").toString()).equals("siteadmin"))
    {
        response.sendRedirect("../LoginPage.jsp");
    } %>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 " align="center">
					<h2 style="color: black;">
						Edit Profile
					</h2>
					<br />
					<div class="col-lg-3"></div>
					<div class="well col-lg-6" align="left">
						<form action="/HealthPro/editProfile" method="post" id="form">
							<div class=form-group">
								<label for="fName" class="control-label col-sm-4">
									First Name:
								</label>
								<input type="text" name="fName" id="fName"
									 value="${account.firstName}">
								<br />
								<br />
								<label for="lName" class="control-label col-sm-4">
									Last Name:
								</label>
								<input type="text" name="lName" id="lName"
								 value="${account.lastName}" />
								<br />
								<br />
								<label for="email" class="control-label col-sm-4">
									Email:
								</label>
								<input type="text" name="email" id="email"  value="${account.email}" />
								<br />
								<br />
								<label for="confirmEmail" class="control-label col-sm-4">
									Confirm Email:
								</label>
								<input type="text" name="confirmEmail" id="confirmEmail"  />
								<br />
								<br />
								<label for="dob" class="control-label col-sm-4">
									Date of Birth:
								</label>
								<input type="text" name="dob" id="dob"
									 value="${account.dob}">
								<br />
								<br />
								<label for="phone" class="control-label col-sm-4">
									Phone Number:
								</label>
								<input type="text" name="phone" id="phone"
									  value="${account.phone}">
								<br />
								<br />
								<label for="recoveryEmail" class="control-label col-sm-4">
									Recovery Email:
								</label>
								<input type="text" name="recoveryEmail" id="recoveryEmail"
									  value="${account.recoveryEmail}">
								<br />
								<br />
								<center><input type="submit" class="btn btn-info" value="Submit" >
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
	var ck_password = /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
	var phoneno = /^\d{10}$/;

	var fName = document.getElementById("fName").value;
	var lName = document.getElementById("lName").value;
	var email = document.getElementById("email").value;
	var confirmEmail = document.getElementById("confirmEmail").value;
	var phone = document.getElementById("phone").value;
	var recoveryEmail = document.getElementById("recoveryEmail").value;

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

 	document.getElementById("form").submit();
}
</script>
	</body>
</html>
