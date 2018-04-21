<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Home</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="siteStuffs/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css"
			href="siteStuffs/css/bootstrap-theme.min.css">
		<script type="text/javascript" src="siteStuffs/js/jquery.min.js">
</script>
		<script type="text/javascript" src="siteStuffs/js/bootstrap.min.js">
</script>
		<style>
		body{
		background-image: url("/HealthPro/siteStuffs/siteImages/IndexPhoto.jpg");
		background-size: 90%;
		}

h1 {
	text-align: center;
	color: black;
}

button {
	color: white;
}
</style>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 ">
					<h2 style="color: silver; ">
						<b>HealthPro</b>
					</h2>
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<h1>
						<a href="siteStuffs/LoginPage.jsp"><button class="btn btn-success btn-lg">
								Go To Login Page
							</button>
						</a>
					</h1>
				</div>
			</div>
		</div>
	</body>
</html>

