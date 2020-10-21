<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>학생 정보</title>
</head>
<body>
<h2>학생 정보 입력 </h2>
	<form action="studentProHome.jsp" method="post">
		이름 : <input type="text" name="name"><p>
		나이 : <input type="text" name="age"><p>
		성별 : <input type="radio" name="gender" value="mail" checked>남
			 <input type="radio" name="gender" value="femail">여<p>
		거주지 : <select name="residence">
				<option selected>서울</option>
				<option>경기도</option>
				<option>강원도</option>
			  </select><p>
		<input type="submit" value="보내기">
	</form>
</body>
</html>