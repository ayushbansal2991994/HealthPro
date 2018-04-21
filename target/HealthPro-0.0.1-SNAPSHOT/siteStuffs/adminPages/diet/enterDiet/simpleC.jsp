<html>
	<head>

		<title>Add Diet</title>

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
			response.sendRedirect("../../../LoginPage.jsp");
		}
	%>
    <div class="container">
			<div class="row">
				<div class="col-lg-12 ">
				<div class="col-lg-3 "></div>
				<div class="well col-lg-6">
							<form action="/HealthPro/simpleCarbs" method="post" id="form">
							<div class=form-group">
								<label for="simpleC">
									Simple Carbs
								</label>
								<input type="text" id="simpleC" name="simpleC"
									placeholder="Simple Carbs" />
								<br />
								<br />
								<label for="simpleCVal">
									Value of Carbs
								</label>
								<input type="text" id="simpleCVal" name="simpleCVal"
									placeholder="Value of Carbs" />
							</div>
							<br />
							<input type="button" class="btn btn-info" value="Submit"
								onclick="validate()" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<script>
function validate() {

	var name = /^[A-Za-z ]{3,20}$/;
	var value = /^\b(1[0-9]|[2-9][0-9])\b$/;

	var  simpleC= document.getElementById("simpleC").value;
	var simpleCVal = document.getElementById("simpleCVal").value;
	
	if (!name.test(simpleC)) {
		alert("Please Enter Valid Name of food");
		return false;
	}

	if (!value.test(simpleCVal)) {
		alert("Carb value cannot be greater than 100 in 100 grams of food");
		return false;
	}
	document.getElementById("form").submit();
}
</script>
  </body>
</html>
