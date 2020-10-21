<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="advisor.DataManager" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>입력 처리</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="employee" class="advisor.EmployeeBean">
	<jsp:setProperty name="employee" property="*"/>
</jsp:useBean>
<%
int jobid = Integer.parseInt(request.getParameter("jobid"));
String startdate = request.getParameter("startdate");
%>
<%
DataManager manager = DataManager.getInstance();
manager.insertEmployee(employee,jobid,startdate);
response.sendRedirect("loginFormHome.jsp");
%>
</body>
</html>