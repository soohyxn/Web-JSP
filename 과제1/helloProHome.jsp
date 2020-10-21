<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>환영 메시지</title>
</head>
<body>
<h2>서버가 처리한 이름입니다.</h2>
<%
	request.setCharacterEncoding("utf-8");
	String firstnm = request.getParameter("first");
	String lastnm = request.getParameter("last");
	if (firstnm.equals("장") & lastnm.equals("수현")) {
		out.println("<h3>Hello" + firstnm +lastnm + "~</h3>");
	}
	else
		out.println("<h3>다시 입력하세요</h3>");
%>
</body>
</html>