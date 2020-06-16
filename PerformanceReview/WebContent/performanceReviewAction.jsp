<%-- 
    Document   : Assigning Performance Review Action
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.java.beans.AdminBean"%>
<%@page import="com.java.dao.AdminDao"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
	String reviewedPerson = request.getParameter("reviewedPerson");
	String review = request.getParameter("review");
	String reviewingPerson = request.getParameter("reviewingPerson");
	
	AdminBean adminBean = new AdminBean();
	adminBean.setReviewedPerson(reviewedPerson);
	adminBean.setReview(review);
	adminBean.setReviewingPerson(reviewingPerson);

	boolean flag = AdminDao.insertReview(adminBean);
	if (flag == true) {

		response.sendRedirect("welcomeAdmin.jsp");
	} else {

		response.sendRedirect("welcomeAdmin.jsp");
	}
%>
</body>
</html>