<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/js/bootstrap.min.js">
<!-- <link rel="stylesheet" type="text/css" href="css/mycss.css"> -->
</head>

<body>
	<div class="container-fluid">

		<jsp:include page="header.jsp"></jsp:include>

		<ol class="breadcrumb">

			<!-- <li><a href="login.jsp">Home</a></li> -->

			<li><a href="#">Home</a></li>
			<li><a href="viewuser.jsp">Profile</a></li>
			<li><a href="pay.jsp">Search</a></li>
		</ol>

		<div class="container" id="main-content-div-home">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
					<div class="panel panel-primary" id="home">

						<div class="panel-heading" ">

							<h4>Home</h4>
						</div>

						<div class="panel-body" id="homescroll1">

							<img alt="main" src="images/header.jpg">
							 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>