package advisor;

public class EmployeeBean {
	private int emplid;
	private String name;
	private String address;
	private String ssn;
	public int getEmplid() {
		return emplid;
	}
	public void setEmplid(int emplid) {
		this.emplid = emplid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String printEmployee() {
		StringBuffer sb = new StringBuffer();
		sb.append("사번:" + emplid);
		sb.append(" 이름:" + name);
		return sb.toString();
	}
}
