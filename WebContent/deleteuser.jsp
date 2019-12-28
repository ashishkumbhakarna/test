<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="MedicaDao.DrugDao,com.app.DrugClass"%>
<body>
<%
	String id=request.getParameter("id");
	int statusid=Integer.parseInt(id);
	int i=DrugDao.GetdeleteById(statusid);
	if(i> 0)
	{
		response.sendRedirect("Index.jsp");
	}
%>
</body>
</html>