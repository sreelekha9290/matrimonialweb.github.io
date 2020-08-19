<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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



			<li><a href="home.jsp">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="pay.jsp">Search</a></li>

		</ol>

		<div class="container" id="main-content-div-del">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">
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
					<div class="panel panel-primary" id="del">
						<form action="del.do" id="Delete" method="post">
							<div class="form-group">

								<label for="email" class="glyphicon glyphicon-user">E-mail:</label><em>*</em>
								<input type="email" id="email" name="email" class="form-control"
									value="${user.getEmail()}" />


							</div>
							<div class="form-group">

								<label for="mobile" class="glyphicon glyphicon-user">Mobile:</label><em>*</em>
								<input type="text" id="mobile" name="mobile"
									class="form-control" placeholder="Enter Your Mobile Number" />
							</div>
							<div class="form-group">

								<label class="col-md-3"> <input type="submit"
									id="submit" name="submit" class="form-control btn btn-primary"
									value="Remove Your Account" /> </label> <label class="col-md-2">
									<input type="reset" id="reset" name="reset"
									class="form-control btn btn-danger" value="clear" /> </label><label
									class="col-md-3"><input type="button" id="cancel"
									name="cancel" class="form-control btn btn-danger"
									value="cancel" /> </label>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>


</body>
</html>