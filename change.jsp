<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot password</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">

</head>
<body>
	<div class="container-fluid">

		<jsp:include page="header.jsp"></jsp:include>
		<ol class="breadcrumb">

			<!-- <li><a href="login.jsp">Home</a></li> -->

			<li><a href="#">Home</a></li>
			<li><a href="viewuser.jsp">Profile</a></li>
			<li><a href="change.jsp">Change Password</a></li>
			<li><a href="search.jsp">Search</a></li>
		</ol>

		<div class="container" id="main-content-div-signup">

			<div class="row">

				<div class="col-md-3"></div>

				<div class="col-md-6">
					<div class="panel panel-primary">

						<div class="panel-heading">

							<h4>Change password</h4>
						</div>

						<div class="panel-body" id="addscroll">
							<form action="change.do" id="Forgot password" method="post">
								<div class="form-group">

									<label for="email" class="glyphicon glyphicon-user">E-mail:</label><em>*</em>
									<input type="email" id="email" name="email"
										class="form-control" value="${user.getEmail()}"/>


								</div> 
								<div class="form-group">
									<label for="oldpass" class="glyphicon glyphicon-user">old
										password</label><em>*</em> <input type="text" id="oldpass"
										name="oldpass" class="form-control"
										placeholder="Enter old Password" />
								</div>
						
								<div class="form-group">
									<label for="newpass" class="glyphicon glyphicon-user">new
										password</label><em>*</em> <input type="password" id="newpass"
										name="newpass" class="form-control"
										placeholder="Enter new password" />
								</div>
						
								<div class="form-group">
									<label for="cnfpass" class="glyphicon glyphicon-user">confirm
										password</label><em>*</em> <input type="password" id="cnfpass"
										name="cnfpass" class="form-control"
										placeholder="Enter confirm password" />
								</div>
							
								<div class="form-group">
									<label class="col-md-5"> <input type="submit"
										id="submit" name="submit" class="form-control btn btn-primary"
										value="submit" /> </label> <label class="col-md-2"></label> <label
										class="col-md-5"> <input type="reset" id="clear"
										name="clear" class="form-control btn btn-danger" value="clear" />
									</label>
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