<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.io.*;" %>
<%
DaoUtil daoUtil = DaoUtil.getObject();
String opass=request.getParameter("password");
String npass=request.getParameter("newpass");
String cnpass=request.getParameter("cnfpass");
Connection con=null;
String pass="";

%>
</body>
</html>