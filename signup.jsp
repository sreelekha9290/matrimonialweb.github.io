<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Form</title>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
	
</script>


<!-- <link rel="stylesheet" type="text/css" href="css/mycss.css"> -->
</head>

<body>
	<div class="container-fluid">

		<jsp:include page="header.jsp"></jsp:include>

		<ol class="breadcrumb">

			<!-- <li><a href="login.jsp">Home</a></li> -->

			<li><a href="#">Signup</a></li>
		</ol>

		<div class="container" id="main-content-div-signup">

			<div class="row">

				<div class="col-md-2"></div>

				<div class="col-md-8">

					<c:if test="${ERROR ne null }">

						<div class="alert alert-danger">

							<h3>${ERROR}</h3>
						</div>


					</c:if>


					<div class="panel panel-primary" id="login">

						<div class="panel-heading">

							<h4 style="color: blue">Signup Form</h4>
						</div>

						<div class="panel-body" id="addscroll1">



							<form action="signup.do" id="signupform" method="post">


								<div class="form-group">

									<label for="id" class="glyphicon glyphicon-user">Id:</label><em>*</em>
									<input type="text" id="id" name="id" class="form-control"
										placeholder="Enter Id" />
								</div>

								<div class="form-group">
									<label for="profile" class="glyphicon glyphicon-user">Matrimony
										Profile for:</label><em>*</em> <select class="form-control"
										name="profile">
										<option value="na" selected>-------------Select---------------</option>
										<option value="Myself">Myself</option>
										<option value="Brother">Brother</option>
										<option value="Sister">Sister</option>
										<option value="Father">Father</option>
										<option value="Relative">Relative</option>
										<option value="Son">Son</option>
										<option value="Daughter">Daughter</option>


									</select>
								</div>


								<div class="form-group">

									<label for="name" class="glyphicon glyphicon-user">Name:</label><em>*</em>
									<input type="text" id="name" name="name" class="form-control"
										placeholder="Enter Name" />
								</div>

								<div class="radio">
									<label for="gender" class="glyphicon glyphicon-user">Gender:</label><em>*</em>
									<label for="male" class="glyphicon glyphicon-user"><input
										type="radio" name="gender" value="male" /> Male</label> <label
										for="female" class="glyphicon glyphicon-user"><input
										type="radio" name="gender" value="female" /> Female</label>
								</div>

								<div class="form-group">

									<label for="age" class="glyphicon glyphicon-user">Age:</label><em>*</em>
									<input type="text" id="age" name="age" class="form-control"
										placeholder="Enter Age" />
								</div>

								<div class="form-group">
									<label for="religion" class="glyphicon glyphicon-user">Religion:</label><em>*</em>
									<select class="form-control" name="religion">
										<option value="na" selected>-------------Select
											Religion---------------</option>
										<option value="Hindu">Hindu</option>
										<option value="Muslim">Muslim</option>
										<option value="Christian">Christian</option>
										<option value="Sikh">Sikh</option>
										<option value="Jain">Jain</option>
										<option value="Parsi">Parsi</option>
										<option value="Buddhist">Buddhist</option>
										<option value="No Religion">No Religion</option>
									</select>
								</div>

								<div class="form-group">
									<label for="language" class="glyphicon glyphicon-user">Mother
										Tongue:</label><em>*</em> <select class="form-control" name="language">
										<option value="na" selected>-------------Select
											Mother Tongue---------------</option>
										<option value="Telugu">Telugu</option>
										<option value="Kanada">Kanada</option>
										<option value="English">English</option>
										<option value="Tamil">Tamil</option>
										<option value="Hindi">Hindi</option>
										<option value="Nepali">Nepali</option>
										<option value="Malayalam">Malayalam</option>
										<option value="Gujarathi">Gujarathi</option>
										<option value="French">French</option>
										<option value="Other">Other</option>
									</select>
								</div>

								<div class="form-group">
									<label for="country" class="glyphicon glyphicon-user">Country:</label><em>*</em>
									<select class="form-control" name="country">
										<option value="na" selected>-------------Select
											Country living in---------------</option>
										<option value="India">India</option>
										<option value="USA">USA</option>
										<option value="UK">UK</option>
										<option value="Canada">Canada</option>
										<option value="Australia">Australia</option>
										<option value="Singapore">Singapore</option>
										<option value="Nepal">Nepal</option>
										<option value="Bangladesh">Bangladesh</option>
										<option value="Srilanka">SriLanka</option>
										<option value="SouthAfrica">South Africa</option>
										<option value="Pakistan">Pakistan</option>
										<option value="Malaysia">Malaysia</option>
										<option value="Other">Other</option>
									</select>
								</div>

								<div class="form-group">

									<label for="email" class="glyphicon glyphicon-user">E-mail:</label><em>*</em>
									<input type="email" id="email" name="email"
										class="form-control" placeholder="Enter Email" />


								</div>

								<div class="form-group">

									<label for="password" class="glyphicon glyphicon-lock">Password:</label><em>*</em>
									<input type="password" id="passsword" name="password"
										class="form-control" placeholder="Enter Password" />

								</div>

								<div class="form-group">
									<label for="mobile" class="glyphicon glyphicon-phone">Mobile:
									</label><em>*</em><input type="text" id="mobile" name="mobile"
										class="form-control" placeholder="Enter Mobile" maxlength="10" />
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
									<label for="sign" class="glyphicon glyphicon-user">Zodiac
										Sign:</label><em>*</em> <select class="form-control" name="sign">
										<option value="na" selected>-----Select your Zodiac
											Sign-------</option>
										<option value="Aries">Aries</option>
										<option value="Taurus">Taurus</option>
										<option value="Cancer">Gemini</option>
										<option value="Cancer">Cancer</option>
										<option value="Leo">Leo</option>
										<option value="Virgo">Virgo</option>
										<option value="Libra">Libra</option>
										<option value="Scorpio">Scorpio</option>
										<option value="Saggitarius">Saggitarius</option>
										<option value="Capricon">Capricon</option>
										<option value="Aquarius">Aquarius</option>
										<option value="Pisces">Pisces</option>


									</select>
								</div>
								<div class="form-group">

									<label class="col-md-3"> <input type="submit"
										id="submit" name="submit" class="form-control btn btn-primary"
										value="Signup" /> </label> <label class="col-md-2"></label> <label
										class="col-md-3"> <input type="reset" id="reset"
										name="reset" class="form-control btn btn-danger"
										value="Cancel" /> </label>
								</div>

							</form>
							<script type="text/javascript">
								$("#signupform").validate();
							</script>
						</div>

						<div class="panel-footer"></div>

					</div>

				</div>

				<div class="col-md-2"></div>
			</div>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
