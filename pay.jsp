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
			<li><a href="pay.jsp">Search</a></li>
		</ol>

		<div class="container" id="main-content-div-signup">

			<div class="row">

				<div class="col-md-3"></div>

				<div class="col-md-6">
					<c:if test="${ERROR ne null }">

						<div class="alert alert-danger">

							<h5>${ERROR}</h5>
						</div>


					</c:if>

					<div class="panel panel-primary">

						<div class="panel-heading">

							<h4>Payment Details</h4>
						</div>

						<div class="panel-body" id="payscroll">
							<form>


								<div class="form-group">
									<label class="col-md-3"> <input type="button" id="paid"
										name="paid" class="form-control btn btn-success" value="Paid"
										onclick="window.location='paid.jsp'" /> </label> <label
										class="col-md-2"> <input type="button" id="notpaid"
										name="notpaid" class="form-control btn btn-danger"
										value="Not Paid" onclick="window.location='payment.jsp'" /> </label>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="footer.jsp"%>
	</div>



</body>
</html>