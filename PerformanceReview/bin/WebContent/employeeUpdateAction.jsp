<%-- 
    Document   : Update Employee Action
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.java.beans.EmployeeBean"%>
<%@page import="com.java.dao.EmployeeDAO"%>

<%
Integer eno = Integer.parseInt(request.getParameter("num"));
String ename = request.getParameter("name");
String eusername = request.getParameter("username");
String epassword = request.getParameter("password");
String eaddress = request.getParameter("address");
String emobile = request.getParameter("mobile");
String eemail = request.getParameter("email");
String erole = request.getParameter("role");

EmployeeBean employeeBean = new EmployeeBean();
employeeBean.setEno(eno);
employeeBean.setEname(ename);
employeeBean.setEusername(eusername);
employeeBean.setEpassword(ename);
employeeBean.setEaddress(eaddress);
employeeBean.setEmobile(emobile);
employeeBean.setEemail(eemail);
employeeBean.setErole(erole);

boolean flag = EmployeeDAO.updateEmployee(employeeBean);
if (flag) {

	response.sendRedirect("employeeView.jsp");
} else {

	response.sendRedirect("employeeView.jsp");
}
%>