<%-- 
    Document   : Logout
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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
// out.print("<center><font color='green'>You are successfully logged out</font></center>"); 

//request.getRequestDispatcher("index.html").include(request, response);

session = request.getSession();
session.invalidate();
response.sendRedirect("login.jsp?val=You are successfully logged out");
%>


