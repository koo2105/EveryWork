package vo;

public class SpecLicenseVO extends SpecLanguageVO {

	private Integer lic_id;
	private Integer spec_id;
	private String lic_name;
	private String lic_pub;
	private String lic_grade;
	public Integer getLic_id() {
		return lic_id;
	}
	public void setLic_id(Integer lic_id) {
		this.lic_id = lic_id;
	}
	public Integer getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(Integer spec_id) {
		this.spec_id = spec_id;
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
		return "SpecLicenseVO [lic_id=" + lic_id + ", spec_id=" + spec_id + ", lic_name=" + lic_name + ", lic_pub="
				+ lic_pub + ", lic_grade=" + lic_grade + "]";
	}
	
	
	

}
