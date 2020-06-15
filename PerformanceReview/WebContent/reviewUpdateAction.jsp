<%-- 
    Document   : Update Review Action
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>age language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.java.beans.AdminBean"%>
<%@page import="com.java.dao.AdminDao"%>

<%
Integer eno = Integer.parseInt(request.getParameter("eno"));
String reviewed = request.getParameter("reviewed");
String reviewing = request.getParameter("reviewing");
String review = request.getParameter("review");

AdminBean adminBean = new AdminBean();
adminBean.setId(eno);
adminBean.setReviewedPerson(reviewed);
adminBean.setReviewingPerson(reviewing);
adminBean.setReview(review);


boolean flag = AdminDao.updateReview(adminBean);
if (flag) {

	response.sendRedirect("viewReviewEmp.jsp");
} else {

	response.sendRedirect("viewReviewEmp.jsp");
}
%>