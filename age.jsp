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
					<div class="panel panel-primary" id="searchage">

						<div class="panel-heading">
							<h4 style="color: blue">Search By Age</h4>
						</div>
						<div class="panel-body" id="searchagescroll1">
							<form action="searchbyage.do" method="post">
								<div class="form-group">
									<c:if test="${users eq null }">
										<h4>No users are Available</h4>
									</c:if>
									<c:if test="${users ne null }">
										<table class="table table-striped">

											<thead>
												<tr>
													<th>Id:</th>
													<th>Profile:</th>
													<th>Name:</th>
													<th>Gender:</th>
													<th>Age:</th>
													<th>Religion:</th>
													<th>Language:</th>
													<th>Country:</th>
													<th>E-mail:</th>
													<th>Mobile:</th>
													<th>Sign:</th>

												</tr>
											<tbody>

												<c:forEach items="${users}" var="users">
													<tr>
														<td>${users.getId()}</td>
														<td>${users.getProfile()}</td>
														<td>${users.getName()}</td>
														<td>${users.getGender()}</td>
														<td>${users.getAge()}</td>
														<td>${users.getReligion()}</td>
														<td>${users.getLanguage()}</td>
														<td>${users.getCountry()}</td>
														<td>${users.getEmail()}</td>
														<td>${users.getMobile()}</td>
														<td>${users.getSign()}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</c:if>

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