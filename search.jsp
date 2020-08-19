<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
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



			<li><a href="#">Home</a></li>
			<li><a href="viewuser.jsp">Profile</a></li>
			<li><a href="pay.jsp">Search</a></li>
		</ol>

		<div class="container" id="main-content-div-search">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
					<div class="panel panel-primary" id="search">

						<div class="panel-heading">

							<h4 style="color: blue">Search For Brides/BrideGrooms</h4>
						</div>

						<div class="panel-body" id="searchscroll1">
							<form method="post">
								<div class="form-group">
									<label>Search:</label>
								</div>
								<div class="form-group">
									<input type="button" class="form-control btn btn-success"
										id="searchbyage" name="searchbyage" value="searchbyage" onclick="window.location='searchbyage.jsp'"/> <input
										type="button" class="form-control btn btn-success"
										id="searchbysign" name="searchbysign" value="searchbysign" onclick="window.location='searchbysign.jsp'"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>