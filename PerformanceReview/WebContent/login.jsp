<%-- 
    Document   : Login
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Performance Review System</title>
<style>
body {
	width: 100%;
	background-color: #ece4e4;
	/*background:-webkit-linear-gradient(#82B4D5,#fff);*/
	font-family: 'Trebuchet MS';
	/*color:#fff;*/
	height: 100vh;
}

.main {
	height: 525px;
	width: 1320px;
	/*border:1px solid #fff;*/
	padding-right: 0px;
}

.main div {
	display: inline-block;
	border: none;
}

.main .right {
	width: 30%;
	float: right;
	/*border-right:1px solid #fff;*/
	height: 100%;
	/*padding:15px 0 0 0;*/
	background-color: #ece4e4;
	position: relative;
	padding-right: 0px;
}

.right h1 {
	text-align: center;
	/*padding-left:120px;*/
	padding-top: 100px;
	margin-bottom: 0;
}

.right p {
	margin-top: 0;
	text-align: center;
	color: grey;
}

.right form {
	text-align: center;
}

.right form input {
	text-align: center;
	width: 70%;
	height: 35px;
	margin-bottom: 10px;
	border: none;
	border: 1px solid #F8F8F8;
	background-color: #eae4e4;
	border-radius: 25px;
	border-color: #56519a;
}

.right form input:focus {
	outline: none;
}

::-webkit-input-placeholder {
	color: grey;
	letter-spacing: 1px;
}

.right form input[type="submit"] {
	background-color: #FFBF37;
	color: #fff;
	font-weight: bold;
}

.right p.forgot {
	color: grey;
	font-size: 18px;
	padding-top: 140px;
}

.right p.or {
	color: grey;
	font-size: 15px;
	border: 1px solid #f8f8f8;
	width: 40px;
	font-weight: 200;
	height: 30px;
	padding-top: 10px;
	background-color: #fff;
	border-radius: 50%;
	position: absolute;
	top: 42%;
	left: 94%;
	z-index: 10;
	/*text-align:center;*/
}
/*.left .form{
  border:1px solid;
}*/
.main .left {
	height:100%;
	width: 70%;
	float: left;
	height: 100%;
	background-image: url('loan.jpg');
	background-color: #fff;
	background-size: cover;
	text-align: center;
}

.left h1 {
	padding-top: 200px;
	margin-bottom: 10px;
}

.left {
	color: #fff;
}

.left p {
	margin: 0;
	font-size: 20px;;
}

.left .social {
	margin-top: 40px;
	width: 100%;
}

.social button {
	border: none;
	padding: 15px;
	width: 50px;
	font-size: 18px;
	background-color: #fff;
	margin-left: 10px;
	margin-right: 10px;
	border-radius: 50%;
}

.social p {
	font-size: 12px;
}

.buttons {
	padding-left: 510px;
	border-style: none;
}

.button1 {
	background-color: #2196f3;
	width: 300px;
	height: 40px;
	color: white;
	border-style: none;
}

.button1:hover {
	background-color: #182d59;
	color: white;
}

.content {
	background-color: transparent;
	padding-top: 200px;
}

* {
	box-sizing: border-box;
}

.header {
	font-family: Arial, Helvetica, sans-serif;
	color: white;
}

.header a {
	float: left;
	color: black;
	text-align: center;
	padding-top: 20px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
}

.header a.active:hover {
	background-color: #182d59;
	color: white;
}

.header a.active {
	background-color: white;
	color: black;
	width: 120px;
	height: 73px;
	border-style: none;
}

.header-right {
	float: right;
}

.header-left {
	background-color: white;
	padding-top: 0px;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}
</style>
</head>

<body>
	

	<div class="main">
		<div class="left">

		</div>
		<div class="right">
			<form action="validate.jsp">
				<h1 style="color: #182d59">SIGN IN</h1>
				<br> <input type="text" placeholder="Username" name="username">
				<input type="password" placeholder="Password" name="password">
				<input type="submit" value="LOG IN"><br>
				<%
					try {
						String val = "";
						val = request.getParameter("val");
						if (val == null) {

						} else {
							out.print(val);
						}
					} catch (Exception e) {
					}
				%>

				<p class="forgot">
					<a href="forgotPassword.jsp">Forgot password?</a>
				</p>



			</form>
		</div>

	</div>

</body>

</html>