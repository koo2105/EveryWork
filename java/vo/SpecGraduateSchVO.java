package vo;

public class SpecGraduateSchVO  extends SpecExperienceVO{
	
	private Integer gra_id;
	private Integer spec_id;// REFERENCES spec (spec_id) ON DELETE CASCADE,
	private String gra_speriod;
	private String gra_eperiod;
	private String gra_name;
	private String gra_kind;
	private double gra_grade;
	private String gra_major;
	private String gra_smajor1;
	private String gra_smajor2;
	public Integer getGra_id() {
		return gra_id;
	}
	public void setGra_id(Integer gra_id) {
		this.gra_id = gra_id;
	}
	public Integer getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(Integer spec_id) {
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
	public String getGra_smajor1() {
		return gra_smajor1;
	}
	public void setGra_smajor1(String gra_smajor1) {
		this.gra_smajor1 = gra_smajor1;
	}
	public String getGra_smajor2() {
		return gra_smajor2;
	}
	public void setGra_smajor2(String gra_smajor2) {
		this.gra_smajor2 = gra_smajor2;
	}
	@Override
	public String toString() {
		return "SpecGraduateSchVO [gra_id=" + gra_id + ", spec_id=" + spec_id + ", gra_speriod=" + gra_speriod
				+ ", gra_eperiod=" + gra_eperiod + ", gra_name=" + gra_name + ", gra_kind=" + gra_kind + ", gra_grade="
				+ gra_grade + ", gra_major=" + gra_major + ", gra_smajor1=" + gra_smajor1 + ", gra_smajor2="
				+ gra_smajor2 + "]";
	}

	
	

}
