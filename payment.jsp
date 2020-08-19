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

		<jsp:include page="header1.jsp"></jsp:include>
		<ol class="breadcrumb">

			<!-- <li><a href="login.jsp">Home</a></li> -->

			<li><a href="#">Home</a>
			</li>
			<li><a href="viewuser.jsp">Profile</a>
			</li>
			<li><a href="pay.jsp">Search</a>
			</li>
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

							<h4>Payment Details</h4>
						</div>

						<div class="panel-body" id="payscroll">
							<form action="pay.do" method="post">

								<div class="radio">
									<label for="pay" class="glyphicon glyphicon-user">Payment
										mode:</label><em>*</em>  <label
										for="creditcard" class="glyphicon glyphicon-user"><input
										type="radio" name="pay_mode" value="creditcard" /> Credit card</label>
									<label for="debitcard" class="glyphicon glyphicon-user"><input
										type="radio" name="pay_mode" value="debitcard" /> Debit card</label>
								</div>
								<div class="form-group">
									<label for="cardno" id="cardno" class="glyphicon glyphicon-user">Card Number:</label>
									<input type="text" name="cardno" id="cardno" placeholder="Enter your Card Number" maxlength="10"/>
								
								</div>
								<div class="form-group">
									<label for="expirydate" id="expirydate" class="glyphicon glyphicon-user">Expiry Date:</label>
									<input type="date" name="expirydate" id="expirydate" placeholder="Enter expiry date"/>
								
								</div>
								<div class="form-group">
									<label for="cvv" id="cvv" class="glyphicon glyphicon-user">CVV:</label>
									<input type="text" name="cvv" id="cvv" placeholder="Enter your CVV:" maxlength="3"/>
								
								</div>
								<div class="form-group">
								<label for="uid" id="uid" class="glyphicon glyphicon-user">uid:</label>
									<input type="text" name="uid" id="uid" value="${user.getId()}"/>
								
								</div>
								<div class="form-group">
									<label for="email" id="email" class="glyphicon glyphicon-user">email:</label>
									<input type="email" name="email" id="email" value="${user.getEmail()}" readonly/>
								
								</div>
								<div class="form-group">
									<label for="mobile" class="glyphicon glyphicon-phone">Mobile:
									</label><em>*</em><input type="text" id="mobile" name="mobile"
										class="form-control" value="${user.getMobile()}" readonly />
								</div>
								<div class="form-group">
									<label for="status" class="glyphicon glyphicon-phone">status:
									</label><em>*</em><input type="text" id="status" name="status"
										class="form-control" value="Paid" readonly/>
								</div>
								<div class="form-group">
									<label class="col-md-3"> <input type="submit"
										id="submit" name="submit" class="form-control btn btn-success"
										value="Pay Now" /> </label> <label class="col-md-2"> <input
										type="reset" id="reset" name="reset"
										class="form-control btn btn-warning" value="clear" /> </label><label
										class="col-md-3"><input type="button" id="cancel"
										name="cancel" class="form-control btn btn-danger"
										value="cancel" /> </label>
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