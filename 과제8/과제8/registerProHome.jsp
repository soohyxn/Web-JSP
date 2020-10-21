<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>입력 처리</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
int num = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
String address = request.getParameter("address");
String ssn = request.getParameter("ssn");

int job = Integer.parseInt(request.getParameter("job"));
String startdate = request.getParameter("startdate");
%>
<%
Connection con = null;
ResultSet rs = null;
PreparedStatement pstmt = null;
String jdbcUrl ="jdbc:mysql://localhost:3306/csdb";
String dbUser = "root";
String dbPass = "duksung";

try {
	Class.forName("com.mysql.jdbc.Driver");
} catch(ClassNotFoundException e) {
	out.println("mysql driver loading error!");
	out.println(e.toString());
	System.out.println("mysql driver loading error!");
	return;
}

try {
	con = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
} catch(SQLException e) {
	out.println("mysql connection error!");
	out.println(e.toString());
	return;
}

try {
	String query = "insert into employee values(?,?,?,?)";
	pstmt = con.prepareStatement(query);
	pstmt.setInt(1, num);
	pstmt.setString(2, name);
	pstmt.setString(3, address);
	pstmt.setString(4, ssn);
	pstmt.executeUpdate();
	
	query = "insert into assignment values(?,?,?,?)";
	pstmt = con.prepareStatement(query);
	pstmt.setInt(1, num);
	pstmt.setInt(2, job);
	pstmt.setString(3, startdate);
	pstmt.setString(4, null);
	pstmt.executeUpdate();

	out.println("사원 추가!");
} catch(SQLException e) {
	out.println(e.toString());
}

try {
	if(pstmt != null) pstmt.close();
	if(con != null) con.close();
} catch(SQLException e) {
	out.println(e.toString());
}
response.sendRedirect("loginFormHome.jsp");
%>
</body>
</html>