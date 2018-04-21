<html>

  <head>
    
    <title>Add Exercise</title>
    
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
						Add Exercise
					</h2>
					<br />
					<div class="col-lg-3"></div>
					<div class="well col-lg-6" align="left">
						<form action="/HealthPro/addExercise" method="post" id="form">
							<div class=form-group">
								<label for="chest" class="control-label col-sm-4">
									Chest:
								</label>
								<input type="text" name="chest" id="chest"
									placeholder="chest" required>
								<br />
								<br />
								<label for="shoulder" class="control-label col-sm-4">
									Shoulder:
								</label>
								<input type="text" name="shoulder" id="shoulder"
									placeholder="shoulder" required/>
								<br />
								<br />
								<label for="tricep" class="control-label col-sm-4">
									Tricep:
								</label>
								<input type="text" name="tricep" id="tricep" placeholder="tricep" required/>
								<br />
								<br />
								<label for="back" class="control-label col-sm-4">
									Back:
								</label>
								<input type="text" name="back" id="back"
									placeholder="back" required/>
								<br />
								<br />
								<label for="bicep" class="control-label col-sm-4">
									Bicep:
								</label>
								<input type="text" name="bicep" id="bicep"
									placeholder="bicep" required>
								<br />
								<br />
								<label for="legs" class="control-label col-sm-4">
									Legs:
								</label>
								<input type="text" name="legs" id="legs"
									placeholder="legs" required>
								<br />
								<br />
								<label for="abs" class="control-label col-sm-4">
									Abs:
								</label>
								<input type="text" name="abs" id="abs"
									placeholder="abs" required>
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

	var ck_name = /^[A-Za-z ]{4,30}$/;

	var chest = document.getElementById("chest").value;
	var shoulder = document.getElementById("shoulder").value;
	var tricep = document.getElementById("tricep").value;
	var back = document.getElementById("back").value;
	var bicep = document.getElementById("bicep").value;
	var legs = document.getElementById("legs").value;
	var abs = document.getElementById("abs").value;

	if (!ck_name.test(chest)) {
		alert("Please Enter valid Chest Exercise .");
		return false;
	}
	if (!ck_name.test(shoulder)) {
		alert("Please Enter valid Shoulder Exercise .");
		return false;
	}
	if (!ck_name.test(tricep)) {
		alert("Please Enter valid Tricep Exercise .");
		return false;
	}
	if (!ck_name.test(back)) {
		alert("Please Enter valid Back Exercise .");
		return false;
	}
	if (!ck_name.test(bicep)) {
		alert("Please Enter valid Bicep Exercise. ");
		return false;
	}
	if (!ck_name.test(legs)) {
		alert("Please Enter valid Legs Exercise .");
		return false;
	}
	if (!ck_name.test(abs)) {
		alert("Please Enter valid Abs Exercise .");
		return false;
	}
	
 document.getElementById("form").submit();
}
</script>
  </body>
</html>
