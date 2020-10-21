<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>jQ Homework</title>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  $("#p1").text("Hello World!");
	  });
	  $("#b2").click(function() {
		  $("#p2").html("<B>Hello World!</B>");
	  });
	  $("#b3").click(function() {
		  alert($("#txt").val() + "환영");
	  }); 
  });
</script>
</head>
<body>
  <p id = "p1">This is a paragraph.</p>
  <p id = "p2">This is another paragraph.</p>
  <p>Input field: <input type ="text" id ="txt"></p>
  <button id="b1">Set Text</button>
  <button id="b2">Set HTML</button>
  <button id="b3">Show Alert</button>
</body>
</html>