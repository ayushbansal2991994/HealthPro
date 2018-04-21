<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>ForgotPassword.html</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type"
			content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="css/bootstrap-theme.min.css">
		<script type="text/javascript" src="js/jquery.min.js">
</script>
		<script type="text/javascript" src="js/bootstrap.min.js">
</script>
<style>
body{
background-image: url("/HealthPro/siteStuffs/siteImages/IndexPhoto.jpg");
}
</style>
	</head>
	<body onload="init()" >
		<div class="container">
			<div class="row">
				<div class="col-lg-12 " align="center">
					<h3 style="color: white;">
						Forgot Password?
					</h3>
					<br />
					<br />
					<div class="col-lg-3"></div>
					<div class="well col-lg-6" align="left">
						<form action="/HealthPro/forgotPassword" method="post">
							<div class=form-group">
								<label for="email" class="control-label col-sm-4">
									Email:
								</label>
								<input type="text" name="email" id="email" placeholder="Email" />
								<br />
								<br />
								<label for="dob" class="control-label col-sm-4">
									Date of Birth:
								</label>
								<input type="date" name="dob" id="dob"
									placeholder="Date of Birth">
								<br />
								<br />
								<label for="username" class="control-label col-sm-4">
									Username:
								</label>
								<input type="text" name="username" id="username"
									placeholder="Username">
								<br />
								<br />
								<label for="phone" class="control-label col-sm-4">
									Phone Number:
								</label>
								<input type="text" name="phone" id="phone"
									placeholder="Phone Number">
								<br />
								<br />
								<label for="recoveryEmail" class="control-label col-sm-4">
									Recovery Email:
								</label>
								<input type="text" name="recoveryEmail" id="recoveryEmail"
									placeholder="Recovery Email">
								<br />
								<br />
								<label for="secQ1" class="control-label col-sm-4">
									Security Question1:
									<br />
									What is your birth city?
								</label>
								<br />
								<input type="text" name="secQ1">
								<br />
								<br />
								<label for="secQ2" class="control-label col-sm-4">
									Security Question2:
									<br />
									What is your first school's name?
								</label>
								<br />
								<input type="text" name="secQ2">
								<br />
								<br />
								<br />
							</div>
							<center>
								<input type="submit" class="btn btn-info" value="Submit">
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">

function init() {
	var msg = '${param.msg}';
	if (msg) {
		alert(msg);
	}
}
</script>
	</body>
</html>
