<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>사원번호</title>
</head>
<body>
<form action="registerProHome.jsp" method="post">
사번: <input type="text" name="emplid" size=10><p>
이름: <input type="text" name="name" size=10><p>
주소: <input type="text" name="address" size=15><p>
주민번호 앞 자리: <input type="text" name="ssn" size=15><p>
담당업무 번호: <input type="text" name="jobid" size=15><p>
업무시작일(yyyy-mm-dd): <input type="text" name="startdate" size=10><p>
<input type="submit" value="가입">
</form>
</body>
</html>
