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
	<body onload="init()">
	<%
		if (session.getAttribute("UserName")==null
				|| !((session.getAttribute("UserName").toString()).equals("siteadmin"))) {
			response.sendRedirect("../../LoginPage.jsp");
		}
	%>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<a class="btn btn-link toplink btn-lg"
						href="/HealthPro/siteStuffs/admindashboard.jsp"><b
						style="color: silver;">Home</b> </a>
					<center>
						<h2>
							Delete Diet to the database
						</h2>
					</center>
					<br />
					<br />
					<br />
					<br />
					<br />
					<a href="deleteDiet/simpleC.jsp"><button class="btn btn-default"  >
						Simple Carbs
					</button></a>
					&emsp;&emsp;&emsp;&emsp;
					<a href="deleteDiet/complexC.jsp"><button class="btn btn-default" >
						Complex Carbs
					</button></a>
					&emsp;&emsp;&emsp;&emsp;
					<a href="deleteDiet/healthyF.jsp"><button class="btn btn-default"  >
						Healthy Fats
					</button></a>
					&emsp;&emsp;&emsp;&emsp;
					<a href="deleteDiet/fruits.jsp"><button class="btn btn-default"  >
						Fruits
					</button></a>
					&emsp;&emsp;&emsp;&emsp;
					<a href="deleteDiet/vegetables.jsp"><button class="btn btn-default" >
						Vegetables
					</button></a>
					&emsp;&emsp;&emsp;&emsp;
					<a href="deleteDiet/vegP.jsp"><button class="btn btn-default"  >
						Veg Protein
					</button></a>
					&emsp;&emsp;&emsp;&emsp;
					<a href="deleteDiet/nvegP.jsp"><button class="btn btn-default"  >
						Non Veg Protein
					</button></a>
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
