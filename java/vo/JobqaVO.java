package vo;

public class JobqaVO {
	
	private int jobqa_id;
	private int jc_id;
	private String jobqa_q;
	
	public int getJobqa_id() {
		return jobqa_id;
	}
	public void setJobqa_id(int jobqa_id) {
		this.jobqa_id = jobqa_id;
	}
	public int getJc_id() {
		return jc_id;
	}
	public void setJc_id(int jc_id) {
		this.jc_id = jc_id;
	}
	public String getJobqa_q() {
		return jobqa_q;
	}
	public void setJobqa_q(String jobqa_q) {
		this.jobqa_q = jobqa_q;
	}
	@Override
	public String toString() {
		return "JobqaVO [jobqa_id=" + jobqa_id + ", jc_id=" + jc_id + ", jobqa_q=" + jobqa_q + "]";
	}
	

	
	
}
