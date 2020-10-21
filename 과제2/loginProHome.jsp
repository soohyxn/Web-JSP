<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>JSP Login</title>
</head>
<body>
<%!
int count = 1;
%>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String passwd = request.getParameter("passwd");
int count = 1;
out.println("<h1>" + this.count + "번째 접속</h1>");
this.count++;
if(name.equals("음두헌") && passwd.equals("1234")){
	out.println("<h2>환영합니다 " + name + "님</h2>");
	out.println(count + "번째 방문");
	count++;
}
else
	out.println("<h2>암호가 틀립니다</h2>");
%>
</body>
</html>
