<%@ page contentType = "text/html; charset=utf-8" %>
<%@page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String profName = request.getParameter("dept");
	
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/csdb";
	String user = "root";
	String password = "duksung";
	Connection conn = DriverManager.getConnection(url, user, password);
	
	String sql = "select employee.name from employee,job,assignment ";
	sql = sql + "where employee.emplid=assignment.emplid and job.jobid=assignment.jobid and assignment.termdate is null and job.dept=?";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, profName);
	ResultSet rs = pstmt.executeQuery();
%>
<html>
<head><title>지도학생‹</title></head>
<body>
<%= profName %> 소속직원
<hr>
<%
	String employeeName=null;
	while(rs.next()) {
		employeeName = rs.getString(1);
%>
<h5><%= employeeName %></h5>
<%
	}
	rs.close();
	pstmt.close();
	conn.close();
%>
</body>
</html>
