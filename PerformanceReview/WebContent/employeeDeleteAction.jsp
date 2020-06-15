<%-- 
    Document   : Delete Employee Action
    Created on : 09.11.2019
    Author     : AURUM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.java.beans.EmployeeBean"%>
<%@page import="com.java.dao.EmployeeDAO"%>

<%
	Integer eno = Integer.parseInt(request.getParameter("eno"));
	
	EmployeeBean employeeBean = new EmployeeBean();
	employeeBean.setEno(eno);

	boolean flag = EmployeeDAO.deleteEmployee(employeeBean);
	if (flag == true) {

		response.sendRedirect("employeeView.jsp");
	} else {

		response.sendRedirect("employeeView.jsp");
	}
%>
