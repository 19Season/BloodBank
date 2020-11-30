<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donars Information</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: "Comic Sans MS", cursive, sans-serif;
	color:white;
	counter-reset: Serial; 
}

.text {
	background-color: #ce0f0d;
	height: 20px;
	width: 370px;
	padding: 20px;
	color: white;
	margin-bottom: 10px;
}

table.donarTable tr th{
background-color: #2196f3;
padding:10px;
}
table.donarTable tr td{
background-color: #2F4F4F;
padding:10px;
}
table tr td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  content: counter(Serial); /* Display the counter */
}
.containerOne {
	overflow: hidden;
	position: absolute;
}
img {
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	opacity: 0.9;
}
.links{
position: absolute;
	top: 10%;
	left: 30%;
}

</style>
</head>
<body>
<div class="container">
	<div class="containerOne">
		<img src="https://dcndx.com/wp-content/uploads/2020/03/iStock-1128949422.jpg">
</div>
	<div class="links">
	<div class="text">Donars Information:</div>
	<table class="donarTable">
		<tr>
			<th>S.N</th>
			<th>Name</th>
			<th>Address</th>
			<th>Bloodgroup</th>
			<th>Contact</th>
		</tr>
		<c:forEach var="d" items="${data}">
			<tr>
				<td> </td>
				<td><c:out value="${d.name}"></c:out></td>
				<td><c:out value="${d.address}"></c:out></td>
				<td><c:out value="${d.bloodgroup}"></c:out></td>
				<td><c:out value="${d.contact}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
</body>
</html>