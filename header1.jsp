<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header</title>
</head>
<body>
	<div class="container-fluid" id="header"">
		<!-- style="background-image:url('img/header.png');" -->
		<div class="row" style="background-color: gray">
			<div class="col-md-2">
				<img alt="logo" src="images/logo.jpg">
			</div>
			<div class="col-md-8">
				<h1 style="color: green" align="center">Matrimonial Web Portal</h1>
			</div>
			<div class="col-mid-2">
				<a href="logout.do" style="color: orange">Logout</a>
			</div>
		</div>
	</div>

</body>
</html>