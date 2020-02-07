package vo;

public class SpecGraduateSchVO extends SpecLicenseVO {
	
	private int gra_id;
	private int spec_id;// REFERENCES spec (spec_id) ON DELETE CASCADE,
	private String gra_speriod;
	private String gra_eperiod;
	private String gra_name;
	private String gra_kind;
	private double gra_grade;
	private String gra_major;
	
	public int getGra_id() {
		return gra_id;
	}
	public void setGra_id(int gra_id) {
		this.gra_id = gra_id;
	}
	public int getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(int spec_id) {
		this.spec_id = spec_id;
	}
	public String getGra_speriod() {
		return gra_speriod;
	}
	public void setGra_speriod(String gra_speriod) {
		this.gra_speriod = gra_speriod;
	}
	public String getGra_eperiod() {
		return gra_eperiod;
	}
	public void setGra_eperiod(String gra_eperiod) {
		this.gra_eperiod = gra_eperiod;
	}
	public String getGra_name() {
		return gra_name;
	}
	public void setGra_name(String gra_name) {
		this.gra_name = gra_name;
	}
	public String getGra_kind() {
		return gra_kind;
	}
	public void setGra_kind(String gra_kind) {
		this.gra_kind = gra_kind;
	}
	public double getGra_grade() {
		return gra_grade;
	}
	public void setGra_grade(double gra_grade) {
		this.gra_grade = gra_grade;
	}
	public String getGra_major() {
		return gra_major;
	}
	public void setGra_major(String gra_major) {
		this.gra_major = gra_major;
	}
	@Override
	public String toString() {
		return "SpecGraduateSch [gra_id=" + gra_id + ", spec_id=" + spec_id + ", gra_speriod=" + gra_speriod
				+ ", gra_eperiod=" + gra_eperiod + ", gra_name=" + gra_name + ", gra_kind=" + gra_kind + ", gra_grade="
				+ gra_grade + ", gra_major=" + gra_major + "]";
	} 
	
	

}
