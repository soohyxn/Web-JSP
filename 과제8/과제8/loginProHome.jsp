<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8"); %>
<%
int emplid = Integer.parseInt(request.getParameter("emplid"));
String ssn  = request.getParameter("ssn");

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
int x=-1; // 해당 아이디 없음

try {
	String query = "select ssn from employee where emplid = ?";
	pstmt = con.prepareStatement(query);
	pstmt.setInt(1, emplid);

	rs = pstmt.executeQuery();
	while(rs.next()) { // 해당 아이디가 있으면 수행
		String dbpasswd= rs.getString(1); 
		if(ssn.equals(dbpasswd))
			x= 1; // 인증성공
		else
			x= 0; // 비밀번호 틀림
	}
		
	out.println(x);
	if(rs !=null) rs.close();
	if(pstmt != null) pstmt.close();
	if(con != null) con.close();

} catch(Exception e ) {
	out.println(e.toString());
}
%>