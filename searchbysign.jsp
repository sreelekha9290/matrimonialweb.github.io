<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SearchBySign</title>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	
	
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
</script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="css/mycss.css"> -->
</head>

<body>
	<div class="container-fluid">

		<jsp:include page="header1.jsp"></jsp:include>

		<ol class="breadcrumb">



			<li><a href="#">Home</a></li>
			<li><a href="viewuser.jsp">Profile</a></li>
			<li><a href="pay.jsp">Search</a></li>
		</ol>

		<div class="container" id="main-content-div-search">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
					<div class="panel panel-primary" id="searchsign">

						<div class="panel-heading">
							<h4 style="color: blue">Search By sign</h4>
						</div>
						<div class="panel-body" id="searchsignscroll1">
							<form action="searchbysign.do" method="post">
								
								<div class="form-group">
									<label>Search By Sign:</label><input type="text" id="searchsign"
										name="searchsign" placeholder="Enter Sign to Search" />
								</div>
								<div class="form-group">
									<input type="submit" class="form-control btn btn-success"
										id="signsearch" name="signsearch" value="searchbysign"/> <input
										type="reset" class="form-control btn btn-danger" id="reset"
										name="reset" value="reset">
								</div>
							</form>
						</div>
					
					</div>

				</div>

				<div class="col-md-2"></div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>