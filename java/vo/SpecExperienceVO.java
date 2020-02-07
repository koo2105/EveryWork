package vo;

public class SpecExperienceVO extends SpecEducationVO{
	private int exp_id;
	private int spec_id;
	private String exp_name;
	private String exp_pub;
	private String exp_sdate;
	private String exp_edate;
	private String exp_story;
	public int getExp_id() {
		return exp_id;
	}
	public void setExp_id(int exp_id) {
		this.exp_id = exp_id;
	}
	public int getSpec_id() {
		return spec_id;
	}
	public void setSpec_id(int spec_id) {
		this.spec_id = spec_id;
	}
	public String getExp_name() {
		return exp_name;
	}
	public void setExp_name(String exp_name) {
		this.exp_name = exp_name;
	}
	public String getExp_pub() {
		return exp_pub;
	}
	public void setExp_pub(String exp_pub) {
		this.exp_pub = exp_pub;
	}
	public String getExp_sdate() {
		return exp_sdate;
	}
	public void setExp_sdate(String exp_sdate) {
		this.exp_sdate = exp_sdate;
	}
	public String getExp_edate() {
		return exp_edate;
	}
	public void setExp_edate(String exp_edate) {
		this.exp_edate = exp_edate;
	}
	public String getExp_story() {
		return exp_story;
	}
	public void setExp_story(String exp_story) {
		this.exp_story = exp_story;
	}
	@Override
	public String toString() {
		return "SpecExperienceVO [exp_id=" + exp_id + ", spec_id=" + spec_id + ", exp_name=" + exp_name + ", exp_pub="
				+ exp_pub + ", exp_sdate=" + exp_sdate + ", exp_edate=" + exp_edate + ", exp_story=" + exp_story + "]";
	}
	
	
	
	
}
