<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Change Password</title>

		<link rel="stylesheet" type="text/css" href="/HealthPro/siteStuffs/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="/HealthPro/siteStuffs/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="/HealthPro/siteStuffs/js/jquery.min.js">
</script>
		<script type="text/javascript" src="/HealthPro/siteStuffs/js/bootstrap.min.js">
</script>
<style>
body{
background-image: url("/HealthPro/siteStuffs/siteImages/IndexPhoto.jpg");
}
</style>
	</head>
	<body>
	<%
    if(request.getParameter("username")==null)
    {
        response.sendRedirect("LoginPage.jsp");
    }
%>
		<div class="container">
			<div class="row"><div class="col-lg-3 " align="left"></div>
				<div class="col-lg-6 " align="center">
					<h3 style="color: white;">
						Change Password
					</h3>
					<br />
					<br />
					<div class="col-lg-2"></div>
					<div class="well col-lg-6" align="left">
						<form action="/HealthPro/changePassword" method="post"id="form" >
							<div class="form-group">

								<input type="hidden" id="username" name="username"
									value="${param.username}" />

								<label for="password">
									New Password
								</label>
								<input type="password" id="password" name="password" placeholder="New Password"/>
								<br />
								<br />
								<label for="rpassword">
									Re-enter Password
								</label>
								<input type="password" id="rpassword" name="rpassword" placeholder="Re-enter Password"/>
								<br />
								<br />
								</div>
										<input type="button" class="btn btn-info" value="Submit" onclick="validate1()" />
								<br/><br/>
						<input type="button" value="Reset Form" onClick="this.form.reset()" class="btn btn-danger" />
						</form>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">

function validate1() {

var ck_password = /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;

var password = document.getElementById("password").value;
var rpassword = document.getElementById("rpassword").value;

if (!ck_password.test(password)) {
  alert("You must enter a valid Password ");
 	 return false;
 		}
 		if(password!==rpassword)
 		{
 		alert("Password Doesnot Match");
 		return false;
 		}
 		
 		document.getElementById("form").submit();

}

</script>
	</body>
</html>
