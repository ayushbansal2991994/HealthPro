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

	<body style="background-image: url('/HealthPro/siteStuffs/siteImages/images.jpeg'); ">
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
						Your Diet Details are:
					</h2>
					<table class="table table-bordered table-hover" align="center">
						<tr>
							<th class="title">
								Meal
							</th>
							<th class="title">
								Protein
							</th>
							<th class="title">
								Fats
							</th>
							<th class="title">
								Simple Carbs
							</th>
							<th class="title">
								Complex Carbs
							</th>
							<th class="title">
								Fruits
							</th>
							<th class="title">
								Vegetables
							</th>
						</tr>
						<tr>
							<th class="title">
								Breakfast:
							</th>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form0">
									${protein[0]}
								          <input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="protein" name="protein"
										value="${protein[0]}" />
								</form>
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form1">
									${fats[0]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="fats" name="fats" value="${fats[0]}" />
								</form>
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form2">
									${simple_carbs[0]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="simple_carbs" name="simple_carbs"
										value="${simple_carbs[0]}" />
								</form>
							</td>
							<td>
								Not included
							</td>
							<td>
								Not included
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form3">
									${vegetables[0]}
									<input type="submit" class="btn btn-link toplink" value="dislike" >
									<input type="hidden" id="vegetables" name="vegetables"
										value="${vegetables[0]}" />
								</form>
							</td>
						</tr>
						<tr>
							<th class="title">
								Lunch:
							</th>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form4">
									${protein[1]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="protein" name="protein"
										value="${protein[1]}" />
								</form>
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form5">
									${fats[1]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="fats" name="fats" value="${fats[1]}" />
								</form>
							</td>
							<td>
								Not included
							</td>
							<td>
								<c:set var="cg" value="${goal.current_goal}"></c:set>
								<c:if test="${cg == 'Gain Weight'}">
									<form action="/HealthPro/changeProb" method="post" id="form6">
										${complex_carbs[0]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[0]}" />
									</form>
									<form action="/HealthPro/changeProb" method="post" id="form7" >
										${complex_carbs[1]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[1]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Maintain'}">
									<form action="/HealthPro/changeProb" method="post" id="form8">
										${complex_carbs[0]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[0]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Weight Loss'}">
									<form action="/HealthPro/changeProb" method="post" id="form9">
										${complex_carbs[0]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[0]}" />
									</form>
								</c:if>
							</td>
							<td>

								<c:set var="cg" value="${goal.current_goal}"></c:set>
								<c:if test="${cg == 'Gain Weight'}">
									<form action="/HealthPro/changeProb" method="post" id="form10">
										${fruits[0]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="fruits" name="fruits"
											value="${fruits[0]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Maintain'}">
									<form action="/HealthPro/changeProb" method="post" id="form11">
										${fruits[0]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="fruits" name="fruits"
											value="${fruits[0]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Weight Loss'}">
							Not included 
							</c:if>
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form12">
									${vegetables[1]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="vegetables" name="vegetables"
										value="${vegetables[1]}" />
								</form>
							</td>
						</tr>
						<tr>
							<th class="title">
								Pre Workout:
							</th>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form13">
									${protein[2]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="protein" name="protein"
										value="${protein[2]}" />
								</form>
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form14">
									${fats[2]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="fats" name="fats" value="${fats[2]}" />
								</form>
							</td>
							<td>
								Not included
							</td>
							<td>
								<c:set var="cg" value="${goal.current_goal}"></c:set>
								<c:if test="${cg == 'Gain Weight'}">
									<form action="/HealthPro/changeProb" method="post" id="form15">
										${complex_carbs[2]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[2]}" />
									</form>
									<form action="/HealthPro/changeProb" method="post" id="form16">
										${complex_carbs[3]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[3]}" />
									</form><br/>
								</c:if>
								<c:if test="${cg == 'Maintain'}">
									<form action="/HealthPro/changeProb" method="post" id="form17">
										${complex_carbs[1]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[1]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Weight Loss'}">
							Not included
							</c:if>
							</td>
							<td>
								Not included
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form18">
									${vegetables[2]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="vegetables" name="vegetables"
										value="${vegetables[2]}" />
								</form>
							</td>
						</tr>
						<tr>
							<th class="title">
								Post Workout:
							</th>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form19">
									${protein[3]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="protein" name="protein"
										value="${protein[3]}" />
								</form>
								<form action="/HealthPro/changeProb" method="post" id="form20">
									${protein[4]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="protein" name="protein"
										value="${protein[4]}" />
								</form>
							</td>
							<td>
								Not included
							</td>
							<td>
								<c:set var="cg" value="${goal.current_goal}"></c:set>
								<c:if test="${cg == 'Gain Weight'}">
									<form action="/HealthPro/changeProb" method="post" id="form21">
										${simple_carbs[1]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="simple_carbs" name="simple_carbs"
											value="${simple_carbs[1]}" />
									</form>
									<form action="/HealthPro/changeProb" method="post" id="form22">
										${simple_carbs[2]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="simple_carbs" name="simple_carbs"
											value="${simple_carbs[2]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Maintain'}">
									<form action="/HealthPro/changeProb" method="post" id="form23">
										${simple_carbs[1]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="simple_carbs" name="simple_carbs"
											value="${simple_carbs[1]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Weight Loss'}">
							Not included
							</c:if>
							</td>
							<td>
								Not included
							</td>
							<td>
								Not included
							</td>
							<td>
								Not included
							</td>
						</tr>
						<tr>
							<th class="title">
								Dinner:
							</th>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form24">
									${protein[5]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="protein" name="protein"
										value="${protein[5]}" />
								</form>
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form25">
									${fats[3]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="fats" name="fats" value="${fats[3]}" />
								</form>
								<form action="/HealthPro/changeProb" method="post" id="form26">
									${fats[4]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="fats" name="fats" value="${fats[4]}" />
								</form>
							</td>
							<td>
								Not Included
							</td>
							<td>
								<c:set var="cg" value="${goal.current_goal}"></c:set>
								<c:if test="${cg == 'Gain Weight'}">
									<form action="/HealthPro/changeProb" method="post" id="form27">
										${complex_carbs[4]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[4]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Maintain'}">
									<form action="/HealthPro/changeProb" method="post" id="form28">
										${complex_carbs[2]}
										<input type="submit" class="btn btn-link toplink" value="dislike">
										<input type="hidden" id="complex_carbs" name="complex_carbs"
											value="${complex_carbs[2]}" />
									</form>
								</c:if>
								<c:if test="${cg == 'Weight Loss'}">
							Not included
							</c:if>
							</td>
							<td>
								Not included
							</td>
							<td>
								<form action="/HealthPro/changeProb" method="post" id="form29" >
									${vegetables[3]}
									<input type="submit" class="btn btn-link toplink" value="dislike">
									<input type="hidden" id="vegetables" name="vegetables"
										value="${vegetables[3]}" />
								</form>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
