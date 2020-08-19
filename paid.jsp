<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Mode</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
</script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>

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

		<div class="container" id="main-content-div-signup">

			<div class="row">

				<div class="col-md-3"></div>

				<div class="col-md-6">


					<div class="panel panel-primary">

						<div class="panel-heading">

							<h4>Payment Details</h4>
						</div>

						<div class="panel-body" id="payscroll">
							<form action="paid.do" method="post">
							
									<div class="form-group">

									<label for="email" class="glyphicon glyphicon-user">
										E-mail </label><em>*</em> <input type="email" id="email" name="email"
										class="form-control" placeholder="Enter Email"
										value="${email}" />
								</div>
								<div class="form-group">
									<label for="mobile" class="glyphicon glyphicon-phone">Mobile:
									</label><em>*</em><input type="text" id="mobile" name="mobile"
										class="form-control" placeholder="Enter Mobile" maxlength="10" />
								</div>
								<div class="form-group">

									<label class="col-md-3"> <input type="submit"
										id="submit" name="submit" class="form-control btn btn-primary"
										value="Check User" /> </label> <label class="col-md-2"></label>
										 <label class="col-md-3"> <input type="reset" id="reset"
										name="reset" class="form-control btn btn-danger"
										value="Cancel" onclick="window.location='pay.jsp'"/> </label>
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
