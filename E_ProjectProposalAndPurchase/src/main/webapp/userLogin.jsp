<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<!--  <link rel="stylesheet" href="style.css">-->
<style>
.heading {
	padding: 50px;
	text-align: center;
	background: #003399;
	border: 5px solid black;
	color: white;
	font-size: 20px;
}

.row {
	width: 30%;
	padding: 12px;
	text-align: center;
	margin: 10px 0;
	display: inline-block;
	line-height: 20px;
	text-decoration: none;
	background-color: #3B5998;
	color: white;
	font-size: 20px;
}

.container {
	padding: 16px;
	background-color: white;
}

.button {
	background-color: #3B5998;
	font-size: 15px;
	color: white;
	padding: 10px 10px;
	margin: 15px 0;
	cursor: pointer;
	width: 100%;
}

tr {
	font-size: 20px;
}

input {
	width: 300%;
	padding: 15px;
	margin: 5px 0 20px 0;
	display: inline-block;
	background: #f1f1f1;
}

table {
	margin: 30px 0 0 150px;
}

.contain {
	display: block;
	position: relative;
	padding-left: 35px;
	padding-right: 35px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 20px;
}

.contain input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	height: 0;
	width: 0;
}
/* Create a custom checkbox */
.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 25px;
	width: 25px;
	background-color: #eee;
}

/* On mouse-over, add a grey background color */
.contain:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.contain input:checked ~ .checkmark {
	background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Show the checkmark when checked */
.contain input:checked ~ .checkmark:after {
	display: block;
}

/* Style the checkmark/indicator */
.contain .checkmark:after {
	left: 9px;
	top: 5px;
	width: 5px;
	height: 10px;
	border: solid white;
	border-width: 0 3px 3px 0;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}
</style>
<script>
	function validate() {
		var email = document.getElementById("emailid").value;
		var psw = document.getElementById("pw").value;
		if (email == null || email == "") {
			alert("Please update the highlighted emailid fields!");
			document.getElementById('emailid').style.borderColor = "red";
			return false;
		} else if (psw == null || psw == "") {
			alert("Please update the highlighted password fields!");
			document.getElementById('pw').style.borderColor = "red";
			return false;
		}
	}
</script>
</head>
<body>
	<form action="userlogin" method="post" onSubmit="return validate()">
		<div class="heading">
			<h1>
				<b>Project Proposal And Purchase</b>
			</h1>
		</div>
		<div class="container">
			<h1>User Login</h1>
			<p></p>
			<hr>
			<table>
				<tr>
					<td><label for="emailid"><b>Email </b></label></td>
					<td><input type="email" placeholder="Enter Email"
						name="emailid" id="emailid"
						pattern="[a-zA-Z0-9]+@[a-zA-Z0-9]+.com"
						title="Enter in this form abc@gmail.com"></td>
				</tr>
				<tr>
					<td><label for="pw"><b>Password </b></label></td>
					<td><input type="password" placeholder="Enter Password"
						name="pw" id="pw"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%&]).{8,}"
						title="Must contain at least one number, one uppercase,lowercase letter,special character(@#$%&) and at least 8 or more characters"></td>
				</tr>
				<tr>
					<td><input type="submit" class="button" value="Login" required></td>
					<td><a href="index.jsp" class="row">Back</a></td>
				</tr>
			</table>
		</div>
	</form>

	${msg}
</body>
</html>