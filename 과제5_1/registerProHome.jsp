<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="circleHome.CircleBean"%>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>생성된 원</title>
</head>
<body>
<%!
double max1=0;
double max2=0;
%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id ="circle" class = "circleHome.CircleBean">
	<jsp:setProperty name = "circle" property = "*"/>
</jsp:useBean>

<% 
out.println("생성된 원은 " + circle +"<br>");
out.println("생성된 원은 " + circle.printCircle() + "입니다.<br>");
max1 = circle.getMax();
if (max1 > max2){
	   out.println("가장 큰 원의 넓이는 " + max1 + "입니다.");
	   max2 = max1;
	}
else
	   out.println("가장 큰 원의 넓이는 " + max2 + "입니다.");
%>
</body>
</html>
