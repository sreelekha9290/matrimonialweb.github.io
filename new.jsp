<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Example</title>
</head>
<body>
	<label>Search:</label>
	<input type="text" id="search" name="search" />
	<input type="button" class="form-control btn btn-primary"
		id="viewallusers" name="viewallusers" value="go" onClick="document.getElementById('text').innerHTML='hi'" />
	<div id="text"></div>
	
</body>
</html>