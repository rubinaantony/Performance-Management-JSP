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
	String feedback = request.getParameter("feedback");


	AdminBean adminBean = new AdminBean();
	adminBean.setId(eno);
	adminBean.setFeedback(feedback);
	


	boolean flag = AdminDao.updatefeedback(adminBean);
	if (flag) {

		response.sendRedirect("employeeReviewView.jsp");
	} else {

		response.sendRedirect("employeeReviewView.jsp");
	}
%>