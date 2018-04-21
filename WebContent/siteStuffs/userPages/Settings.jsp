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
	<%
			if (session.getAttribute("UserName") == null
					|| (session.getAttribute("UserName").toString())
							.equals("siteadmin")) {
				response.sendRedirect("../LoginPage.jsp");
			}
		%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<h2>
						<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/dashboard.jsp"><b
						style="color: silver;">Home</b> </a>
					</h2>
					<br />
					<br />
					<br />
					<div class="list-group">
						<a href="/HealthPro/siteStuffs/userPages/EditProfile.jsp"
							class="list-group-item">Edit Basic Profile Information</a>
						<a href="/HealthPro/siteStuffs/userPages/DeleteAccount.jsp" class="list-group-item">Delete Account
						</a>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
