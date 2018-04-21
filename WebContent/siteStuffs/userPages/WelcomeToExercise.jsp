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
			src="/HealthPro/siteStuffs/js/jquery.min.js">
</script>
		<script type="text/javascript"
			src="/HealthPro/siteStuffs/js/bootstrap.min.js">
      </script>      
	</head>
	<body>
	<%@page import="util.GoalDAO,bean.Goal" %>
	<% Goal goal=GoalDAO.getGoal((String)session.getAttribute("UserName"));%>
	<% 
		if (session.getAttribute("UserName")==null
				|| ((String)session.getAttribute("UserName")).equals("siteadmin")) {
			response.sendRedirect("../LoginPage.jsp");
		}
		else if(goal.getUsername()==null)
		{
		response.sendRedirect("../dashboard.jsp");
		}
	%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/dashboard.jsp"><b
						style="color: silver;">Home</b> </a>
					<center>
						<h2>
							 Welcome <%= goal.getUsername()%> <br/>
							 <br/>Please Click on the button below to get access to your weekly Workout Routine
						</h2>
					</center>
					<br />
					<br />
					<br />
					<div class="col-lg-5"></div>
					<div class=" col-lg-3">
					<a href="/HealthPro/siteStuffs/userPages/exercise.jsp" class="btn btn-info btn-lg" >Go To Exercise</a>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
