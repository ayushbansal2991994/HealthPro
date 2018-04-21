<html>

	<head>
		<title>Dashboard</title>
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

	<body onload="init()" >
	<%
    if(session.getAttribute("UserName")==null||(session.getAttribute("UserName").toString()).equals("siteadmin"))
    {
        response.sendRedirect("LoginPage.jsp");
    } 

%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<h2><b>Welcome</b>&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/logout"><b style="color: silver;">Logout</b>
						</a>
						<br />
						<br />
						<br />
						<br />
						<br /></h2>
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/userPages/selectGoal.jsp">
					<img src="/HealthPro/siteStuffs/siteImages/selectGoal.png" class="img-square" />
						</a>&emsp;&emsp;&emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/userPages/changeGoal.jsp">
					<img src="/HealthPro/siteStuffs/siteImages/changeGoal.jpg" class="img-circle" />
						</a>&emsp;&emsp;&emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/userPages/Profile.jsp">
					<img src="/HealthPro/siteStuffs/siteImages/profile.png" class="img-square" />
						</a>&emsp;&emsp;&emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/userPages/Settings.jsp">
					<img src="/HealthPro/siteStuffs/siteImages/settings.png" class="img-circle" />
						</a>&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/userPages/selectDiet.jsp">
					<img src="/HealthPro/siteStuffs/siteImages/diet.jpg" class="img-square" />
						</a>&emsp;&emsp;&emsp;&emsp;
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/userPages/WelcomeToExercise.jsp">
					<img src="/HealthPro/siteStuffs/siteImages/exercise.png" class="img-square" />
						</a>&emsp;&emsp;&emsp;&emsp;
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
