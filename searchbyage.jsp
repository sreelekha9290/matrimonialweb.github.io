<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SearchByAge</title>
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

		<jsp:include page="header.jsp"></jsp:include>

		<ol class="breadcrumb">


			<li><a href="#">Home</a>
			</li>
			<li><a href="viewuser.jsp">Profile</a>
			</li>
			<li><a href="pay.jsp">Search</a>
			</li>
		</ol>

		<div class="container" id="main-content-div-search">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
					<div class="panel panel-primary" id="searchage">

						<div class="panel-heading">
							<h4 style="color: blue">Search By Age</h4>
						</div>
						<div class="panel-body" id="searchagescroll1">
							<form action="searchbyage.do" method="post">
								<div class="form-group">

									<table class="table table-striped">
										<thead>
										<tbody>
											<%-- <c:forEach items="${ages}" var="a">
										<tr>
											<td>Id:</td>
											<td>${a.id()}</td>
										</tr> --%>
											<%-- <c:forEach items="${users}" var="us"> --%>
											<%-- <tr>
													<td>Id:</td>
													<td>${users.getId()}</td>
												</tr> --%>
											<%-- <tr>
													<td>Profile</td>
													<td>${us.profile()}</td>
												</tr>
												<tr>
													<td>Name:</td>
													<td>${us.name()}</td>
												</tr>
												<tr>
													<td>Gender:</td>
													<td>${us.gender()}</td>
												</tr>
												<tr>
													<td>Age:</td>
													<td>${us.age()}</td>
												</tr>
												<tr>
													<td>Religion:</td>
													<td>${us.religion()}</td>
												</tr>
												<tr>
													<td>Language:</td>
													<td>${us.language()}</td>
												</tr>
												<tr>
													<td>Country:</td>
													<td>${us.country()}</td>
												</tr>
												<tr>
													<td>E-mail:</td>
													<td>${us.email()}</td>
												</tr>
												<tr>
											<td>Password:</td>
											<td>${user.getPassword()}</td>
										</tr>
												<tr>
													<td>Mobile:</td>
													<td>${us.mobile()}</td>
												<tr>
													<td>Sign:</td>
													<td>${us.sign()}</td>
												</tr>
										
											</c:forEach> --%>
										</tbody>
									</table>

								</div>
								<div class="form-group">
									<label for="s">Search By Age:</label><input type="text" id="s"
										name="s" placeholder="Enter Age to Search" />
								</div>
								<div class="form-group">
									<input type="submit" class="form-control btn btn-success"
										id="searchage" name="searchage" value="searchbyage">
									<input type="reset" class="form-control btn btn-danger"
										id="reset" name="reset" value="reset">
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