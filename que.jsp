<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot password</title>
<script type="text/javascript">
function warn(){
	alert("your password is '"+password+"''");
}
</script>
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

							<h4>Forgot password</h4>
						</div>

						<div class="panel-body" id="addscroll">
							<form id="que" method="post">
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
										value="Get Password" /> </label> <label class="col-md-2"></label>
										 <label class="col-md-3"> <input type="reset" id="reset"
										name="reset" class="form-control btn btn-danger"
										value="Cancel" /> </label>
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