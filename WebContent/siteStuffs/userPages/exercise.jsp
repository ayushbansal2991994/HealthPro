<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<style>
.toplink{
color:red;

}
.title{
color: white;

background-color: grey;

}


</style>
	</head>

	<body >
		<%@page import="util.GoalDAO,bean.Goal"%>
		<%
			Goal goal = GoalDAO.getGoal((String) session
					.getAttribute("UserName"));
		%>
		<%
			if (session.getAttribute("UserName") == null
					|| ((String) session.getAttribute("UserName"))
							.equals("siteadmin")) {
				response.sendRedirect("../LoginPage.jsp");
			}

			if (goal.getDiet() == null) {
				response.sendRedirect("selectDiet.jsp");
			}
		%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/dashboard.jsp"><b
						style="color: silver;">Home</b> </a>
					<br />
					<div class="col-lg-3"></div>
					<h2 align="center" style="color: white;">
						Your Exercise Details are:
					</h2>
					<table class="table table-bordered table-hover" align="center">
						<tr>
							<th class="title">
								
							</th>
							<th class="title">
								<center>Exercises (${set[0]})</center>
							</th>
						</tr>
						<tr>
							<th class="title">
								Day 1:
							</th>
							<td>
								<form action="/HealthPro/changeExercise" method="post" id="form0">
									${exercise[0][1]} ,${exercise[0][2]} ,${exercise[0][3]} ,${exercise[0][4]} ,${exercise[0][5]}
									 ,${exercise[0][6]} ,${exercise[0][7]}
									 <input type="submit" class="btn btn-link " name="want" value="like">
								          <input type="submit" class="btn btn-link toplink" name="dontwant" value="dislike">
									<input type="hidden" id="exercise" name="exercise"
										value="${exercise[0]}" />
										<input type="hidden" id="id" name="id"
										value="${exercise[0][0]}" />
								</form>
							</td>
						</tr>
						<tr>
							<th class="title">
								Day 2:
							</th>
							<td>
							<form action="/HealthPro/changeExercise" method="post" id="form0">
									${exercise[1][1]} ,${exercise[1][2]} ,${exercise[1][3]} ,${exercise[1][4]} ,${exercise[1][5]}
									 ,${exercise[1][6]} ,${exercise[1][7]}
									 <input type="submit" class="btn btn-link " name="want" value="like">
								          <input type="submit" class="btn btn-link toplink" name="dontwant" value="dislike">
									<input type="hidden" id="exercise" name="exercise"
										value="${exercise[1]}" />
										<input type="hidden" id="id" name="id"
										value="${exercise[1][0]}" />
								</form>
								</td>
						</tr>
						<tr>
							<th class="title">
								Day 3:
							</th>
							<td>
							<form action="/HealthPro/changeExercise" method="post" id="form0">
									${exercise[2][1]} ,${exercise[2][2]} ,${exercise[2][3]} ,${exercise[2][4]} ,${exercise[2][5]}
									 ,${exercise[2][6]} ,${exercise[2][7]}
									 <input type="submit" class="btn btn-link " name="want" value="like">
								          <input type="submit" class="btn btn-link toplink" name="dontwant" value="dislike">
									<input type="hidden" id="exercise" name="exercise"
										value="${exercise[2]}" />
										<input type="hidden" id="id" name="id"
										value="${exercise[2][0]}" />
								</form>
								</td>
						</tr>
						<tr>
							<th class="title">
								Day 4:
							</th>
							<td>
							<form action="/HealthPro/changeExercise" method="post" id="form0">
									${exercise[3][1]} ,${exercise[3][2]} ,${exercise[3][3]} ,${exercise[3][4]} ,${exercise[3][5]}
									 ,${exercise[3][6]} ,${exercise[3][7]}
									 <input type="submit" class="btn btn-link " name="want" value="like">
								          <input type="submit" class="btn btn-link toplink" name="dontwant" value="dislike">
									<input type="hidden" id="exercise" name="exercise"
										value="${exercise[3]}" />
										<input type="hidden" id="id" name="id"
										value="${exercise[3][0]}" />
								</form>
								</td>
						</tr>
						<tr>
							<th class="title">
								Day 5:
							</th>
							<td>
							${cardio[0]}
								</td>
						</tr>
						<tr>
							<th class="title">
								Day 6:
							</th>
							<td>
								${cardio[1]}
								</td>
						</tr>
						<tr>
							<th class="title">
								Day 7:
							</th>
							<td>
							${cardio[2]}
								</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
