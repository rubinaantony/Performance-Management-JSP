<%-- 
    Document   : Update employee Action
    Created on : 16.11.2019
    Author     : AURUM
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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