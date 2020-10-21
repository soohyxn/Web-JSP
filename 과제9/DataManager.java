package advisor;
import java.sql.*;
import java.util.ArrayList;

public class DataManager {
	private static DataManager instance = new DataManager();
	
	private DataManager() {}
	
	public static DataManager getInstance() {
		return instance;
	}
	
	private Connection getConnection() throws Exception {
		String jdbcUrl ="jdbc:mysql://localhost:3306/csdb";
		String dbUser = "root";
		String dbPass = "duksung";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
		return conn;
	}
	public void insertEmployee(EmployeeBean employee, int jobid, String startdate) {
		Connection conn=null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			String query = "insert into employee values(?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,employee.getEmplid() );
			pstmt.setString(2, employee.getName());
			pstmt.setString(3, employee.getAddress());
			pstmt.setString(4, employee.getSsn());
			pstmt.executeUpdate();
			
			query = "insert into assignment values(?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, employee.getEmplid());
			pstmt.setInt(2, jobid);
			pstmt.setString(3, startdate);
			pstmt.setString(4, null);
			pstmt.executeUpdate();

			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
			if(conn != null) conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public int userCheck(int emplid, String ssn) {
		Connection conn=null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int x = -1;
		try {
			conn = getConnection();
			String query = "select ssn from employee where emplid = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, emplid);

			rs = pstmt.executeQuery();
			while(rs.next()) { // 해당 아이디가 있으면 수행
				String dbpasswd= rs.getString(1); 
				if(ssn.equals(dbpasswd))
					x= 1; // 인증성공
				else
					x= 0; // 비밀번호 틀림
			}
			
			if(rs !=null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e ) {
			e.printStackTrace();
		}
		return(x);
	}

	public ArrayList<EmployeeBean> getEmployee(String deptName) {
		Connection conn=null;	
		ArrayList<EmployeeBean> employeeArray = new ArrayList<EmployeeBean>(10);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			String sql = "select employee.emplid, employee.name, employee.address, employee.ssn from employee,job,assignment ";
			sql = sql + "where employee.emplid=assignment.emplid and job.jobid=assignment.jobid and assignment.termdate is null and job.dept=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, deptName);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				EmployeeBean employee = new EmployeeBean();
				employee.setEmplid(rs.getInt(1));
				employee.setName(rs.getString(2));
				employee.setAddress(rs.getString(3));
				employee.setSsn(rs.getString(4));
				employeeArray.add(employee);
			}
			if(rs !=null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e ) {
			e.printStackTrace();
		}
		return employeeArray;
	}
	
}
