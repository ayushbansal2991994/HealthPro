<html>
	<head>
		<title>My JSP 'Profile.jsp' starting page</title>

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
		<style type="text/css">
.title {
	text-align: left;
}
</style>
	</head>

	<body onload="init()">
	<%@page import="util.GoalDAO,bean.Goal"%>
	<%
		if(session.getAttribute("UserName")==null||(session.getAttribute("UserName").toString()).equals("siteadmin"))
    {
        response.sendRedirect("../LoginPage.jsp");
    }
	%>
	
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/dashboard.jsp"><b
						style="color: silver;">Home</b> </a>
						<br/>
					<div class="col-lg-3"></div>
					<h2 align="center">
						Your Profile Details
					</h2>
					<table class="table table-bordered table-hover" align="center">
						<tr>
							<td class="title">
								First Name:
							</td>
							<td>
								${account.firstName}
							</td>
						</tr>
						<tr>
							<td class="title">
								Last Name:
							</td>
							<td>
								${account.lastName}
							</td>
						</tr>
						<tr>
							<td class="title">
								Email:
							</td>
							<td>
								${account.email}
							</td>
						</tr>
						<tr>
							<td class="title">
								Date of Birth:
							</td>
							<td>
								${account.dob}
							</td>
						</tr>
						<tr>
							<td class="title">
								Username:
							</td>
							<td>
								${account.username}
							</td>
						</tr>
						<tr>
							<td class="title">
								Phone Number:
							</td>
							<td>
								${account.phone}
							</td>
						</tr>
						<tr>
							<td class="title">
								Recovery Email:
							</td>
							<td>
								${account.recoveryEmail}
							</td>
						</tr>
						<tr>
							<td class="title">
								Current Goal:
							</td>
							<td>
								${goal.current_goal}
							</td>
						</tr>
						<tr>
							<td class="title">
								Height:
							</td>
							<td>
								${goal.height} cm
							</td>
						</tr>
						<tr>
							<td class="title">
								Weight:
							</td>
							<td>
								${goal.weight} kg
							</td>
						</tr>
						<tr>
							<td class="title">
								Age:
							</td>
							<td>
								${goal.age} 
							</td>
						</tr>
						<tr>
							<td class="title">
								Sex:
							</td>
							<td>
								${goal.sex}
							</td>
						</tr>
						<tr>
							<td class="title">
								BMI:
							</td>
							<td>
								${goal.bmi}
							</td>
						</tr>
						<tr>
							<td class="title">
								BMR:
							</td>
							<td>
								${goal.bmr}
							</td>
						</tr>
						<tr>
							<td class="title">
								Protein Needed:
							</td>
							<td>
								${goal.protein} g
							</td>
						</tr>
						<tr>
							<td class="title">
								Carbs Needed:
							</td>
							<td>
								${goal.carbs} g
							</td>
						</tr>
						<tr>
							<td class="title">
								Fat needed:
							</td>
							<td>
								${goal.fats} g
							</td>
						</tr>
						<tr>
							<td class="title">
								Diet needed:
							</td>
							<td>
								${goal.diet}
							</td>
						</tr>
					</table>
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