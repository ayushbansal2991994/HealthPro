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
							<form action="/HealthPro/deletenonVegProtein" method="post" id="form">
							<div class=form-group">
								<label for="nvegP">
									Non Veg Protein
								</label>
								<input type="text" id="nvegP" name="nvegP"
									placeholder="Non Veg Protein" />
								
							</div>
							<br />
							<input type="submit" class="btn btn-info" value="Submit"
								 />
						</form>
					</div>
				</div>
			</div>
		</div>
  </body>

