package vo;

public class SpecUniversityVO extends SpecGraduateSchVO{
	private int uni_id;
	private int spec_id; //REFERENCES spec (spec_id) ON DELETE CASCADE,
	private String uni_speriod;
	private String uni_eperiod;
	private String uni_name;
	private String uni_kind;
	private double uni_grade;
	private String uni_major;
	public int getUni_id() {
		return uni_id;
	}
	public void setUni_id(int uni_id) {
		this.uni_id = uni_id;
	}
	public int getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(int spec_id) {
		this.spec_id = spec_id;
	}
	public String getUni_speriod() {
		return uni_speriod;
	}
	public void setUni_speriod(String uni_speriod) {
		this.uni_speriod = uni_speriod;
	}
	public String getUni_eperiod() {
		return uni_eperiod;
	}
	public void setUni_eperiod(String uni_eperiod) {
		this.uni_eperiod = uni_eperiod;
	}
	public String getUni_name() {
		return uni_name;
	}
	public void setUni_name(String uni_name) {
		this.uni_name = uni_name;
	}
	public String getUni_kind() {
		return uni_kind;
	}
	public void setUni_kind(String uni_kind) {
		this.uni_kind = uni_kind;
	}
	public double getUni_grade() {
		return uni_grade;
	}
	public void setUni_grade(double uni_grade) {
		this.uni_grade = uni_grade;
	}
	public String getUni_major() {
		return uni_major;
	}
	public void setUni_major(String uni_major) {
		this.uni_major = uni_major;
	}
	@Override
	public String toString() {
		return "SpecUniversity [uni_id=" + uni_id + ", spec_id=" + spec_id + ", uni_speriod=" + uni_speriod
				+ ", uni_eperiod=" + uni_eperiod + ", uni_name=" + uni_name + ", uni_kind=" + uni_kind + ", uni_grade="
				+ uni_grade + ", uni_major=" + uni_major + "]";
	}
	
	

}//class
