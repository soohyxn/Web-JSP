<%@ page contentType = "text/html; charset=utf-8" %>
<%@page import="java.sql.*"%>
<%@ page import="advisor.*" %>
<%@ page import="java.util.ArrayList" %>

<%
request.setCharacterEncoding("utf-8");
String deptname = request.getParameter("dept");

DataManager manager = DataManager.getInstance();
ArrayList<EmployeeBean> employeeArray = manager.getEmployee(deptname);
for(int i=0; i<employeeArray.size(); i++) {
	EmployeeBean employee = employeeArray.get(i);
	out.println(employee.getName() + "<br>");
//	out.println(employee.printEmployee() + "<br>");
}
%>
</body>
</html>
