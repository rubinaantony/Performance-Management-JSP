<%-- 
    Document   : Forgot Action
    Created on : 16.06.2020
    Author     : Rubina Brijith Antony
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.java.beans.EmployeeBean"%>
<%@page import="com.java.dao.EmployeeDAO"%>
<%@page import="com.java.beans.LoginBean"%>
<%@page import="com.java.dao.LoginDAO"%>

<%
	String username = request.getParameter("username");
	String newpassword = request.getParameter("newpassword");
	String confirmpassword = request.getParameter("confirmpassword");
	if (newpassword.equalsIgnoreCase(confirmpassword)) {
		LoginBean loginBean = new LoginBean();
		EmployeeBean employeeBean = new EmployeeBean();
		loginBean.setUsername(username);
		loginBean.setPassword(newpassword);
		employeeBean.setEusername(username);
		employeeBean.setEpassword(newpassword);
		boolean flag = LoginDAO.update(loginBean);
		boolean flage = EmployeeDAO.updatePassword(employeeBean);
		response.sendRedirect("forgotPassword.jsp?val=password updated");
	} else {
		response.sendRedirect("forgotPassword.jsp?val= Password didn't match");
	}
%>