<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
</script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
<title>Login</title>
</head>
<body>
	<div class="container-fluid">
<%@include file="header.jsp" %>
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<ol class="breadcrumb">

			<li><a href="signup.jsp">Signup</a></li>
	
		</ol>
		<div class="container" id="main-content-div">

			<div class="row">

				<div class="col-md-3"></div>

				<div class="col-md-6">

					<c:if test="${SUCCESS ne null }">

						<div class="alert alert-success">

							<h5>${SUCCESS}</h5>
						</div>


					</c:if>

					<c:if test="${ERROR ne null }">

						<div class="alert alert-danger">

							<h5>${ERROR}</h5>
						</div>


					</c:if>


					<div class="panel panel-primary" id="login">

						<div class="panel-heading">

							<h4>Login Form</h4>
						</div>

						<div class="panel-body">

							<form action="validateuser.do" id="loginform" method="post">



								<div class="form-group">

									<label for="email" class="glyphicon glyphicon-user">
										E-mail </label><em>*</em> <input type="email" id="email" name="email"
										class="form-control" placeholder="Enter Email"
										value="${email}" />
								</div>
								<div class="form-group">

									<label for="password" class="glyphicon glyphicon-lock">
										Password</label><em>*</em> <input type="password" id="passsword"
										name="password" class="form-control"
										placeholder="Enter Password" />
								</div>

								<div class="form-group">
									<label class="col-md-5"> <input type="submit"
										id="submit" name="submit" class="form-control btn btn-success"
										value="login" /> </label> <label class="col-md-2"></label> <label
										class="col-md-5"> <input type="reset" id="reset"
										name="reset" class="form-control btn btn-danger"
										value="Cancel" /> </label>
								</div>

							</form>


						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-md-6">
									Forgot Password?Click <a href="forgotpass.jsp" class="">here</a>

								</div>
								<div class="col-md-6"></div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label>(<em> * </em>) Indicates mandatory fields </label>
								</div>
							</div>
						</div>



					</div>

				</div>

				<div class="col-md-3"></div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>