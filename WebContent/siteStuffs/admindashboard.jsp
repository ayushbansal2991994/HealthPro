<html>
	<head>
		<title>Admin Dashboard</title>
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
		if (session.getAttribute("UserName")==null
				|| !((session.getAttribute("UserName").toString()).equals("siteadmin"))) {
			response.sendRedirect("LoginPage.jsp");
		}
	%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<h2>
						Welcome Admin&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/logout"><b
							style="color: silver;">Logout</b> </a>
						<br />
						<br />
						<br />
					</h2>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/adminPages/diet/addDiet.jsp"> <img
							src="/HealthPro/siteStuffs/siteImages/diet.jpg"
							class="img-circle" /> </a>&emsp;&emsp;&emsp;&emsp;
							&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
							<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/adminPages/addExercise.jsp"> <img
							src="/HealthPro/siteStuffs/siteImages/exercise.png"
							class="img-square" /> </a>&emsp;&emsp;&emsp;&emsp;
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/adminPages/addSupplement.jsp"> <img
							src="/HealthPro/siteStuffs/siteImages/supplement.png"
							class="img-square" /></a><br/><br/><br/>
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/adminPages/diet/editDiet.jsp"> Edit
						Diet </a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/adminPages/diet/deleteDiet.jsp">
						Delete Diet </a>
					<br />
					<br />
				</div>
			</div>
		</div>

	</body>
</html>
