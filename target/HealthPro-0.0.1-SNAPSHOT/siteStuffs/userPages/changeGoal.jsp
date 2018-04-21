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
      <script type="text/javascript">
function validate1() {

	
	var value = /^\b(|1[2-9][0-9]|200)\b$/;
	var value1 = /^\b(4[0-9]|[5-9][0-9]|1[0-4][0-9]|150)\b$/;
	var value2=  /^\b(1[8-9]|[2-5][0-9]|60)\b$/;
	
	var  height= document.getElementById("height").value;
	var weight = document.getElementById("weight").value;
	var age = document.getElementById("age").value;
	
	if (!value.test(height)) {
		alert("Please Enter Valid Height between 120 to 200 cm");
		return false;
	}
	
	if (!value1.test(weight)) {
		alert("Please Enter Valid Weight between 40 to 150 kilos");
		return false;
	}

	if (!value2.test(age)) {
		alert("Please Enter Valid Age between 18 to 60");
		return false;
	}
	
	document.getElementById("form").submit();
}

</script>
      
	</head>

	<body>
	<%@page import="util.GoalDAO,bean.Goal" %>
	<%
	Goal goal=GoalDAO.getGoal((String)session.getAttribute("UserName"));
    if(session.getAttribute("UserName")==null||(session.getAttribute("UserName").toString()).equals("siteadmin"))
    {
        response.sendRedirect("../LoginPage.jsp");
    }
    else if(goal.getUsername() == null){
    response.sendRedirect("selectGoal.jsp");
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
							 Change Goal
						</h2>
					</center>
					<br />
					<br />
					<br />
					<div class="col-lg-3 "></div>
					<div class="well col-lg-6">
						<form action="/HealthPro/changeGoal" method="post" id="form">
							<div class=form-group">
								<label for="Goal">
									Change Goal
								</label>
								<br />
								<input type="radio" name="Goal" value="Gain Weight" id="G"
								checked >
								Gain Weight
								<br>
								<input type="radio" name="Goal" value="Maintain" id="M" >
								Maintain
								<br>
								<input type="radio" name="Goal" value="Weight Loss" id="L" >
								Weight Loss
								<br>
								<br />
								<label for="height">
									Height
								</label>
								<input type="text" id="height" name="height"
									placeholder="height in cms" value="${goal.height}" />
								<br />
								<br />
								<label for="age">
									Age
								</label>
								<input type="text" id="age" name="age"
									placeholder="age in years" value="${goal.age}" />
								<br />
								<br />
								<label for="weight">
									Weight
								</label>
								<input type="text" id="weight" name="weight"
									placeholder="weight in kgs" value="${goal.weight}" />
								<br />
								<br />
								<input type="radio" name="gender" value="M" id="M" checked>
								Male
								<br>
								<input type="radio" name="gender" value="F" id="F">
								Female
								<br>
							</div>
							<br />
							<input type="button" class="btn btn-info" value="Submit"
								onclick="validate1()" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
