<%-- 
    Document   : Admin Welcome page
    Created on : 15.11.2019
    Author     : AURUM
--%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.navbar {
	overflow: hidden;
	background-color: white;
	color: black;
}

.navbar a {
	float: right;
	font-size: 16px;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: right;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #182d59;
	color: white;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #182d59;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.back {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('money.jpg');
	background-repeat: no-repeat;
	background-size: 100%;
	height: 535px;
	color: black;
	padding: 0px;
}
</style>
</head>
<body>
	<%
		session = request.getSession(false);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setDateHeader("Expires", 0);
		response.setHeader("Pragma", "no-cache");
		String userName = (String) session.getAttribute("user");
		if (userName == null || userName == "") {
			response.sendRedirect("login.jsp?val=You are successfully logged out");
		}
	%>
	<div class="navbar">
		<img src="logo.png" width="200px" height="100px"> <strong>
			<div class="dropdown">
				<button class="dropbtn">
					<strong><a class="active" href="logout.jsp">LOGOUT</a>  <a href="employeeReviewView.jsp">PERFORMANCE REVIEW</a></strong> <i class="fa fa-caret-down"></i>
				</button>
			</div>

		</strong>
	</div>

	<div class="back">
		<h1 style="padding-top: 150px; padding-left: 600px;">
			Welcome
			<%=userName%></h1>
	</div>

</body>
</html>
