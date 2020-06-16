<%-- 
    Document   : Viewing Performace Review
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

.employee {
	padding-left: 0px;
	padding-top: 10px;
	display: block;
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #0000006e;
	width: 950%;
	height: 90%;
	max-width: 1000px;
	max-height: 1300px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.8);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.38);
	margin-left: 200px;
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
		<a class="active" href="logout.jsp">LOGOUT</a> 
		<a class="active" href="employeeReviewView.jsp">PERFORMANCE REVIEW</a> 

		
</div>

<div class="back">
	<div class="employee">
		<%@ page import="com.java.dao.AdminDao"%>
	<%@ page import="com.java.beans.AdminBean"%>
	<%@ page import="java.util.ArrayList"%>
	<%
	ArrayList<AdminBean> eb = AdminDao.viewReview();

		AdminBean adminBean = new AdminBean();
		int size = 0;
		size = eb.size();
		if (size == 0) {
	%>
	<h3 align="center">NO DATA TO SHOWN</h3>
	<%
		} else {
	%>
	<h1 align="center">REVIEW DETAILS</h1>
	<table width="500" border="1" align="center">

		<tr>
			<td align="center">Sl.No</td>
			<td align="center">Review Id</td>
			<td align="center">Reviewed Employee</td>
			<td align="center">Reviewing Employee</td>
			<td align="center">Review</td>
		</tr>
		<%
			int i = 0;
				for (AdminBean it : eb) {
					i = i + 1;
		%>

		<tr>
			<td width="12" height="20" align="center"><span
				style="font-size: 14"><%=i%></span></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=it.getId()%> </span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=it.getReviewedPerson()%> </span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=it.getReviewingPerson()%> </span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><%=it.getReview()%></span>
				</div></td>
			<td width="43" align="center"><div align="center">
					<span style="font-size: 14"><a
						href="addFeedback.jsp?eno=<%=it.getId()%>">ADD FEEDBACK</a></span>
				</div></td>
		
		</tr>

		<%
			}
			}
		%>

			</table>
		</div>
	</div>
</body>
</html>