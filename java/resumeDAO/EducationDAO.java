package resumeDAO;

public class EducationDAO {
	private int edu_id;
	private int res_id;
	private String edu_name;
	private String edu_pub;
	private String edu_sdate;
	private String edu_edate;
	private String edu_story;
	
	public int getEdu_id() {
		return edu_id;
	}
	public void setEdu_id(int edu_id) {
		this.edu_id = edu_id;
	}
	public int getRes_id() {
		return res_id;
	}
	public void setRes_id(int res_id) {
		this.res_id = res_id;
	}
	public String getEdu_name() {
		return edu_name;
	}
	public void setEdu_name(String edu_name) {
		this.edu_name = edu_name;
	}
	public String getEdu_pub() {
		return edu_pub;
	}
	public void setEdu_pub(String edu_pub) {
		this.edu_pub = edu_pub;
	}
	public String getEdu_sdate() {
		return edu_sdate;
	}
	public void setEdu_sdate(String edu_sdate) {
		this.edu_sdate = edu_sdate;
	}
	public String getEdu_edate() {
		return edu_edate;
	}
	public void setEdu_edate(String edu_edate) {
		this.edu_edate = edu_edate;
	}
	public String getEdu_story() {
		return edu_story;
	}
	public void setEdu_story(String edu_story) {
		this.edu_story = edu_story;
	}
	@Override
	public String toString() {
		return "EducationVO [edu_id=" + edu_id + ", res_id=" + res_id + ", edu_name=" + edu_name + ", edu_pub="
				+ edu_pub + ", edu_sdate=" + edu_sdate + ", edu_edate=" + edu_edate + ", edu_story=" + edu_story + "]";
	}
	
	
}
