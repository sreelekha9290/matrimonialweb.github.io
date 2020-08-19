<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot password</title>
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
					<div class="panel panel-primary">

						<div class="panel-heading">

							<h4>Forgot password</h4>
						</div>

						<div class="panel-body" id="forgotscroll">
							<form action="forgot.do" id="Forgot password" method="post">
								<div class="form-group">

									<label for="email" class="glyphicon glyphicon-user">E-mail:</label><em>*</em>
									<input type="email" id="email" name="email"
										class="form-control" placeholder="enter your Email" />

								</div>
								<div class="form-group">
									<label for="securityqus" class="glyphicon glyphicon-lock">Security
										Question </label><em>*</em> <select class="form-control"
										name="securityqus">

										<option value="na" selected>-------------Select Your
											Security Question---------------</option>

										<option value="what is your nick name">What is your
											nick name.</option>

										<option value="where is your native place">Where is
											your native place</option>

										<option value="What is your pet name.">What is your
											pet name</option>

									</select>
								</div>
								<div class="form-group">

									<label for="answer" class="glyphicon glyphicon-user">Answer:</label><em>*</em>
									<input type="text" id="answer" name="answer"
										class="form-control" placeholder="Enter Answer" />
								</div>
								<div class="form-group">

									<label class="col-md-3"> <input type="submit"
										id="submit" name="submit" class="form-control btn btn-primary"
										value="Get Password" /> </label> <label class="col-md-2"></label> <label
										class="col-md-3"> <input type="reset" id="reset"
										name="reset" class="form-control btn btn-danger"
										value="Cancel" /> </label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="footer.jsp" %>
	</div>


</body>
</html>