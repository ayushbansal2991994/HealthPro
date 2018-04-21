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
				<div class="col-lg-12 ">
				<center>
							<h2 style="color: white;">
								Delete Account
							</h2>
						</center>
						<br/>
					<div class="col-lg-3"></div>
					<div class="well col-lg-6" align="left">
					
						<form action="/HealthPro/deleteAccount" method="post">
							<div class="form-group">
								<label for="username" class="control-label col-sm-4">
									Enter Username
								</label>
								<input type="text" name="username" placeholder="Enter Username" />
								<br/>
								<br/>
							<center><input type="submit" value="DeleteAccount" class="btn btn-info"></center>	
							</div>
						</form>
					</div>
				</div>
			</div>
			</div>
	</body>
</html>
