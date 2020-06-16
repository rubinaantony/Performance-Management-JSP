<%-- 
    Document   : Inserting new employees Action
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.java.beans.EmployeeBean"%>
<%@page import="com.java.dao.EmployeeDAO"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


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
	employeeBean.setEpassword(epassword);
	employeeBean.setEaddress(eaddress);
	employeeBean.setEmobile(emobile);
	employeeBean.setEemail(eemail);
	employeeBean.setErole(erole);
	boolean flag = EmployeeDAO.insertEmployee(employeeBean);
	if (flag == true) {

		response.sendRedirect("employeeView.jsp");
	} else {

		response.sendRedirect("employeeView.jsp");
	}
%>
</body>
</html>