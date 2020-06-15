<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
      <%@page import="java.util.*"%>
        <%@ page import="com.java.dao.AdminDao" %>
	<%@ page import="com.java.beans.AdminBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Performance Review</title>
</head>
<body>
<form action="performanceReviewAction.jsp" method="post" name="login">
<table>
<tr><td><label> Person whom you want to be reviewed </label>

 <%
 ResultSet rs=AdminDao.getUname();
 %>
 </td><td><select name="reviewedPerson" id="reviewedPerson">
 <option value="0">Select</option>
 <% while(rs.next()){%>
 <option><%=rs.getString(1)%></option>
 <% }%></select></td></tr>
                    
  <tr>
  <td>Feedback By:</td>
  <td><input type="text" name="review" required=""></td>
  </tr>                  
<tr><td><label> Reviewing Person  </label>
<%
  rs=AdminDao.getUname();
				          
                    %>
					</td><td><select name="reviewingPerson" id="reviewingPerson">
                    <option value="0">Select</option>
                    <% while(rs.next()){%>
                    <option><%=rs.getString(1)%></option>
                    <% }%></select></td></tr>


       
                    <tr><td></td><td>	
<input type="submit" value="submit"><br></td></tr>
</table>
</form>
</body>
</html>