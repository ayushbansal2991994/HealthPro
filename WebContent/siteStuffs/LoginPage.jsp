<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>

		<title>Login Page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="css/bootstrap-theme.min.css">
		<script type="text/javascript" src="js/jquery.min.js">
</script>
		<script type="text/javascript" src="js/bootstrap.min.js">
</script>
	</head>

	<body onload="init()">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 " align="center">
					<h2>
						HealthPro
					</h2>
					<h3>
						Sign in with your HealthPro account
					</h3>
					<div class="col-lg-3"></div>
					<div class="well col-lg-6">
						<img alt="LOGIN ICON"
							src="/HealthPro/siteStuffs/siteImages/Iconshock-Cms-User.ico">
						<form action="/HealthPro/dashboard" method="post">
							<div class=form-group">
								<label for="username">
									Username
								</label>
								<input type="text" id="username" name="username"
									placeholder="username" />
								<br />
								<br />
								<label for="password">
									Password
								</label>
								<input type="password" id="password" name="password"
									placeholder="password" />
							</div>
							<br />
							<input type="submit" class="btn btn-info" value="Sign in" />
						</form>
						<a href="ForgotPassword.jsp" class="btn btn-link btn-md">Forgot
							Password?</a>
						<a href="CreateAccount.jsp" class="btn btn-link btn-md">Create
							Account</a>
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
