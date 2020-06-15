<%-- 
    Document   : Validating User
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.java.beans.LoginBean"%>
<%@page import="com.java.dao.LoginDAO"%>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

LoginBean loginBean = new LoginBean();
loginBean.setUsername(username);
loginBean.setPassword(password);
int a = LoginDAO.check(loginBean);

if (a == 1) {

	session.setAttribute("user", username);
	response.sendRedirect("welcomeAdmin.jsp");
} else if (a == 2) {

	session.setAttribute("user", username);
	response.sendRedirect("welcomeEmployee.jsp");
} else {
	response.sendRedirect("login.jsp?val=invalid user");
}
%>