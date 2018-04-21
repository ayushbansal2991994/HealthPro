<html>
  <head>
    
    <title>Add Supplement</title>
    
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
			response.sendRedirect("../LoginPage.jsp");
		}
	%>
   <div class="container">
			<div class="row">
				<div class="col-lg-12 ">
						<a class="btn btn-link toplink btn-lg" href="/HealthPro/siteStuffs/admindashboard.jsp"><b style="color: silver;">Home</b>
						</a><br/>
						<h2 style="color: black;text-align: center;">
						Add Supplement
					</h2>
					<br />
					<div class="col-lg-3"></div>
					<div class="well col-lg-6" align="left">
						<form action="/HealthPro/addSupplement" method="post" id="form">
							<div class=form-group">
								<label for="fat_loss" class="control-label col-sm-4">
									Fat Loss:
								</label>
								<input type="text" name="fat_loss" id="fat_loss"
									placeholder="fat_loss" required>
								<br />
								<br />
								<label for="maintain" class="control-label col-sm-4">
									Maintain Weight:
								</label>
								<input type="text" name="maintain" id="maintain"
									placeholder="maintain" required/>
								<br />
								<br />
								<label for="gain_weight" class="control-label col-sm-4">
									Gain Weight:
								</label>
								<input type="text" name="gain_weight" id="gain_weight" placeholder="gain_weight" required/>
								<br />
								<br />
								<center>
									<input type="button" class="btn btn-info" value="Submit"
										onclick="validate1()" />
								</center>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">

function validate1() {

	var ck_name = /^[A-Za-z ]{4,50}$/;

	var fat_loss = document.getElementById("fat_loss").value;
	var maintain = document.getElementById("maintain").value;
	var gain_weight = document.getElementById("gain_weight").value;
	

	if (!ck_name.test(fat_loss)) {
		alert("Please Enter valid Fat Loss Supplement .");
		return false;
	}
	if (!ck_name.test(maintain)) {
		alert("Please Enter valid Maintain Weight Supplement .");
		return false;
	}
	if (!ck_name.test(gain_weight)) {
		alert("Please Enter valid Gain Weight .");
		return false;
	}

	
 document.getElementById("form").submit();
}
</script>
  </body>
</html>
