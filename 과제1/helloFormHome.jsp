<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset= "UTF-8">
<title>이름 입력</title>
</head>
<body>
<h2>입력한 이름을 서버에 전송합니다...</h2>
	<form action = "helloProHome.jsp" method = "post">
		성: <input type = "text" name = "first">
		이름: <input type = "text" name = "last">
		<input type = "submit" value = "전송">
	</form>
</body>
</html>