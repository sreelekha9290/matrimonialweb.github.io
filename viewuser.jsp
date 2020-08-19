<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

			<li><a href="home.jsp">Home</a>
			</li>
			<li><a href="#">Profile</a>
			</li>
			<li><a href="pay.jsp">Search</a>
			</li>

		</ol>

		<div class="container" id="main-content-div-home">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
					<div class="panel panel-primary" id="home">

						<div class="panel-heading">

							<form method="post">
								<table class="table table-striped">
									<thead>
									<tbody>
										<tr>
											<td>Id:</td>
											<td>${user.getId()}</td>
										</tr>
										<tr>
											<td>Profile</td>
											<td>${user.getProfile()}</td>
										</tr>
										<tr>
											<td>Name:</td>
											<td>${user.getName()}</td>
										</tr>
										<tr>
											<td>Gender:</td>
											<td>${user.getGender()}</td>
										</tr>
										<tr>
											<td>Age:</td>
											<td>${user.getAge()}</td>
										</tr>
										<tr>
											<td>Religion:</td>
											<td>${user.getReligion()}</td>
										</tr>
										<tr>
											<td>Language:</td>
											<td>${user.getLanguage()}</td>
										</tr>
										<tr>
											<td>Country:</td>
											<td>${user.getCountry()}</td>
										</tr>
										<tr>
											<td>E-mail:</td>
											<td>${user.getEmail()}</td>
										</tr>
										<%-- <tr>
											<td>Password:</td>
											<td>${user.getPassword()}</td>
										</tr> --%>
										<tr>
											<td>Mobile:</td>
											<td>${user.getMobile()}</td>
										<tr>
											<td>Sign:</td>
											<td>${user.getSign()}</td>
										</tr>
									</tbody>
								</table>

								<div class="form-group">

									<label class="col-md-3"> <input type="button"
										id="viewallusers" name="viewallusers"
										class="form-control btn btn-success" value="go"
										onclick="window.location='pay.jsp'" /> </label> <label
										class="col-md-2"></label> <label class="col-md-3"> <input
										type="button" id="del" name="del"
										class="form-control btn btn-danger" value="Delete my Account"
										onclick="window.location='del.jsp'" /> </label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>