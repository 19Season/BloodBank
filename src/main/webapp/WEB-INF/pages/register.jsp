<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html>
<head>
<title>Register</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: "Comic Sans MS", cursive, sans-serif;
}

.text {
	background-color: #ce0f0d;
	height: 30px;
	width: 370px;
	padding: 20px;
	color: white;
	margin-bottom: 10px;
}

.links {
	position: absolute;
	top: 10%;
	left: 33%;
}

.form-control {
	height: 40px;
	width: 400px;
	padding: 2px;
	margin: 3px;
}

button {
	height: 40px;
	width: 100px;
	border: none;
	font-family: "Comic Sans MS", cursive, sans-serif;
	color: white;
	font-size: 15px;
	position: relative;
	cursor: pointer;
	background-color: #2196f3;
	margin-left: 150px;
	margin-top: 5px;
}

button:hover {
	background-color: #ce0f0d;
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
</style>
</head>
<body>
	<div class="container">
		<div class="containerOne">
			<img
				src="https://dcndx.com/wp-content/uploads/2020/03/iStock-1128949422.jpg">
		</div>

		<div class="links">
			<div class="text">
				<h2>Donar Registration Form</h2>
			</div>
			<form:form action="register" method="post">
				<div class="formgroup">
					<form:input path="name" required="required" cssClass="form-control"
						placeholder="Enter your Full Name..." />
				</div>
				<div class="formgroup">
					<form:input path="address" required="required"
						cssClass="form-control" placeholder="Enter your Address..." />
				</div>
				<div class="formgroup">
					<form:select name="bloodgroup" path="bloodgroup"
						required="required" cssClass="form-control">
						<form:option value="A+" selected="selected">A+</form:option>
						<form:option value="A-">A-</form:option>
						<form:option value="B+">B+</form:option>
						<form:option value="B-">B-</form:option>
						<form:option value="O+">O+</form:option>
						<form:option value="O-">O-</form:option>
						<form:option value="AB+">AB+</form:option>
						<form:option value="AB-">AB-</form:option>
					</form:select>
				</div>
				<div class="formgroup">
					<form:input path="contact" pattern="\d*" required="required"
						cssClass="form-control" placeholder="Enter contact information..." />
				</div>
				<div class="formgroup">
					<button>REGISTER</button>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>