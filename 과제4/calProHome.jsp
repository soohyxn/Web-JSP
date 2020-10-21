<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>계산결과</title>
</head>
<body>
<%! 
	int pcount=1;
	int scount=1;
	int mcount=1;
	int dcount=1;
%>
<%
	request.setCharacterEncoding("UTF-8");
	String first = request.getParameter("first");
	String second = request.getParameter("second");
	Double f = Double.parseDouble(first);
	Double s = Double.parseDouble(second);
	String cal = request.getParameter("cal");	
%>
<%=f%><%= cal %><%=s %>=
<%
	if(cal.equals("+"))
		out.println(f+s);
	else if(cal.equals("-"))
		out.println(f-s);
	else if(cal.equals("*"))
		out.println(f*s);
	else if(cal.equals("/"))
		out.println(f/s);
%>
<br>
<%
	if(cal.equals("+")){
		out.println("덧셈 총 횟수:" + pcount);
		pcount++;
	}
	else if(cal.equals("-")){
		out.println("뺄셈 총 횟수:" + scount);
		scount++;
	}
	else if(cal.equals("*")){
		out.println("곱셈 총 횟수:" + mcount);
		mcount++;
	}
	else if(cal.equals("/")){
		out.println("나눗셈 총 횟수:" + dcount);
		dcount++;
	}
%>
</body>
</html>
