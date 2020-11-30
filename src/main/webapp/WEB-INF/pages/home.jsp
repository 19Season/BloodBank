<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="width=device-width, initial-scale=1.0" name="viewport">
<title>Blood Bank Project</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<c:url value="/img/img1.jpg" var="img1"></c:url>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: "Comic Sans MS", cursive, sans-serif;
	color: white;
}
.bg{
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	opacity: 0.9;
}

.containerOne {
	overflow: hidden;
	position:relative;
}

.links {
	position: absolute;
	top: 5%;
	left: 30%;
	display:inline-block;
}

button {
	height: 100px;
	width: 315px;
	border: none;
	font-family: "Comic Sans MS", cursive, sans-serif;
	color: white;
	font-size: 25px;
	position: relative;
	cursor: pointer;
}

button:hover {
	background-color: #2F4F4F;
}

.register {
	background-color: #ce0f0d;
	right: 5px;
}

.login {
	background-color: #2196f3;
	top: 18px;
	left: 5px;
}

.text {
	font-size: 50px;
}

.searchDiv {
	margin-top: 30px;
	margin-left: 100px;
}

.search {
	top: 20px;
	height: 50px;
	padding: 10px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 70%;
}

.searchDiv button {
	background: #ce0f0d;
	width: 10%;
	padding: 10px;
	height: 50px;
	float: left;
}

.searchDiv button:hover {
	background: #2F4F4F;
}

h3 {
	font-size: 50px;
}

.wrapper{
	display:inline-block;
}
.logo{
	height:auto;
	width:200px;
}



</style>
</head>
<body>
	<div class="container">

		<div class="containerOne">
		<img src="https://dcndx.com/wp-content/uploads/2020/03/iStock-1128949422.jpg" class="bg">
		</div>
		
	
		<div class="links">
			<h3 align="center">BE</h3>
			<h3 align="center">A HERO</h3>
			<h3 align="center">GIVE</h3>
			<h3 align="center">BLOOD</h3>
			<a href="<%=request.getContextPath()%>/registerpage"><button
					class="register">
					Register<br>Become a Donor
				</button></a> <a href="<%=request.getContextPath()%>/view"><button
					class="login">View All Donars</button> </a>
			<div class="searchDiv">
				<form action="search">
					<select class="search" name="bloodgroup">
						<option value="A+" selected="selected">A+</option>
						<option value="A-">A-</option>
						<option value="B+">B+</option>
						<option value="B-">B-</option>
						<option value="O+">O+</option>
						<option value="O-">O-</option>
						<option value="AB+">AB+</option>
						<option value="AB-">AB-</option>
					</select>
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>