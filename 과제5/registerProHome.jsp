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
double max=0;
%>
<%
request.setCharacterEncoding("utf-8");
int x = Integer.parseInt(request.getParameter("x"));
int y = Integer.parseInt(request.getParameter("y"));
int radius = Integer.parseInt(request.getParameter("radius"));

if(max < radius*radius*Math.PI)
	max = radius*radius*Math.PI;

	

CircleBean circle = new CircleBean();
circle.setX(x);
circle.setY(y);
circle.setRadius(radius);

out.println("생성된 원은 " + circle +"<br>");
out.println("생성된 원은 " + circle.printCircle() + "입니다.<br>");
out.println("가장 큰 원의 넓이는" + max + "입니다.");

%>
</body>
</html>
