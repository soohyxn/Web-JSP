<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>계산기</title>
<style type="text/css">
  div#result {
    width : 300px;
    height : 70px;
  }
</style>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  $.ajax({
			   type: "post",
			   url: "calProHome.jsp",
			   data: {first:$("#t1").val(), second:$("#t2").val(), cal:$("#cal").val()},
			   success: function(data) {
				 $("#result").html(data);
			   }
	  	  });
	  });
  });
</script>
</head>
<body>
<h3>계산할 실수와 연산자를 입력하세요</h3>
<input type = "text" id = "t1" size = 5>
<select id = "cal">
<option>+</option>
<option>-</option>
<option>*</option>
<option>/</option>
</select>
<input type = "text" id = "t2" size = 5>
<br><br><br><br>
<div id="result">결과</div>
<button id="b1">입력완료</button>
</body>
</html>
