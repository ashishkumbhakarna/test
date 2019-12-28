<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.app.DrugClass,MedicaDao.DrugDao,java.util.Date"%>
<%
	String s=request.getParameter("medicalId");
int id=Integer.parseInt(s);
DrugClass obj=DrugDao.getMedicineById(id);
SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
Date d1 = sdformat.parse("2019-12-19");
Date d2=obj.getD();
if(d1.compareTo(d2) >0)
{
%>
 <table border="1" width="90%">  
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>ExpiryDate</th>
	<th>Delete</th>
</tr>  
 
<tr>
	<td><%=obj.getId() %></td>
	<td><%=obj.getName() %></td>
	<td><%=obj.getD() %></td>  
 	<td><a href="deleteuser.jsp?id=<%=obj.getId() %>">Delete</a></td>
 </tr>
 <%
 }
else
{
%>
 <table border="1" width="90%">  
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>ExpiryDate</th>
	<th>Home</th>
</tr>  
 
<tr>
	<td><%=obj.getId() %></td>
	<td><%=obj.getName() %></td>
	<td><%=obj.getD() %></td>  
 	<td><a href="Index.jsp">home</a></td>
 </tr>
<%
} 
%>

</body>
</html>