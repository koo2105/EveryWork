package vo;

public class SpecLicenseVO {

	private int lic_id;
	private int res_id;
	private String lic_name;
	private String lic_pub;
	private String lic_grade;
	public int getLic_id() {
		return lic_id;
	}
	public void setLic_id(int lic_id) {
		this.lic_id = lic_id;
	}
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(int res_id) {
		this.res_id = res_id;
	}
	public String getLic_name() {
		return lic_name;
	}
	public void setLic_name(String lic_name) {
		this.lic_name = lic_name;
	}
	public String getLic_pub() {
		return lic_pub;
	}
	public void setLic_pub(String lic_pub) {
		this.lic_pub = lic_pub;
	}
	public String getLic_grade() {
		return lic_grade;
	}
	public void setLic_grade(String lic_grade) {
		this.lic_grade = lic_grade;
	}
	@Override
	public String toString() {
		return "LicenseVO [lic_id=" + lic_id + ", res_id=" + res_id + ", lic_name=" + lic_name + ", lic_pub=" + lic_pub
				+ ", lic_grade=" + lic_grade + "]";
	}
	
	

}
